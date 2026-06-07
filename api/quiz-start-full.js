import { createUserClient } from "./_lib/supabase.js";

// K53 Test Structure
const K53_STRUCTURE = {
  road_signs: { category_id: 1, questions: 30, pass: 23, name: 'Road Signs, Signals & Markings' },
  rules_of_the_road: { category_id: 2, questions: 30, pass: 22, name: 'Rules of the Road' },
  vehicle_controls: { category_id: 3, questions: 8, pass: 6, name: 'Vehicle Controls' },
};

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

  const { mode = 'practice' } = req.body;

  // Fisher-Yates shuffle for proper randomization
  const shuffleArray = (array) => {
    const arr = [...array];
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [arr[i], arr[j]] = [arr[j], arr[i]];
    }
    return arr;
  };

  try {
    // Fetch questions from each category
    const allQuestions = [];
    const seenIds = new Set(); // Track seen question IDs to prevent duplicates

    for (const [slug, config] of Object.entries(K53_STRUCTURE)) {
      const { data: questions, error } = await supabase
        .from("questions")
        .select(`
          id,
          question_text,
          image_url,
          category_id,
          options (id, label, option_text)
        `)
        .eq("category_id", config.category_id);

      if (error) {
        return res.status(500).json({ error: error.message });
      }

      // Filter out any duplicates and shuffle
      const uniqueQuestions = questions.filter(q => {
        if (seenIds.has(q.id)) return false;
        seenIds.add(q.id);
        return true;
      });

      const shuffled = shuffleArray(uniqueQuestions);
      const selected = shuffled.slice(0, config.questions);

      // Add section info to each question
      selected.forEach(q => {
        q.section = slug;
        q.section_name = config.name;
        q.category_slug = slug;
      });

      allQuestions.push(...selected);
    }

    // Shuffle all questions together for the test
    const shuffledAll = shuffleArray(allQuestions);

    // Create quiz attempt
    const { data: attempt, error: attemptError } = await supabase
      .from("quiz_attempts")
      .insert({
        user_id: user.id,
        category_id: null, // Full test spans all categories
        total_questions: shuffledAll.length,
      })
      .select("id")
      .single();

    if (attemptError) {
      return res.status(500).json({ error: attemptError.message });
    }

    // Return questions WITHOUT correct answers
    res.status(200).json({
      attempt_id: attempt.id,
      total_questions: shuffledAll.length,
      questions: shuffledAll,
      mode,
      structure: K53_STRUCTURE,
    });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
}
