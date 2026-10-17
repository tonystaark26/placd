import Link from "next/link";
import type { Story } from "@/lib/news";

// One news story: plain-language summary, the concept behind it, and the original source
export function StoryCard({ story, cardTitle, children }: { story: Story; cardTitle?: string; children?: React.ReactNode }) {
  return (
    <article className="rounded-[10px] border border-line bg-foam px-4 py-4">
      {story.tag && (
        <p className="font-sans text-[11px] font-semibold uppercase tracking-[1.5px] text-coffee">{story.tag}</p>
      )}
      <h3 className="mt-1.5 text-[17px] font-bold leading-snug">{story.headline}</h3>
      <p className="mt-2 text-[15px] leading-relaxed">{story.summary}</p>

      {story.card_id && (
        <Link
          href={`/cards/${story.card_id}`}
          className="mt-3 block rounded-[10px] border border-crema-line bg-latte px-3.5 py-3 active:bg-crema"
        >
          <span className="block font-sans text-[11px] font-semibold uppercase tracking-[1.5px] text-coffee">
            Concept behind this →
          </span>
          <span className="mt-0.5 block font-sans text-[14px] font-semibold text-espresso">{cardTitle ?? story.card_id}</span>
          {story.concept_note && <span className="mt-1 block text-[14px] leading-snug text-mocha">{story.concept_note}</span>}
        </Link>
      )}

      <a
        href={story.source_url}
        target="_blank"
        rel="noreferrer"
        className="mt-3 inline-block font-sans text-[12px] text-mocha-2 underline underline-offset-2"
      >
        Source: {story.source_name} ↗
      </a>
      {children}
    </article>
  );
}
