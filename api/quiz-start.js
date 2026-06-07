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

  // Verify user
  const { data: { user }, error: authError } = await supabase.auth.getUser();
  if (authError || !user) {
    return res.status(401).json({ error: "Invalid session" });
  }

  const { category_slug = "road_signs", num_questions = 30 } = req.body;

  // Get category
  const { data: category } = await supabase
    .from("categories")
    .select("id")
    .eq("slug", category_slug)
    .single();

  if (!category) {
    return res.status(400).json({ error: "Invalid category" });
  }

  // Fetch questions with options (fetch more than needed for better randomization)
  const { data: questions, error } = await supabase
    .from("questions")
    .select(`
      id,
      question_text,
      image_url,
      options (id, label, option_text)
    `)
    .eq("category_id", category.id);

  if (error) {
    return res.status(500).json({ error: error.message });
  }

  // Shuffle using Fisher-Yates algorithm for proper randomization
  const shuffleArray = (array) => {
    const arr = [...array];
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [arr[i], arr[j]] = [arr[j], arr[i]];
    }
    return arr;
  };

  // Deduplicate by question ID (in case of any DB issues)
  const uniqueQuestions = [...new Map(questions.map(q => [q.id, q])).values()];

  // Shuffle and take required number
  const shuffled = shuffleArray(uniqueQuestions).slice(0, num_questions);

  // Create quiz attempt
  const { data: attempt, error: attemptError } = await supabase
    .from("quiz_attempts")
    .insert({
      user_id: user.id,
      category_id: category.id,
      total_questions: shuffled.length,
    })
    .select("id")
    .single();

  if (attemptError) {
    return res.status(500).json({ error: attemptError.message });
  }

  // Return questions WITHOUT correct answers (don't expose is_correct)
  res.status(200).json({
    attempt_id: attempt.id,
    total_questions: shuffled.length,
    questions: shuffled,
  });
}
