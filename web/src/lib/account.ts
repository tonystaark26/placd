import { connection } from "next/server";
import { createClient } from "@/lib/supabase/server";

export type Account = {
  id: string;
  isGuest: boolean;
  alias: string | null;
};

/** Who is signed in right now, and the display name they chose (if any). */
export async function getAccount(): Promise<Account | null> {
  // Who's signed in is only known when a real request arrives, never ahead of time
  await connection();
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return null;

  const { data: profile } = await supabase.from("profiles").select("alias").eq("id", user.id).maybeSingle();
  return { id: user.id, isGuest: user.is_anonymous ?? false, alias: profile?.alias ?? null };
}

/** Where a signed-in student should land next */
export function homeFor(account: Account) {
  if (!account.isGuest && !account.alias) return "/onboarding";
  return "/desk";
}
