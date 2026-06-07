import { createUserClient, createServerClient } from "../_lib/supabase.js";

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

  // Check if user is admin
  const { data: profile } = await serverClient
    .from("user_profiles")
    .select("is_admin")
    .eq("id", user.id)
    .single();

  if (!profile?.is_admin) {
    return res.status(403).json({ error: "Admin access required" });
  }

  const { email, password, full_name, is_admin = false } = req.body;

  if (!email || !password) {
    return res.status(400).json({ error: "Email and password required" });
  }

  // Create user via Supabase Admin API
  const { data: newUser, error: createError } = await serverClient.auth.admin.createUser({
    email,
    password,
    email_confirm: true, // Auto-confirm email
    user_metadata: { full_name }
  });

  if (createError) {
    return res.status(400).json({ error: createError.message });
  }

  // Update profile with admin status if needed
  if (is_admin) {
    await serverClient
      .from("user_profiles")
      .update({ is_admin: true, full_name })
      .eq("id", newUser.user.id);
  } else if (full_name) {
    await serverClient
      .from("user_profiles")
      .update({ full_name })
      .eq("id", newUser.user.id);
  }

  res.status(201).json({
    message: "User created successfully",
    user: {
      id: newUser.user.id,
      email: newUser.user.email
    }
  });
}
