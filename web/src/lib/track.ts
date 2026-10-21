import { createClient } from "@/lib/supabase/client";

// Notes what a student opened (supabase/012_opens.sql), once per day per item. Fire and forget:
// it never slows a page down, and if it fails the student notices nothing.

export type OpenKind = "card" | "news" | "story_concept" | "story_source";

export function recordOpen(kind: OpenKind, item = "") {
  createClient()
    .rpc("record_open", { p_kind: kind, p_item: item })
    .then(
      () => {},
      () => {},
    );
}
