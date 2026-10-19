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
  rank: number | null; // news value that day: 1 = the most important story
};

const COLUMNS =
  "id, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank";

function db() {
  return createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!, {
    auth: { persistSession: false },
  });
}

/** The day before an ISO date (YYYY-MM-DD) */
export function dayBefore(isoDate: string) {
  return new Date(Date.parse(`${isoDate}T00:00:00Z`) - 86400000).toISOString().slice(0, 10);
}

/**
 * The current Chai & Charts edition (`today` is YYYY-MM-DD, India time). Like a newspaper, the new
 * edition arrives in the morning (the cloud job publishes it around 6 AM IST): until today's brief is
 * live, this returns YESTERDAY's brief, so the app never goes blank after midnight. It never reaches
 * further back than yesterday. `date` tells callers which day they got, so they can label it.
 */
export async function getBrief(today: string): Promise<{ date: string | null; stories: Story[] }> {
  "use cache";
  cacheTag("news");
  cacheLife("minutes");
  const { data, error } = await db()
    .from("news_stories")
    .select(COLUMNS)
    .in("publish_date", [today, dayBefore(today)])
    .order("rank", { ascending: true, nullsFirst: false })
    .order("id");
  if (error) throw new Error(`Could not load the news: ${error.message}`);
  const all = (data ?? []) as Story[];
  const todays = all.filter((s) => s.publish_date === today);
  const stories = todays.length ? todays : all.filter((s) => s.publish_date !== today);
  return { date: stories.length ? stories[0].publish_date : null, stories };
}

/**
 * "Yesterday, 9:42 PM", "Today" or "18 Oct, 9:42 PM", India time, counted from the real current day
 * (so yesterday's edition, shown before today's arrives, reads correctly). Midnight means the source
 * gave a date but no time.
 */
export function publishedTime(iso: string) {
  const at = new Date(iso);
  const ymd = (d: Date) =>
    new Intl.DateTimeFormat("en-CA", { year: "numeric", month: "2-digit", day: "2-digit", timeZone: "Asia/Kolkata" }).format(d);
  const part = (o: Intl.DateTimeFormatOptions) => new Intl.DateTimeFormat("en-IN", { ...o, timeZone: "Asia/Kolkata" }).format(at);
  const day = ymd(at);
  const today = ymd(new Date());
  const label =
    day === today ? "Today" : day === dayBefore(today) ? "Yesterday" : part({ day: "numeric", month: "short" });
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
