"use server";

import { headers } from "next/headers";
import { redirect } from "next/navigation";
import { getAccount } from "@/lib/account";
import { createClient } from "@/lib/supabase/server";

async function siteOrigin() {
  const h = await headers();
  return h.get("origin") ?? `https://${h.get("host")}`;
}

export async function continueWithGoogle() {
  const supabase = await createClient();
  const { data, error } = await supabase.auth.signInWithOAuth({
    provider: "google",
    options: { redirectTo: `${await siteOrigin()}/auth/callback` },
  });
  if (error || !data.url) redirect("/?error=google");
  redirect(data.url);
}

export async function tryAsGuest() {
  const supabase = await createClient();
  const { error } = await supabase.auth.signInAnonymously();
  if (error) redirect("/?error=guest");
  redirect("/library");
}

export type EmailState = { status: "idle" | "sent" | "error"; message?: string; email?: string };

export async function sendSignInLink(_prev: EmailState, formData: FormData): Promise<EmailState> {
  const email = String(formData.get("email") ?? "").trim().toLowerCase();
  if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    return { status: "error", message: "That doesn't look like an email address.", email };
  }
  const supabase = await createClient();
  const { error } = await supabase.auth.signInWithOtp({
    email,
    options: { emailRedirectTo: `${await siteOrigin()}/auth/callback` },
  });
  if (error) {
    const tooMany = error.status === 429;
    return {
      status: "error",
      message: tooMany
        ? "Too many emails sent just now. Please wait a few minutes and try again."
        : "We couldn't send the email. Please try again.",
      email,
    };
  }
  return { status: "sent", email };
}

export type NameState = { status: "idle" | "error"; message?: string; alias?: string };

export async function saveDisplayName(_prev: NameState, formData: FormData): Promise<NameState> {
  const alias = String(formData.get("alias") ?? "").trim();
  if (!/^[A-Za-z0-9_]{3,24}$/.test(alias)) {
    return { status: "error", message: "Use 3 to 24 letters, numbers or underscores (_), with no spaces.", alias };
  }

  const account = await getAccount();
  if (!account) redirect("/");

  const supabase = await createClient();
  // Students may only set their name, so create the profile, or update just the name if it exists
  const { error } = account.alias
    ? await supabase.from("profiles").update({ alias }).eq("id", account.id)
    : await supabase.from("profiles").insert({ id: account.id, alias });
  if (error) {
    const taken = error.code === "23505";
    return { status: "error", message: taken ? "Someone already has that name. Try another." : "Couldn't save. Please try again.", alias };
  }
  redirect("/library");
}

export async function signOut() {
  const supabase = await createClient();
  await supabase.auth.signOut();
  redirect("/");
}
