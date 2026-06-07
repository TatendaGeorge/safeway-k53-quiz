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

  const { user_id } = req.query || {};

  // Build query
  let query = serverClient
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
    .not("completed_at", "is", null)
    .order("completed_at", { ascending: false })
    .limit(100);

  if (user_id) {
    query = query.eq("user_id", user_id);
  }

  const { data: attempts, error } = await query;

  if (error) {
    return res.status(500).json({ error: error.message });
  }

  // Get user emails for each attempt
  const userIds = [...new Set(attempts.map(a => a.user_id))];
  const { data: profiles } = await serverClient
    .from("user_profiles")
    .select("id, email, full_name")
    .in("id", userIds);

  const profileMap = {};
  profiles?.forEach(p => { profileMap[p.id] = p; });

  const attemptsWithUsers = attempts.map(a => ({
    ...a,
    user_email: profileMap[a.user_id]?.email || 'Unknown',
    user_name: profileMap[a.user_id]?.full_name || '',
    percentage: Math.round((a.correct_answers / a.total_questions) * 100),
    passed: Math.round((a.correct_answers / a.total_questions) * 100) >= 77
  }));

  res.status(200).json({ attempts: attemptsWithUsers });
}
