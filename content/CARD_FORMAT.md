# Concept Card Format

Every concept card in PLACED has the same parts in the same order.

**Why a fixed format?** When we build the app, each part becomes a "field" in
the database, just like columns in an Excel sheet. A fixed format means the app
can show any card, link it to news, and build quizzes from it automatically.

| # | Part | What it is | Limit |
|---|---|---|---|
| 1 | **Title** | The concept's name | — |
| 2 | **In one line** | The whole idea in a single sentence | ~20 words |
| 3 | **Explain it simply** | Plain-language explanation, as a friend would tell it | ~80 words |
| 4 | **The ₹100 example** | A small, relatable money example with real numbers | ~60 words |
| 5 | **Seen in the news** | A real event where this concept shows up | ~60 words |
| 6 | **How interviewers ask it** | A typical interview question + a strong 30-second answer | ~80 words |
| 7 | **Common trap** | The mistake students usually make | ~30 words |
| 8 | **Quiz** | 3 questions: 1 concept, 1 application, 1 mini case | — |
| 9 | **Source** | Which file and page in `materials/` this comes from | — |
| 10 | **Status** | `DRAFT` → `REVIEWED` (by you) → `VERIFIED` (by a professor, if needed) | — |
| 11 | **Picture** | A simple café-style diagram shown under the title, drawn from the card's own ₹100 example (made in code: `web/src/components/diagrams/`) | One idea per picture |

## Rules
- **No jargon without explaining it** in the same sentence.
- **Every fact must trace to a source**: our materials for theory, a named
  news source for events.
- **News facts marked ⚠ VERIFY** must be checked against a reliable source
  before the card is published.
- Interview questions must be the kind actually asked, never invented
  just to fill space.
