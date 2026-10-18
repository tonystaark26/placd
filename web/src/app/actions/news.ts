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

// Make one story "today's pick" (only one per day, so clear the old pick first)
export async function featureStory(formData: FormData) {
  const id = Number(formData.get("id"));
  const day = String(formData.get("day"));
  const supabase = await createClient();
  const cleared = await supabase.from("news_stories").update({ featured: false }).eq("publish_date", day).eq("featured", true);
  if (cleared.error) throw new Error(cleared.error.message);
  const { error } = await supabase.from("news_stories").update({ featured: true }).eq("id", id);
  if (error) throw new Error(error.message);
  updateTag("news");
}

export async function unfeatureStory(formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from("news_stories").update({ featured: false }).eq("id", Number(formData.get("id")));
  if (error) throw new Error(error.message);
  updateTag("news");
}

export async function saveTeaser(formData: FormData) {
  const clean = (k: string) => String(formData.get(k) ?? "").trim() || null;
  const supabase = await createClient();
  const { error } = await supabase
    .from("news_stories")
    .update({ teaser_title: clean("teaser_title"), teaser: clean("teaser") })
    .eq("id", Number(formData.get("id")));
  if (error) throw new Error(error.message);
  updateTag("news");
}

export async function deleteStory(formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from("news_stories").delete().eq("id", Number(formData.get("id")));
  if (error) throw new Error(error.message);
  updateTag("news");
}
