"use server";

import { redirect } from "next/navigation";
import { getAccount } from "@/lib/account";
import { createClient } from "@/lib/supabase/server";

// Daily time (5, 10 or 15 minutes) decides the quiz length: 5, 7 or 10 questions
export async function setQuizLength(formData: FormData) {
  const minutes = Number(formData.get("minutes"));
  if (![5, 10, 15].includes(minutes)) return;

  const account = await getAccount();
  if (!account || account.isGuest) redirect("/");

  const supabase = await createClient();
  await supabase.from("profiles").update({ daily_minutes: minutes }).eq("id", account.id);
  redirect("/desk");
}
