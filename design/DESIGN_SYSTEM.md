# PLACED Design System: "Café"

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
5. **Serif for reading, sans for small labels**, like a quality newspaper.

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

| Role | Font | Notes |
|---|---|---|
| Headings & reading text | **Bookman Old Style** | Where it isn't installed (most phones), it falls back to **Libre Baskerville**, a free, similar serif |
| Labels, buttons, numbers in UI | **IBM Plex Sans** | Small, crisp, professional |

| Style | Size / weight |
|---|---|
| Score / big number | 40 px / 700 serif |
| Screen title | 22 px / 700 serif |
| Headline | 16 px / 700 serif |
| Body | 15 px / 400 serif, line height 1.6 |
| Small | 13 px / 400 |
| Label | 11 px / 600 sans, capitals, letter-spaced |
| Button | 14 px / 600 sans |

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
