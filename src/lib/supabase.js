import { createClient } from "@supabase/supabase-js";

// Hardcoded for local development (env vars not loading in Vite)
const supabaseUrl = "https://ejmpamopyasfuxhbaffm.supabase.co";
const supabaseAnonKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqbXBhbW9weWFzZnV4aGJhZmZtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODAzODY0MDAsImV4cCI6MjA5NTk2MjQwMH0.7PBmjQ3Whmh0Z4dwTlxs_H-L5QCR1w9B04OAYy8EAW0";

export const supabase = createClient(supabaseUrl, supabaseAnonKey);
