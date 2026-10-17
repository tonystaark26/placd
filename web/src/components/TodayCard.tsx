import Link from "next/link";
import { getAccount } from "@/lib/account";
import { getStats, istToday } from "@/lib/quiz";
import { createClient } from "@/lib/supabase/server";

// The "Today's quiz" box at the top of the Library, with the student's streak and XP
export async function TodayCard() {
  const account = await getAccount();
  if (!account) return null;

  const supabase = await createClient();
  const [stats, { data: today }] = await Promise.all([
    getStats(account.id, account.isGuest),
    supabase.from("daily_sessions").select("score, total").eq("session_date", istToday()).maybeSingle(),
  ]);

  return (
    <section className="mt-6 rounded-[10px] bg-coffee px-4 py-4 text-cream">
      <div className="flex items-start justify-between gap-3">
        <div>
          <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-crema">Today&apos;s quiz</p>
          <p className="mt-1.5 text-[17px] font-bold leading-snug">
            {today ? `Done: ${today.score}/${today.total}. See you tomorrow!` : "Keep your basics sharp"}
          </p>
        </div>
        {!account.isGuest && (
          <div className="shrink-0 text-right font-sans">
            <p className="text-[20px] font-bold leading-none">🔥 {stats.streak}</p>
            <p className="mt-1 text-[11px] text-crema">{stats.xp} XP</p>
          </div>
        )}
      </div>
      {!today && (
        <Link
          href="/quiz"
          className="mt-4 flex h-11 w-full items-center justify-center rounded-[10px] bg-cream font-sans text-[15px] font-semibold text-coffee"
        >
          Start today&apos;s quiz
        </Link>
      )}
      {!account.isGuest && stats.freezesLeft > 0 && (
        <p className="mt-3 font-sans text-[11px] text-crema">🧊 1 streak freeze ready this week</p>
      )}
    </section>
  );
}
