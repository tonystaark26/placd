"use client";

import { useEffect, useState } from "react";

// The end-of-quiz moment. Growth is the hook: bars rise one after another, a trend arrow draws
// itself across them, the score counts up and the XP pops in. With reduced motion turned on,
// everything simply appears in its final state.

function message(score: number, total: number) {
  if (total > 0 && score === total) return "Perfect score. That's how you step up.";
  if (total > 0 && score / total >= 0.7) return "Strong day. Keep the climb going.";
  if (score > 0) return "Every answer you review today is growth tomorrow.";
  return "Tough one. Review the cards, and tomorrow you climb.";
}

export function GrowthCelebration({
  score,
  total,
  xpEarned,
  label = "Today's quiz done",
}: {
  score: number;
  total: number;
  xpEarned: number;
  label?: string;
}) {
  const [shown, setShown] = useState(0);

  // Count the score up after the bars have started rising
  useEffect(() => {
    const reduce = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
    let raf = 0;
    const start = performance.now() + 350;
    const tick = (now: number) => {
      // With reduced motion, jump straight to the final score
      const t = reduce ? 1 : Math.min(1, Math.max(0, (now - start) / 700));
      setShown(Math.round(score * (1 - Math.pow(1 - t, 3))));
      if (t < 1) raf = requestAnimationFrame(tick);
    };
    raf = requestAnimationFrame(tick);
    return () => cancelAnimationFrame(raf);
  }, [score]);

  // The bars always climb: finishing today's quiz is a step up, whatever the score
  const bars = [14, 24, 36, 50];

  return (
    <div className="rounded-[10px] bg-coffee px-5 py-6 text-center text-cream">
      <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-crema">{label}</p>

      <svg viewBox="0 0 120 64" className="mx-auto mt-3 h-16 w-32" aria-hidden="true">
        {bars.map((h, i) => (
          <rect
            key={i}
            x={14 + i * 24}
            y={60 - h}
            width="14"
            height={h}
            rx="2.5"
            fill={i === 3 ? "#fbf7f1" : "#eadbc8"}
            opacity={i === 3 ? 1 : 0.55 + i * 0.12}
            className="cc-rise"
            style={{ animationDelay: `${100 + i * 120}ms` }}
          />
        ))}
        <path
          d="M10 50 L33 38 L57 31 L81 18 L106 6"
          fill="none"
          stroke="#fbf7f1"
          strokeWidth="2.5"
          strokeLinecap="round"
          strokeLinejoin="round"
          pathLength={1}
          strokeDasharray="1"
          className="cc-draw"
          style={{ animationDelay: "620ms" }}
        />
      </svg>

      <p className="mt-2 text-[40px] font-bold leading-none tabular-nums">
        {shown}/{total}
      </p>
      <p className="cc-pop mt-2 font-sans text-[14px] font-semibold text-crema" style={{ animationDelay: "1000ms" }}>
        +{xpEarned} XP
      </p>
      <p className="cc-fade-up mt-3 text-[15px] leading-snug text-cream/90" style={{ animationDelay: "1150ms" }}>
        {message(score, total)}
      </p>
    </div>
  );
}
