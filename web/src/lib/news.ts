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
  teaser_title: string | null; // "today's pick": the hook, in story language
  teaser: string | null;
  featured: boolean;
  published_at: string | null; // when the source published it (always within the last 24 hours)
};

const COLUMNS =
  "id, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at";

function db() {
  return createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!, {
    auth: { persistSession: false },
  });
}

/**
 * Today's approved stories (`today` is YYYY-MM-DD, India time). Chai & Charts is today's news only:
 * until today's brief is approved, this is empty, and students see "brewing", never yesterday's news.
 */
export async function getBrief(today: string): Promise<{ date: string | null; stories: Story[] }> {
  "use cache";
  cacheTag("news");
  cacheLife("minutes");
  const { data, error } = await db().from("news_stories").select(COLUMNS).eq("publish_date", today).order("id");
  if (error) throw new Error(`Could not load the news: ${error.message}`);
  const stories = (data ?? []) as Story[];
  return { date: stories.length ? today : null, stories };
}

/** "Yesterday, 9:42 PM" or "Today", India time. Midnight means the source gave a date but no time. */
export function publishedTime(iso: string, briefDate: string) {
  const at = new Date(iso);
  const part = (o: Intl.DateTimeFormatOptions) => new Intl.DateTimeFormat("en-IN", { ...o, timeZone: "Asia/Kolkata" }).format(at);
  const day = part({ year: "numeric", month: "2-digit", day: "2-digit" }).split("/").reverse().join("-"); // YYYY-MM-DD
  const label = day === briefDate ? "Today" : "Yesterday";
  const time = part({ hour: "numeric", minute: "2-digit", hour12: true }).toUpperCase();
  return time === "12:00 AM" ? label : `${label}, ${time}`;
}

export { COLUMNS as STORY_COLUMNS };

/** The day's featured story, if one is picked and has its teaser written */
export function todaysPick(stories: Story[]) {
  return stories.find((s) => s.featured && s.teaser_title && s.teaser) ?? null;
}

/** "Saturday, 18 October" */
export function prettyDate(isoDate: string) {
  return new Intl.DateTimeFormat("en-IN", { weekday: "long", day: "numeric", month: "long", timeZone: "UTC" }).format(
    new Date(`${isoDate}T00:00:00Z`),
  );
}
