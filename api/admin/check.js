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
    .select("is_admin, email, full_name")
    .eq("id", user.id)
    .single();

  res.status(200).json({
    is_admin: profile?.is_admin || false,
    email: profile?.email || user.email,
    full_name: profile?.full_name
  });
}
