// Turns one day's news file (content/news/YYYY-MM-DD.json) into SQL for Supabase.
//
// Run from the project folder:   node scripts/news-to-sql.mjs 2026-10-18
// Output:                         supabase/news/YYYY-MM-DD.sql
//
// Stories go in as DRAFTS. Approve them on the app's "Approve news" page.
// Safe to run again: stories with the same slug are updated, not duplicated
// (an already-approved story keeps its approval).
//
// "Today's pick": mark ONE story with "featured": true plus a "teaser_title" and "teaser"
// written in story language. It appears on the Study Desk and the welcome page.
// Re-running never overrides a pick or teaser you changed on the approval page.

import { mkdirSync, readFileSync, writeFileSync } from "node:fs";

const day = process.argv[2];
if (!/^\d{4}-\d{2}-\d{2}$/.test(day ?? "")) {
  console.error("Usage: node scripts/news-to-sql.mjs YYYY-MM-DD");
  process.exit(1);
}

const stories = JSON.parse(readFileSync(`content/news/${day}.json`, "utf8"));
const cardIds = new Set([...readFileSync("supabase/002_cards.sql", "utf8").matchAll(/\(\s*\$c\$([a-z]+-\d+)\$c\$/g)].map((m) => m[1]));

const problems = [];
for (const s of stories) {
  if (!["global", "india", "local", "recruiter"].includes(s.lane)) problems.push(`${s.slug}: unknown lane`);
  if (s.card && !cardIds.has(s.card)) problems.push(`${s.slug}: unknown card ${s.card}`);
  if (!s.slug?.startsWith(day)) problems.push(`${s.slug}: slug must start with ${day}`);
  if (!/^https:\/\//.test(s.source_url)) problems.push(`${s.slug}: source_url must be https`);
  for (const k of ["headline", "summary", "source_name"]) if (!s[k]) problems.push(`${s.slug}: missing ${k}`);
  if (s.featured && !(s.teaser_title && s.teaser)) problems.push(`${s.slug}: a featured story needs teaser_title and teaser`);
}
if (stories.filter((s) => s.featured).length > 1) problems.push("Only one story per day can be featured");
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
  ${t(s.teaser)}, ${s.featured ? "true" : "false"})`,
);

const sql = `-- =====================================================================
-- PLACED news brief for ${day}: ${stories.length} stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/${day}.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- =====================================================================

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured)
values
${rows.join(",\n")}
on conflict (slug) do update set
  publish_date = excluded.publish_date, lane = excluded.lane, tag = excluded.tag,
  headline = excluded.headline, summary = excluded.summary, concept_note = excluded.concept_note,
  source_name = excluded.source_name, source_url = excluded.source_url, card_id = excluded.card_id,
  -- the pick and teaser only fill in blanks, so changes made on the approval page are kept
  teaser_title = coalesce(news_stories.teaser_title, excluded.teaser_title),
  teaser = coalesce(news_stories.teaser, excluded.teaser),
  featured = news_stories.featured or (excluded.featured and not exists (
    select 1 from news_stories f where f.publish_date = excluded.publish_date and f.featured));

-- Check: this day's stories by lane
select lane, count(*) as stories, count(*) filter (where status = 'approved') as approved,
  count(*) filter (where featured) as todays_pick
from news_stories where publish_date = '${day}' group by lane order by lane;
`;

mkdirSync("supabase/news", { recursive: true });
writeFileSync(`supabase/news/${day}.sql`, sql);
console.log(`Wrote supabase/news/${day}.sql: ${stories.length} stories`);
