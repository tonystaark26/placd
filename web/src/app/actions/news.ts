"use server";

import { updateTag } from "next/cache";
import { createClient } from "@/lib/supabase/server";

// Approval actions for the news brief. The database only allows these for admins
// (supabase/005_news.sql), so a student calling them changes nothing.

async function setStatus(ids: number[], status: "draft" | "approved") {
  const supabase = await createClient();
  const { error } = await supabase.from("news_stories").update({ status }).in("id", ids);
  if (error) throw new Error(error.message);
  updateTag("news"); // students see the change straight away
}

export async function approveStory(formData: FormData) {
  await setStatus([Number(formData.get("id"))], "approved");
}

export async function unapproveStory(formData: FormData) {
  await setStatus([Number(formData.get("id"))], "draft");
}

export async function approveAllForDay(formData: FormData) {
  const ids = String(formData.get("ids") ?? "")
    .split(",")
    .map(Number)
    .filter(Boolean);
  if (ids.length) await setStatus(ids, "approved");
}

export async function deleteStory(formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from("news_stories").delete().eq("id", Number(formData.get("id")));
  if (error) throw new Error(error.message);
  updateTag("news");
}
