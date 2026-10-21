import { TrackedLink } from "@/components/Track";
import { publishedTime, type Story } from "@/lib/news";

// One news story: plain-language summary, the concept behind it, and the original source
export function StoryCard({
  story,
  cardTitle,
  pick = false,
  lane,
  children,
}: {
  story: Story;
  cardTitle?: string;
  pick?: boolean; // today's featured story: gets a badge and a coffee border
  lane?: string; // shown next to the tag in "Top stories", where lanes are mixed
  children?: React.ReactNode;
}) {
  return (
    <article
      id={`story-${story.id}`}
      className={`scroll-mt-4 rounded-[10px] border bg-foam px-4 py-4 ${pick ? "border-coffee" : "border-line"}`}
    >
      {pick && (
        <p className="mb-2 inline-block rounded-full bg-coffee px-2.5 py-0.5 font-sans text-[11px] font-semibold text-cream">
          ☕ Today&apos;s pick
        </p>
      )}
      {(story.tag || story.published_at) && (
        <p className="flex items-baseline justify-between gap-3 font-sans text-[11px]">
          <span className="font-semibold uppercase tracking-[1.5px] text-coffee">
            {lane && story.tag ? `${lane} · ${story.tag}` : (lane ?? story.tag)}
          </span>
          {story.published_at && <span className="text-mocha-2">{publishedTime(story.published_at)}</span>}
        </p>
      )}
      <h3 className="mt-1.5 text-[17px] font-bold leading-snug">{story.headline}</h3>
      <p className="mt-2 text-[15px] leading-relaxed">{story.summary}</p>

      {story.card_id && (
        <TrackedLink
          href={`/cards/${story.card_id}`}
          kind="story_concept"
          item={String(story.id)}
          className="mt-3 block rounded-[10px] border border-crema-line bg-latte px-3.5 py-3 active:bg-crema"
        >
          <span className="block font-sans text-[11px] font-semibold uppercase tracking-[1.5px] text-coffee">
            Concept behind this →
          </span>
          <span className="mt-0.5 block font-sans text-[14px] font-semibold text-espresso">{cardTitle ?? story.card_id}</span>
          {story.concept_note && <span className="mt-1 block text-[14px] leading-snug text-mocha">{story.concept_note}</span>}
        </TrackedLink>
      )}

      <TrackedLink
        href={story.source_url}
        kind="story_source"
        item={String(story.id)}
        external
        className="mt-3 inline-block font-sans text-[12px] text-mocha-2 underline underline-offset-2"
      >
        Source: {story.source_name} ↗
      </TrackedLink>
      {children}
    </article>
  );
}
