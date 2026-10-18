// Turns one day's news file (content/news/YYYY-MM-DD.json) into SQL for Supabase.
//
// Run from the project folder:   node scripts/news-to-sql.mjs 2026-10-18
// Output:                         supabase/news/YYYY-MM-DD.sql
//
// Stories go in as DRAFTS. Approve them on the app's "Approve news" page.
// Safe to run again: stories with the same slug are updated, not duplicated
// (an already-approved story keeps its approval).
//
// Teasers: EVERY story needs a "teaser_title" (the hook) and "teaser" (2–3 sentences) written in
// story language, true to the story. Mark ONE story "featured": true as the suggested pick; the
// admin can pick another on the approval page and its hook is already there. The pick appears
// on the Study Desk and the welcome page.
// Re-running never overrides a pick or teaser you changed on the approval page.
//
// THE 24-HOUR RULE: Chai & Charts is today's news only. Every story needs "published": the time
// its source published it, with the India offset (e.g. "2026-10-18T09:30:00+05:30"). It must fall
// between 7 AM the previous day and the end of this day (India time), or the script refuses to run.
// (Concept cards can use older news and historic cases; this rule is only for the daily brief.)
//
// The file is the whole day: stories of this day that are no longer in the file are removed.
//
// AT LEAST 10 STORIES, RANKED: every story needs a "rank" by that day's news value (1 = the most
// important). Ranks must be 1, 2, 3… with no gaps. The lane split isn't fixed; it follows the news.

import { mkdirSync, readFileSync, writeFileSync } from "node:fs";

const day = process.argv[2];
if (!/^\d{4}-\d{2}-\d{2}$/.test(day ?? "")) {
  console.error("Usage: node scripts/news-to-sql.mjs YYYY-MM-DD");
  process.exit(1);
}

const stories = JSON.parse(readFileSync(`content/news/${day}.json`, "utf8"));
const cardIds = new Set([...readFileSync("supabase/002_cards.sql", "utf8").matchAll(/\(\s*\$c\$([a-z]+-\d+)\$c\$/g)].map((m) => m[1]));

// The freshness window: 7 AM India time the day before, to the end of this day
const prevDay = new Date(Date.parse(`${day}T00:00:00Z`) - 86400000).toISOString().slice(0, 10);
const windowStart = Date.parse(`${prevDay}T07:00:00+05:30`);
const windowEnd = Date.parse(`${day}T23:59:59+05:30`);

const problems = [];
for (const s of stories) {
  const published = Date.parse(s.published ?? "");
  if (!/[+-]\d{2}:\d{2}$|Z$/.test(s.published ?? "") || Number.isNaN(published)) {
    problems.push(`${s.slug}: "published" must be a date and time with offset, e.g. ${day}T09:30:00+05:30`);
  } else if (published < windowStart || published > windowEnd) {
    problems.push(`${s.slug}: published ${s.published} is outside the 24-hour window (from ${prevDay} 7 AM IST)`);
  }
  if (!["global", "india", "local", "recruiter"].includes(s.lane)) problems.push(`${s.slug}: unknown lane`);
  if (s.card && !cardIds.has(s.card)) problems.push(`${s.slug}: unknown card ${s.card}`);
  if (!s.slug?.startsWith(day)) problems.push(`${s.slug}: slug must start with ${day}`);
  if (!/^https:\/\//.test(s.source_url)) problems.push(`${s.slug}: source_url must be https`);
  for (const k of ["headline", "summary", "source_name"]) if (!s[k]) problems.push(`${s.slug}: missing ${k}`);
  // Every story gets a ready-made hook, so whichever one the admin picks, its teaser is already written
  if (!(s.teaser_title && s.teaser)) problems.push(`${s.slug}: every story needs teaser_title and teaser`);
  if ((s.teaser_title ?? "").length > 120) problems.push(`${s.slug}: teaser_title is over 120 characters`);
}
if (stories.filter((s) => s.featured).length > 1) problems.push("Only one story per day can be featured");
if (stories.length < 10) problems.push(`Only ${stories.length} stories: the brief needs at least 10`);
const ranks = stories.map((s) => s.rank).sort((a, b) => a - b);
if (ranks.some((r, i) => r !== i + 1)) problems.push(`Ranks must be 1 to ${stories.length} with no gaps or repeats (got ${ranks.join(", ")})`);
if (problems.length) {
  console.error(problems.join("\n"));
  process.exit(1);
}

const t = (v) => {
  if (v == null || v === "") return "null";
  if (String(v).includes("$n$")) throw new Error("Text contains $n$");
  return `$n$${v}$n$`;
};

const rows = stories.map(
  (s) =>
    `(${t(s.slug)}, '${day}', ${t(s.lane)}, ${t(s.tag)},\n  ${t(s.headline)},\n  ${t(s.summary)},\n  ${t(s.concept_note)},\n  ${t(s.source_name)}, ${t(s.source_url)}, ${t(s.card)}, 'draft',
  ${t(s.teaser_title)},
  ${t(s.teaser)}, ${s.featured ? "true" : "false"}, ${t(s.published)}, ${Number(s.rank)})`,
);
const slugs = stories.map((s) => t(s.slug)).join(", ");

const sql = `-- =====================================================================
-- PLACED news brief for ${day}: ${stories.length} stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/${day}.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between ${prevDay} 7 AM and ${day} (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '${day}' and (slug is null or slug not in (${slugs}));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
${rows.join(",\n")}
on conflict (slug) do update set
  publish_date = excluded.publish_date, lane = excluded.lane, tag = excluded.tag,
  headline = excluded.headline, summary = excluded.summary, concept_note = excluded.concept_note,
  source_name = excluded.source_name, source_url = excluded.source_url, card_id = excluded.card_id,
  published_at = excluded.published_at, rank = excluded.rank,
  -- the pick and teaser only fill in blanks, so changes made on the approval page are kept
  teaser_title = coalesce(news_stories.teaser_title, excluded.teaser_title),
  teaser = coalesce(news_stories.teaser, excluded.teaser),
  featured = news_stories.featured or (excluded.featured and not exists (
    select 1 from news_stories f where f.publish_date = excluded.publish_date and f.featured));

-- Check: this day's stories by lane
select lane, count(*) as stories, count(*) filter (where status = 'approved') as approved,
  count(*) filter (where featured) as todays_pick
from news_stories where publish_date = '${day}' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '${day}' order by rank;
`;

mkdirSync("supabase/news", { recursive: true });
writeFileSync(`supabase/news/${day}.sql`, sql);
console.log(`Wrote supabase/news/${day}.sql: ${stories.length} stories`);
