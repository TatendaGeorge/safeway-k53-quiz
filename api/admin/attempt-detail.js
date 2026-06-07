import { createUserClient, createServerClient } from "../_lib/supabase.js";

export default async function handler(req, res) {
  if (req.method !== "GET") {
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

  // Check if user is admin
  const { data: profile } = await serverClient
    .from("user_profiles")
    .select("is_admin")
    .eq("id", user.id)
    .single();

  if (!profile?.is_admin) {
    return res.status(403).json({ error: "Admin access required" });
  }

  const { attempt_id } = req.query;

  if (!attempt_id) {
    return res.status(400).json({ error: "attempt_id required" });
  }

  // Get attempt details
  const { data: attempt, error: attemptError } = await serverClient
    .from("quiz_attempts")
    .select(`
      id,
      user_id,
      total_questions,
      correct_answers,
      completed_at,
      created_at,
      categories (name, slug)
    `)
    .eq("id", attempt_id)
    .single();

  if (attemptError || !attempt) {
    return res.status(404).json({ error: "Attempt not found" });
  }

  // Get user info
  const { data: userProfile } = await serverClient
    .from("user_profiles")
    .select("email, full_name")
    .eq("id", attempt.user_id)
    .single();

  // Get all answers with question and option details
  const { data: answers, error: answersError } = await serverClient
    .from("quiz_answers")
    .select(`
      id,
      question_id,
      selected_option_id,
      is_correct,
      answered_at,
      questions (
        id,
        question_text,
        image_url,
        category_id,
        categories (name, slug)
      )
    `)
    .eq("attempt_id", attempt_id)
    .order("answered_at", { ascending: true });

  if (answersError) {
    return res.status(500).json({ error: answersError.message });
  }

  // Get all options for the questions
  const questionIds = answers.map(a => a.question_id);
  const { data: options } = await serverClient
    .from("options")
    .select("id, question_id, label, option_text, is_correct")
    .in("question_id", questionIds);

  // Group options by question
  const optionsByQuestion = {};
  options?.forEach(o => {
    if (!optionsByQuestion[o.question_id]) {
      optionsByQuestion[o.question_id] = [];
    }
    optionsByQuestion[o.question_id].push(o);
  });

  // Build detailed answer list
  const detailedAnswers = answers.map(a => {
    const questionOptions = optionsByQuestion[a.question_id] || [];
    const selectedOption = questionOptions.find(o => o.id === a.selected_option_id);
    const correctOption = questionOptions.find(o => o.is_correct);

    return {
      question_id: a.question_id,
      question_text: a.questions?.question_text,
      image_url: a.questions?.image_url,
      category: a.questions?.categories?.name,
      category_slug: a.questions?.categories?.slug,
      is_correct: a.is_correct,
      selected_option: selectedOption ? {
        label: selectedOption.label,
        text: selectedOption.option_text
      } : null,
      correct_option: correctOption ? {
        label: correctOption.label,
        text: correctOption.option_text
      } : null,
      all_options: questionOptions.map(o => ({
        label: o.label,
        text: o.option_text,
        is_correct: o.is_correct,
        was_selected: o.id === a.selected_option_id
      }))
    };
  });

  res.status(200).json({
    attempt: {
      ...attempt,
      user_email: userProfile?.email,
      user_name: userProfile?.full_name,
      percentage: Math.round((attempt.correct_answers / attempt.total_questions) * 100),
      passed: Math.round((attempt.correct_answers / attempt.total_questions) * 100) >= 77
    },
    answers: detailedAnswers
  });
}
