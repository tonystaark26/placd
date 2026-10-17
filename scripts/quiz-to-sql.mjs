// Turns content/quiz/questions.json into one SQL file for Supabase.
//
// Run from the project folder:   node scripts/quiz-to-sql.mjs
// Output:                         supabase/004_quiz_questions.sql
//
// Safe to run again after editing questions: existing ones are updated, not duplicated.

import { readFileSync, writeFileSync } from "node:fs";

const questions = JSON.parse(readFileSync("content/quiz/questions.json", "utf8"));
const cardIds = new Set([...readFileSync("supabase/002_cards.sql", "utf8").matchAll(/\(\s*\$c\$([a-z]+-\d+)\$c\$/g)].map((m) => m[1]));

// Check everything before writing
const problems = [];
const seen = new Set();
for (const q of questions) {
  const slug = `${q.card}-${q.kind}`;
  if (!cardIds.has(q.card)) problems.push(`${slug}: unknown card`);
  if (!["concept", "application", "case", "news"].includes(q.kind)) problems.push(`${slug}: unknown kind`);
  if (seen.has(slug)) problems.push(`${slug}: duplicate`);
  seen.add(slug);
  if (!Array.isArray(q.options) || q.options.length !== 4) problems.push(`${slug}: needs exactly 4 options`);
  if (!(q.answer >= 0 && q.answer <= 3)) problems.push(`${slug}: answer must be 0–3`);
  if (new Set(q.options).size !== q.options.length) problems.push(`${slug}: repeated option`);
  if (!q.q || !q.why) problems.push(`${slug}: missing question or explanation`);
}
for (const id of cardIds) if (!questions.some((q) => q.card === id)) problems.push(`${id}: no questions`);
if (problems.length) {
  console.error(problems.join("\n"));
  process.exit(1);
}

const text = (s) => {
  if (s.includes("$q$")) throw new Error("Text contains $q$");
  return `$q$${s}$q$`;
};

const rows = questions.map(
  (q) =>
    `(${text(`${q.card}-${q.kind}`)}, ${text(q.card)}, ${text(q.kind)},\n  ${text(q.q)},\n  ${text(JSON.stringify(q.options))}::jsonb, ${q.answer},\n  ${text(q.why)}, 'approved')`,
);

const sql = `-- =====================================================================
-- PLACED quiz questions: ${questions.length} questions
-- Made automatically by scripts/quiz-to-sql.mjs from content/quiz/questions.json.
-- Don't edit this file by hand: edit the JSON, then run the script again.
--
-- Run in Supabase AFTER 003_quiz_rules.sql: SQL Editor → New query → paste → Run.
-- Safe to run more than once.
-- =====================================================================

insert into quiz_questions (slug, card_id, kind, question, options, answer_index, explanation, status)
values
${rows.join(",\n")}
on conflict (slug) do update set
  card_id = excluded.card_id, kind = excluded.kind, question = excluded.question,
  options = excluded.options, answer_index = excluded.answer_index,
  explanation = excluded.explanation, status = excluded.status;

-- Check: this should list each subject with its number of questions
select split_part(slug, '-', 1) as subject, count(*) as questions
from quiz_questions group by 1 order by 1;
`;

writeFileSync("supabase/004_quiz_questions.sql", sql);
console.log(`Wrote supabase/004_quiz_questions.sql: ${questions.length} questions`);
