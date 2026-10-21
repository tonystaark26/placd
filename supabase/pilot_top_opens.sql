-- =====================================================================
-- ChaiCase pilot: what students open most
--
-- Read-only: it changes nothing, so run it as often as you like.
-- Supabase → SQL Editor → New snippet → paste all of this → Run.
--
-- One list: the 15 most-opened cards, then the 10 stories whose
-- "Concept behind this" link was tapped most. "People" counts each
-- student once. Set the date below to the pilot's first day, the same
-- as in pilot_numbers.sql.
-- =====================================================================

with settings as (
  select date '2026-10-26' as start_day
),
pilot_opens as (
  select o.*
  from opens o, settings s
  where o.opened_on >= s.start_day
    and o.user_id not in (select user_id from admins)
),
top_cards as (
  select 'Card' as what, c.title as name, count(distinct o.user_id) as people
  from pilot_opens o
  join concept_cards c on c.id = o.item_id
  where o.kind = 'card'
  group by c.title
  order by people desc, name
  limit 15
),
top_links as (
  select 'Story → concept' as what, n.headline as name, count(distinct o.user_id) as people
  from pilot_opens o
  join news_stories n on n.id::text = o.item_id
  where o.kind = 'story_concept'
  group by n.headline
  order by people desc, name
  limit 10
)
select what, name, people
from (
  select 1 as grp, * from top_cards
  union all
  select 2 as grp, * from top_links
) t
order by grp, people desc, name;
