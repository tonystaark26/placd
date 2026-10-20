// Turns the concept-card files in content/ into one SQL file for Supabase.
//
// Run from the project folder:   node scripts/cards-to-sql.mjs
// Output:                         supabase/002_cards.sql
//
// Safe to run again after editing cards: existing cards are updated, not duplicated.

import { readFileSync, writeFileSync, readdirSync } from "node:fs";
import { join } from "node:path";

const SUBJECTS = [
  { id: "econ", folder: "content/managerial-economics" },
  { id: "mkt", folder: "content/marketing" },
  { id: "acct", folder: "content/cost-accounting" },
  { id: "ob", folder: "content/organisational-behaviour" },
];

// Bold headings that start each part of a card (see content/CARD_FORMAT.md)
const PARTS = {
  "In one line": "one_line",
  "Explain it simply": "explain",
  "The everyday example": "example",
  "Seen in the news": "news",
  "How interviewers ask it": "interview",
  "Common trap": "trap",
  "Quiz": "quiz",
};

function parseCard(block, subjectId) {
  const lines = block.split(/\r?\n/);
  const head = lines[0].match(/^## Card ([A-Z]?)(\d+) · (.+)$/);
  const num = Number(head[2]);
  const card = {
    id: `${subjectId}-${String(num).padStart(2, "0")}`,
    subject_id: subjectId,
    num,
    title: head[3].trim(),
  };

  let current = null;
  const raw = {};
  for (const line of lines.slice(1)) {
    const src = line.match(/^\*\*Source:\*\*\s*(.+)$/);
    const status = line.match(/^\*\*Status:\*\*\s*(\w+)/);
    if (src) { card.source = src[1].replace(/`/g, "").trim(); current = null; continue; }
    if (status) { card.status = status[1].toLowerCase(); current = null; continue; }
    if (/^---\s*$/.test(line)) { current = null; continue; }

    const heading = Object.keys(PARTS).find((h) => line.startsWith(`**${h}`));
    if (heading) {
      current = PARTS[heading];
      raw[current] = [];
      // Keep anything after the heading, e.g. ": the canteen test" or "✅ Verified (2025)"
      const rest = line.slice(line.indexOf("**", 2) + 2).replace(/^:\s*/, "").trim();
      const extra = line.slice(2 + heading.length, line.indexOf("**", 2)).replace(/^:\s*/, "").trim();
      if (current === "example" && extra) card.example_title = extra;
      if (current === "news" && rest) card.news_label = rest;
      continue;
    }
    if (current) raw[current].push(line);
  }

  const text = (key) => (raw[key] || []).join("\n").trim();
  card.one_line = text("one_line");
  card.explain = text("explain");
  card.example = card.example_title ? `**${card.example_title}**\n\n${text("example")}` : text("example");
  card.news = text("news");
  card.trap = text("trap");

  // Interview: the quoted question, then the "Strong answer" paragraph(s)
  const iv = text("interview");
  const answerAt = iv.indexOf("**Strong answer:**");
  card.interview_q = iv.slice(0, answerAt).replace(/^>\s?/gm, "").trim()
    .replace(/^\*+|\*+$/g, "").replace(/^"|"$/g, "").trim();
  card.interview_a = iv.slice(answerAt + "**Strong answer:**".length).trim();

  // Quiz: numbered items like  1. *(Concept)* question **Answer: …**
  card.practice = text("quiz")
    .split(/\n(?=\d+\.\s)/)
    .map((item) => {
      const m = item.match(/^\d+\.\s*\*\((.+?)\)\*\s*([\s\S]*)$/);
      if (!m) return null;
      const body = m[2].replace(/\n\s+/g, "\n");
      const at = body.indexOf("**Answer");
      return {
        kind: m[1].toLowerCase().startsWith("mini") ? "case" : m[1].toLowerCase(),
        question: body.slice(0, at).trim(),
        // "**Answer:** text" → "text", and "**Answer: X.**" → "**X.**"
        answer: body.slice(at).replace(/^\*\*Answer:\*\*\s*/, "").replace(/^\*\*Answer:?\s*/, "**").trim(),
      };
    })
    .filter(Boolean);

  return card;
}

function sqlText(value) {
  if (value == null || value === "") return "null";
  if (value.includes("$c$")) throw new Error("Card text contains $c$");
  return `$c$${value}$c$`;
}

const cards = [];
for (const { id, folder } of SUBJECTS) {
  for (const file of readdirSync(folder).filter((f) => /^batch-.*\.md$/.test(f)).sort()) {
    const blocks = readFileSync(join(folder, file), "utf8").split(/\n(?=## )/);
    for (const block of blocks) if (block.startsWith("## Card ")) cards.push(parseCard(block, id));
  }
}

// Check every card has its required parts before writing anything
const required = ["title", "one_line", "explain", "example", "news", "interview_q", "interview_a", "trap", "source", "status"];
const problems = [];
for (const c of cards) {
  for (const key of required) if (!c[key]) problems.push(`${c.id}: missing ${key}`);
  if (c.practice.length !== 3) problems.push(`${c.id}: ${c.practice.length} quiz questions (expected 3)`);
}
if (problems.length) { console.error(problems.join("\n")); process.exit(1); }

const rows = cards.map((c) => `(
  ${sqlText(c.id)}, ${sqlText(c.subject_id)}, ${c.num}, ${sqlText(c.title)},
  ${sqlText(c.one_line)},
  ${sqlText(c.explain)},
  ${sqlText(c.example)},
  ${sqlText(c.news_label)},
  ${sqlText(c.news)},
  ${sqlText(c.interview_q)},
  ${sqlText(c.interview_a)},
  ${sqlText(c.trap)},
  ${sqlText(JSON.stringify(c.practice))}::jsonb,
  ${sqlText(c.source)}, ${sqlText(c.status)}
)`);

const sql = `-- =====================================================================
-- ChaiCase concept cards: ${cards.length} cards
-- Made automatically by scripts/cards-to-sql.mjs from the files in content/.
-- Don't edit this file by hand: edit the card files, then run the script again.
--
-- Run in Supabase: SQL Editor → New query → paste → Run.
-- Safe to run more than once: existing cards are updated, not duplicated.
-- =====================================================================

-- Subjects (new ones are added; existing ones are left alone)
insert into subjects (id, name, sort) values
  ('econ', 'Economics', 1), ('fin', 'Finance', 2), ('mkt', 'Marketing', 3),
  ('acct', 'Accounting', 4), ('ob', 'Organisational Behaviour', 5)
on conflict (id) do nothing;

-- Two parts of each card that the first version of the table didn't have room for
alter table concept_cards add column if not exists news_label text;   -- e.g. '✅ Verified (Sept 2025)'
alter table concept_cards add column if not exists news       text;   -- "Seen in the news"
alter table concept_cards add column if not exists practice   jsonb;  -- the 3 practice questions with answers

insert into concept_cards
  (id, subject_id, num, title, one_line, explain, example, news_label, news,
   interview_q, interview_a, trap, practice, source, status)
values
${rows.join(",\n")}
on conflict (id) do update set
  subject_id = excluded.subject_id, num = excluded.num, title = excluded.title,
  one_line = excluded.one_line, explain = excluded.explain, example = excluded.example,
  news_label = excluded.news_label, news = excluded.news,
  interview_q = excluded.interview_q, interview_a = excluded.interview_a,
  trap = excluded.trap, practice = excluded.practice,
  source = excluded.source, status = excluded.status;

-- Check: this should list each subject with its number of cards
select subject_id, count(*) as cards from concept_cards group by subject_id order by subject_id;
`;

writeFileSync("supabase/002_cards.sql", sql);
const count = (s) => cards.filter((c) => c.subject_id === s).length;
console.log(`Wrote supabase/002_cards.sql: ${cards.length} cards (econ ${count("econ")}, mkt ${count("mkt")}, acct ${count("acct")}, ob ${count("ob")})`);
