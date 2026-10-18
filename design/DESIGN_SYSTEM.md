# ChaiCase Design System: "Café"

Chosen 17 Oct 2026. History: clean minimal (too plain) → bright & playful (too loud,
text too big) → black & gold (layout and fonts kept) → **café colours**.

**The feeling we want:** professional and warm, like revising at a quiet café table.
A soft grey background, espresso-dark text, and coffee brown used sparingly for what matters.

---

## 1. Principles

1. **Warm and calm.** A warm grey background that's easy on the eyes.
2. **Coffee brown only for what matters:** the main button, progress, the streak and
   highlights. Never for decoration.
3. **Modest type sizes.** Professional apps whisper; they don't shout.
4. **One main action per screen**, in coffee brown with cream text.
5. **Serif for headlines, sans for everything you read and use.** DM Serif Display for page
   titles and editorial moments; Sora for lessons, labels, buttons and numbers.

## 2. Colour

| Token | Hex | Used for |
|---|---|---|
| `grey` (background) | `#E9E6E1` | Screen background, a warm stone grey |
| `foam` | `#F5F3EF` | Cards, panels |
| `latte` | `#EFE7DD` | Selected rows |
| `line` | `#D6D0C8` | Dividers, borders |
| `espresso` | `#2B1E16` | Main text |
| `mocha` | `#6B625A` | Secondary text |
| `mocha-2` | `#75695F` | Hints, inactive icons |
| `coffee` (accent) | `#6F4E37` | Main buttons (with cream text), progress, highlights |
| `cream` | `#FBF7F1` | Text on coffee buttons |
| `crema` | `#EADBC8` | Background behind "₹100 example" and concept chips |
| `good` | `#1E6B45` on `#DCEBDD` | Correct answers |
| `bad` | `#A3322B` on `#F6DEDB` | Wrong answers, errors |

All text passes the readability contrast check (4.5:1). Other accent options in the
Tweaks panel are a lighter caramel (`#8B5E3C`) and a dark roast (`#3E2A1F`).

## 3. Type

Changed 18 Oct 2026, inspired by wahresume.com's pairing (earlier: Bookman / Libre Baskerville
with IBM Plex Sans). Both fonts are free Google fonts, loaded through Next.js.

| Role | Font | Notes |
|---|---|---|
| Page titles (every `h1`), teaser headlines, The Blueprint label | **DM Serif Display** | One weight only (regular), so it's never bolded |
| Everything else: lessons, labels, buttons, numbers, pictures | **Sora** | Weights 300–800; no italic, so italics are slanted automatically |

| Style | Size / weight |
|---|---|
| Welcome headline | 32 px serif |
| Screen title | 30 px serif (card titles, login, onboarding: 27 px) |
| Teaser headline | 23 px serif |
| ChaiCase wordmark | 46 px / 700 Bookman (Libre Baskerville on phones); 15 px in the app header |
| Score / big number | 40 px / 700 Sora |
| Headline | 16–17 px / 700 Sora |
| Body | 15 px / 400 Sora, line height 1.6 |
| Small | 13 px / 400 |
| Label | 11 px / 600 Sora, capitals, letter-spaced |
| Button | 14–15 px / 600 Sora |

Sora is wider than IBM Plex Sans, so long picture labels were shortened to fit (checked
automatically across all 46 pictures).

## 4. Shape & spacing

- **Corners:** 10 px on cards and buttons, fully round on small badges.
- **Borders:** 1 px `line`. No shadows, no chunky edges.
- **Buttons:** 48 px tall.
- **Spacing scale:** 4 · 8 · 12 · 16 · 20 · 24 · 32 px. Screen edges are 20 px.

## 5. Game elements (kept, but understated)

| Element | Rule |
|---|---|
| Streak | Gold flame + number; a 7-day dot row |
| Streak freeze | Small grey badge, 1 per week |
| XP | +10 per correct answer, shown in gold |
| Result screen | A gold badge and three numbers. No confetti. |

## 6. Icons

Thin line icons, 1.5 px stroke, in `white` or `grey`. Never emoji.
