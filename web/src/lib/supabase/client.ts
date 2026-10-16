import { createBrowserClient } from "@supabase/ssr";

// Connection to the database for code that runs in the student's browser
// (buttons, quiz answers). Uses only the PUBLIC key: the security rules in
// supabase/001_schema.sql decide what this key may read or change.
export function createClient() {
  return createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!,
  );
}
