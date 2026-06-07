import { createClient } from "@supabase/supabase-js";
import ws from "ws";

// Server-side Supabase client (for API routes)
// Uses service role key for admin access, bypasses RLS
export function createServerClient() {
  return createClient(
    process.env.SUPABASE_URL,
    process.env.SUPABASE_SERVICE_ROLE_KEY,
    {
      auth: { persistSession: false },
      realtime: {
        transport: ws,
      },
    }
  );
}

// Client that respects RLS using the user's JWT
export function createUserClient(authHeader) {
  return createClient(
    process.env.SUPABASE_URL,
    process.env.SUPABASE_ANON_KEY,
    {
      auth: { persistSession: false },
      realtime: {
        transport: ws,
      },
      global: {
        headers: { Authorization: authHeader },
      },
    }
  );
}
