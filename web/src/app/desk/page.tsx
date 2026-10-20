import type { Metadata } from "next";
import Link from "next/link";
import { Suspense } from "react";
import { AppHeader } from "@/components/AppHeader";
import { BriefLink } from "@/components/BriefLink";
import { InstallHint } from "@/components/InstallHint";
import { TodayCard } from "@/components/TodayCard";
import { SECTIONS } from "@/lib/cards";

export const metadata: Metadata = { title: "Study Desk · ChaiCase" };

function MarketingIcon() {
  return (
    <svg viewBox="0 0 32 32" className="h-8 w-8" aria-hidden="true">
      <path d="M5 13h5l12-6v18l-12-6H5z" className="fill-none stroke-coffee" strokeWidth="2" strokeLinejoin="round" />
      <path d="M10 19l2 7h3l-1-7" className="fill-none stroke-coffee" strokeWidth="2" strokeLinejoin="round" />
      <path d="M26 12q2 4 0 8" className="fill-none stroke-coffee" strokeWidth="2" strokeLinecap="round" />
    </svg>
  );
}

function FinanceIcon() {
  return (
    <svg viewBox="0 0 32 32" className="h-8 w-8" aria-hidden="true">
      <path d="M4 26h24" className="stroke-cream" strokeWidth="2" strokeLinecap="round" />
      <path d="M8 22v-5M14 22v-9M20 22v-6M26 22v-13" className="stroke-cream" strokeWidth="3" strokeLinecap="round" />
      <path d="M7 12l6-5 6 4 7-6" className="fill-none stroke-crema" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

function PeopleIcon() {
  return (
    <svg viewBox="0 0 32 32" className="h-8 w-8 shrink-0" aria-hidden="true">
      <circle cx="11" cy="11" r="4" className="fill-none stroke-coffee" strokeWidth="2" />
      <circle cx="22" cy="12" r="3.2" className="fill-none stroke-coffee" strokeWidth="2" />
      <path d="M3 26q0-8 8-8t8 8" className="fill-none stroke-coffee" strokeWidth="2" strokeLinecap="round" />
      <path d="M19 19.5q1.5-1 3-1q6 0 6 7" className="fill-none stroke-coffee" strokeWidth="2" strokeLinecap="round" />
    </svg>
  );
}

export default function StudyDesk() {
  return (
    <main className="cc-stagger mx-auto w-full max-w-md px-5 pb-14 pt-8">
      <AppHeader />

      <h1 className="mt-7 text-[30px] leading-snug">Study Desk</h1>
      <p className="mt-1 text-[15px] text-mocha">Read the news, revise a concept, then test yourself.</p>

      <Suspense fallback={<div className="mt-6 h-[260px] animate-pulse rounded-[12px] bg-crema" />}>
        <BriefLink />
      </Suspense>

      <h2 className="mt-8 font-sans text-[11px] font-semibold uppercase tracking-[2px] text-mocha-2">Concepts</h2>
      <div className="mt-3 grid grid-cols-2 gap-3">
        {SECTIONS.map((s) => {
          if (s.id === "people") {
            return (
              <Link
                key={s.id}
                href={`/learn/${s.id}`}
                className="col-span-2 flex items-center gap-4 rounded-[12px] bg-latte px-4 py-4 active:opacity-90"
              >
                <PeopleIcon />
                <span>
                  <span className="block text-[18px] font-bold leading-snug">{s.name}</span>
                  <span className="mt-1 block font-sans text-[12px] leading-snug text-mocha">{s.blurb}</span>
                </span>
              </Link>
            );
          }
          const dark = s.id === "finance";
          return (
            <Link
              key={s.id}
              href={`/learn/${s.id}`}
              className={`flex min-h-[150px] flex-col justify-between rounded-[12px] px-4 py-4 active:opacity-90 ${
                dark ? "bg-espresso text-cream" : "border border-line bg-foam"
              }`}
            >
              {dark ? <FinanceIcon /> : <MarketingIcon />}
              <span>
                <span className="block text-[18px] font-bold leading-snug">{s.name}</span>
                <span className={`mt-1 block font-sans text-[12px] leading-snug ${dark ? "text-crema" : "text-mocha"}`}>
                  {s.blurb}
                </span>
              </span>
            </Link>
          );
        })}
      </div>

      <Suspense fallback={<div className="mt-6 h-[150px] animate-pulse rounded-[12px] bg-latte" />}>
        <TodayCard />
      </Suspense>

      <InstallHint />

      <Link
        href="/leaderboard"
        className="mt-3 flex items-center justify-between gap-3 rounded-[12px] border border-line bg-foam px-4 py-3.5 active:bg-latte"
      >
        <span>
          <span className="block text-[16px] font-bold leading-snug">🏆 Leaderboard</span>
          <span className="mt-0.5 block font-sans text-[12px] text-mocha">See where you stand this week, and who to climb past</span>
        </span>
        <span className="font-sans text-[18px] text-coffee" aria-hidden="true">
          ↗
        </span>
      </Link>
    </main>
  );
}
