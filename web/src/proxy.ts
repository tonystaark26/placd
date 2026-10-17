import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";

// Runs before every page request. It quietly refreshes the student's login
// so they stay signed in, passes the fresh login cookie along, and sends
// signed-out visitors to the welcome page.
export async function proxy(request: NextRequest) {
  let response = NextResponse.next({ request });

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },
        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value }) => request.cookies.set(name, value));
          response = NextResponse.next({ request });
          cookiesToSet.forEach(({ name, value, options }) => response.cookies.set(name, value, options));
        },
      },
    },
  );

  const { data } = await supabase.auth.getClaims();

  // The app always opens at the welcome page: signed-out visitors can't jump straight
  // into the Library or a card (guests count as signed in).
  const path = request.nextUrl.pathname;
  const insideApp =
    path === "/library" || path === "/quiz" || path === "/news" || path.startsWith("/cards/") || path.startsWith("/admin");
  if (!data?.claims && insideApp) {
    const welcome = NextResponse.redirect(new URL("/", request.url));
    response.cookies.getAll().forEach((cookie) => welcome.cookies.set(cookie));
    return welcome;
  }

  return response;
}

export const config = {
  // Skip images, fonts and other files that never need a login
  matcher: ["/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp|ico|woff2?)$).*)"],
};
