import type { Metadata } from "next";
import Link from "next/link";
import { redirect } from "next/navigation";
import { Suspense } from "react";
import { AppHeader } from "@/components/AppHeader";
import { getAccount } from "@/lib/account";
import { createClient } from "@/lib/supabase/server";

export const metadata: Metadata = { title: "Leaderboard · ChaiCase" };

type Row = { rank: number; alias: string; xp: number; streak: number; is_me: boolean };
type Period = "week" | "all";

const MEDAL: Record<number, string> = { 1: "🥇", 2: "🥈", 3: "🥉" };

// Growth is the hook: tell each student exactly how far the next step up is
function ClimbCard({ rows, period, isGuest }: { rows: Row[]; period: Period; isGuest: boolean }) {
  if (isGuest) {
    return (
      <div className="rounded-[12px] border border-crema-line bg-latte px-4 py-4">
        <p className="text-[16px] font-bold leading-snug">Want your name up here?</p>
        <p className="mt-1 text-[14px] leading-relaxed text-mocha">
          Guests can watch, but only free accounts climb the board. Your streak and XP start counting from your first quiz.
        </p>
        <Link href="/" className="mt-3 inline-block font-sans text-[14px] font-semibold text-coffee underline underline-offset-2">
          Create my free account →
        </Link>
      </div>
    );
  }

  const me = rows.find((r) => r.is_me);
  const when = period === "week" ? "this week" : "overall";
  if (!me) {
    return (
      <div className="rounded-[12px] bg-coffee px-4 py-4 text-cream">
        <p className="text-[16px] font-bold leading-snug">You&apos;re not on the board {when} yet.</p>
        <p className="mt-1 text-[14px] leading-relaxed text-cream/90">Finish today&apos;s quiz to earn XP and start climbing.</p>
        <Link href="/quiz" className="mt-3 flex h-11 items-center justify-center rounded-[10px] bg-cream font-sans text-[15px] font-semibold text-coffee">
          Start today&apos;s quiz ↗
        </Link>
      </div>
    );
  }

  // The nearest person above you
  const above = rows.filter((r) => r.xp > me.xp).sort((a, b) => a.xp - b.xp)[0];
  return (
    <div className="rounded-[12px] bg-coffee px-4 py-4 text-cream">
      <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-crema">Your place {when}</p>
      <p className="mt-1 text-[30px] font-bold leading-none">#{me.rank}</p>
      {above ? (
        <p className="mt-2 text-[15px] leading-snug">
          <span className="font-semibold">{above.xp - me.xp + 1} XP</span> to climb past {above.alias}. ↗
          <span className="mt-1 block text-[13px] text-cream/80">That&apos;s about one quiz with a few right answers.</span>
        </p>
      ) : (
        <p className="mt-2 text-[15px] leading-snug">You&apos;re at the top. Keep your streak going to stay there. 🏆</p>
      )}
    </div>
  );
}

async function Board({ period }: { period: Period }) {
  const account = await getAccount();
  if (!account) redirect("/");

  const supabase = await createClient();
  const { data, error } = await supabase.rpc("leaderboard", { p_period: period });
  const rows = (data ?? []) as Row[];

  return (
    <>
      <div className="mt-5">
        <ClimbCard rows={rows} period={period} isGuest={account.isGuest} />
      </div>

      {error ? (
        <p className="mt-6 text-[15px] text-mocha">The leaderboard isn&apos;t available right now. Please try again later.</p>
      ) : rows.length === 0 ? (
        <p className="mt-6 rounded-[10px] border border-line bg-foam px-4 py-5 text-[15px] text-mocha">
          Nobody&apos;s on the board {period === "week" ? "this week" : ""} yet. Finish a quiz and be the first.
        </p>
      ) : (
        <ol className="mt-5 overflow-hidden rounded-[12px] border border-line bg-foam">
          {rows.map((r) => (
            <li
              key={`${r.rank}-${r.alias}`}
              className={`flex items-center gap-3 border-b border-line px-4 py-3 last:border-b-0 ${r.is_me ? "bg-crema" : ""}`}
            >
              <span className="w-8 shrink-0 text-center font-sans text-[15px] font-semibold text-coffee">
                {MEDAL[r.rank] ?? r.rank}
              </span>
              <span className="min-w-0 flex-1 truncate text-[15px] font-semibold">
                {r.alias}
                {r.is_me && <span className="ml-1.5 font-sans text-[11px] font-semibold uppercase tracking-[1px] text-coffee">You</span>}
              </span>
              {r.streak > 0 && <span className="shrink-0 font-sans text-[12px] text-mocha">🔥 {r.streak}</span>}
              <span className="w-16 shrink-0 text-right font-sans text-[14px] font-semibold tabular-nums">{r.xp} XP</span>
            </li>
          ))}
        </ol>
      )}

      <p className="mt-4 font-sans text-[12px] leading-relaxed text-mocha-2">
        Only display names are shown. 10 XP for each right answer, plus 20 for finishing the daily quiz.
        {period === "week" && " The weekly board starts fresh every Monday."}
      </p>
    </>
  );
}

export default function LeaderboardPage({ searchParams }: PageProps<"/leaderboard">) {
  return (
    <main className="cc-stagger mx-auto w-full max-w-md px-5 pb-20 pt-8">
      <AppHeader />
      <nav className="mt-6 font-sans text-[13px]">
        <Link href="/desk" className="font-medium text-coffee">
          ← Study Desk
        </Link>
      </nav>
      <h1 className="mt-4 text-[30px] leading-snug">Leaderboard</h1>
      <Suspense fallback={<div className="mt-6 h-72 animate-pulse rounded-[12px] bg-foam" />}>
        {searchParams.then(({ period }) => {
          const p: Period = period === "all" ? "all" : "week";
          return (
            <>
              <div className="mt-4 flex gap-2 font-sans text-[13px]">
                {(["week", "all"] as const).map((id) => (
                  <Link
                    key={id}
                    href={id === "week" ? "/leaderboard" : "/leaderboard?period=all"}
                    aria-current={p === id ? "page" : undefined}
                    className={`rounded-full px-4 py-2 font-semibold ${
                      p === id ? "bg-coffee text-cream" : "border border-crema-line bg-latte text-coffee"
                    }`}
                  >
                    {id === "week" ? "This week" : "All time"}
                  </Link>
                ))}
              </div>
              <Board period={p} />
            </>
          );
        })}
      </Suspense>
    </main>
  );
}
