import { createUserClient } from "./_lib/supabase.js";

export default async function handler(req, res) {
  if (req.method !== "POST") {
    return res.status(405).json({ error: "Method not allowed" });
  }

  const authHeader = req.headers.authorization;
  if (!authHeader) {
    return res.status(401).json({ error: "Not authenticated" });
  }

  const supabase = createUserClient(authHeader);

  const { data: { user }, error: authError } = await supabase.auth.getUser();
  if (authError || !user) {
    return res.status(401).json({ error: "Invalid session" });
  }

  const { attempt_id } = req.body;

  // Mark attempt as completed
  const { data: attempt, error } = await supabase
    .from("quiz_attempts")
    .update({ completed_at: new Date().toISOString() })
    .eq("id", attempt_id)
    .select(`
      id,
      total_questions,
      correct_answers,
      created_at,
      completed_at,
      categories (name)
    `)
    .single();

  if (error) {
    return res.status(500).json({ error: error.message });
  }

  const percentage = Math.round((attempt.correct_answers / attempt.total_questions) * 100);
  const passed = percentage >= 77; // K53 pass mark

  res.status(200).json({
    ...attempt,
    percentage,
    passed,
    pass_mark: 77,
  });
}
