"use server";

import { revalidatePath } from "next/cache";
import { createClient } from "@/lib/supabase/server";

// Feedback from the button on every screen. The database (supabase/010_feedback.sql) lets anyone
// send, fills in who sent it, and lets only admins read messages or mark them done.

export type FeedbackState = { status: "idle" | "sent" | "error"; message?: string };

const KINDS = ["idea", "problem", "content", "other"] as const;

export async function sendFeedback(_prev: FeedbackState, formData: FormData): Promise<FeedbackState> {
  const message = String(formData.get("message") ?? "").trim();
  const kindValue = String(formData.get("kind") ?? "idea");
  const kind = (KINDS as readonly string[]).includes(kindValue) ? kindValue : "other";
  const page = String(formData.get("page") ?? "").slice(0, 200) || null;

  if (message.length < 3) return { status: "error", message: "Write a few words first." };
  if (message.length > 2000) return { status: "error", message: "That's a bit long. Keep it under 2,000 characters." };

  const supabase = await createClient();
  const { error } = await supabase.from("feedback").insert({ kind, message, page });
  if (error) return { status: "error", message: "Couldn't send that. Please try again in a moment." };
  return { status: "sent" };
}

export async function markFeedbackDone(formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase
    .from("feedback")
    .update({ status: formData.get("undo") ? "new" : "done" })
    .eq("id", Number(formData.get("id")));
  if (error) throw new Error(error.message);
  revalidatePath("/admin/feedback");
}
