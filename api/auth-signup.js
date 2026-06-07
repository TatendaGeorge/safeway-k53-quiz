import { createServerClient } from "./_lib/supabase.js";

export default async function handler(req, res) {
  if (req.method !== "POST") {
    return res.status(405).json({ error: "Method not allowed" });
  }

  const { email, password } = req.body;

  if (!email || !password) {
    return res.status(400).json({ error: "Email and password required" });
  }

  if (password.length < 6) {
    return res.status(400).json({ error: "Password must be at least 6 characters" });
  }

  const supabase = createServerClient();

  // Create user with admin API - auto-confirms email
  const { data, error } = await supabase.auth.admin.createUser({
    email,
    password,
    email_confirm: true, // Skip email verification
  });

  if (error) {
    return res.status(400).json({ error: error.message });
  }

  res.status(200).json({
    message: "Account created successfully",
    user: { id: data.user.id, email: data.user.email }
  });
}
