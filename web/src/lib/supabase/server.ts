import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";

// Connection to the database for code that runs on the server, before a page
// is sent to the phone (e.g. loading today's news). It reads the login cookie
// so the database knows which student is asking.
export async function createClient() {
  const cookieStore = await cookies();

  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!,
    {
      cookies: {
        getAll() {
          return cookieStore.getAll();
        },
        setAll(cookiesToSet) {
          try {
            cookiesToSet.forEach(({ name, value, options }) =>
              cookieStore.set(name, value, options),
            );
          } catch {
            // Called from a page that can't set cookies; the login refresh
            // added later (in proxy.ts) takes care of it.
          }
        },
      },
    },
  );
}
