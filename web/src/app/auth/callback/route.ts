import { NextResponse, type NextRequest } from "next/server";
import { getAccount, homeFor } from "@/lib/account";
import { createClient } from "@/lib/supabase/server";

// Google and the email sign-in link both send the student back here with a one-time code.
// We swap that code for a login, then send them on: new students pick a name first.
export async function GET(request: NextRequest) {
  const code = request.nextUrl.searchParams.get("code");
  const origin = request.nextUrl.origin;
  if (!code) return NextResponse.redirect(`${origin}/?error=link`);

  const supabase = await createClient();
  const { error } = await supabase.auth.exchangeCodeForSession(code);
  if (error) return NextResponse.redirect(`${origin}/?error=link`);

  const account = await getAccount();
  return NextResponse.redirect(`${origin}${account ? homeFor(account) : "/"}`);
}
