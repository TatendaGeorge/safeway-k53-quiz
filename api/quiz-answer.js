import { createUserClient, createServerClient } from "./_lib/supabase.js";

export default async function handler(req, res) {
  if (req.method !== "POST") {
    return res.status(405).json({ error: "Method not allowed" });
  }

  const authHeader = req.headers.authorization;
  if (!authHeader) {
    return res.status(401).json({ error: "Not authenticated" });
  }

  const userClient = createUserClient(authHeader);
  const serverClient = createServerClient();

  // Verify user
  const { data: { user }, error: authError } = await userClient.auth.getUser();
  if (authError || !user) {
    return res.status(401).json({ error: "Invalid session" });
  }

  const { attempt_id, question_id, selected_option_id } = req.body;

  if (!attempt_id || !question_id || !selected_option_id) {
    return res.status(400).json({ error: "Missing required fields" });
  }

  // Verify the attempt belongs to this user
  const { data: attempt } = await userClient
    .from("quiz_attempts")
    .select("id")
    .eq("id", attempt_id)
    .single();

  if (!attempt) {
    return res.status(403).json({ error: "Not your quiz attempt" });
  }

  // Check if the selected option is correct (use server client to bypass RLS)
  const { data: option } = await serverClient
    .from("options")
    .select("id, is_correct, option_text")
    .eq("id", selected_option_id)
    .eq("question_id", question_id)
    .single();

  if (!option) {
    return res.status(400).json({ error: "Invalid option" });
  }

  // Get the correct answer to send back
  const { data: correctOption } = await serverClient
    .from("options")
    .select("id, label, option_text")
    .eq("question_id", question_id)
    .eq("is_correct", true)
    .single();

  // Record the answer
  await userClient.from("quiz_answers").insert({
    attempt_id,
    question_id,
    selected_option_id,
    is_correct: option.is_correct,
  });

  // Update score if correct
  if (option.is_correct) {
    await serverClient.rpc("increment_score", { attempt_id_param: attempt_id });
  }

  res.status(200).json({
    is_correct: option.is_correct,
    correct_option: correctOption,
  });
}
