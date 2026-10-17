import { createClient } from "@supabase/supabase-js";
import { cacheLife, cacheTag } from "next/cache";

// The daily news brief. Students only ever receive APPROVED stories (the database enforces it).

export type Lane = "global" | "india" | "local" | "recruiter";

export const LANES: { id: Lane; name: string }[] = [
  { id: "global", name: "Global" },
  { id: "india", name: "India" },
  { id: "local", name: "Kolkata & Bengal" },
  { id: "recruiter", name: "Recruiter Watch" },
];

export type Story = {
  id: number;
  publish_date: string;
  lane: Lane;
  tag: string | null;
  headline: string;
  summary: string;
  concept_note: string | null;
  source_name: string;
  source_url: string;
  card_id: string | null;
  status: "draft" | "approved";
};

const COLUMNS = "id, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status";

function db() {
  return createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!, {
    auth: { persistSession: false },
  });
}

/** The latest day that has approved stories, up to and including `today` (YYYY-MM-DD, India time). */
export async function getBrief(today: string): Promise<{ date: string | null; stories: Story[] }> {
  "use cache";
  cacheTag("news");
  cacheLife("minutes");
  const { data: latest } = await db()
    .from("news_stories")
    .select("publish_date")
    .lte("publish_date", today)
    .order("publish_date", { ascending: false })
    .limit(1)
    .maybeSingle();
  if (!latest) return { date: null, stories: [] };

  const { data, error } = await db()
    .from("news_stories")
    .select(COLUMNS)
    .eq("publish_date", latest.publish_date)
    .order("id");
  if (error) throw new Error(`Could not load the news: ${error.message}`);
  return { date: latest.publish_date, stories: (data ?? []) as Story[] };
}

export { COLUMNS as STORY_COLUMNS };

/** "Saturday, 18 October" */
export function prettyDate(isoDate: string) {
  return new Intl.DateTimeFormat("en-IN", { weekday: "long", day: "numeric", month: "long", timeZone: "UTC" }).format(
    new Date(`${isoDate}T00:00:00Z`),
  );
}
