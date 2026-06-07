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

  // Get all users with their profile info and attempt counts
  const { data: users, error } = await serverClient
    .from("user_profiles")
    .select(`
      id,
      email,
      full_name,
      is_admin,
      created_at
    `)
    .order("created_at", { ascending: false });

  if (error) {
    return res.status(500).json({ error: error.message });
  }

  // Get attempt counts for each user
  const { data: attemptCounts } = await serverClient
    .from("quiz_attempts")
    .select("user_id, id")
    .not("completed_at", "is", null);

  const countsByUser = {};
  attemptCounts?.forEach(a => {
    countsByUser[a.user_id] = (countsByUser[a.user_id] || 0) + 1;
  });

  const usersWithCounts = users.map(u => ({
    ...u,
    attempt_count: countsByUser[u.id] || 0
  }));

  res.status(200).json({ users: usersWithCounts });
}
