-- =====================================================================
-- PLACED news brief for 2026-10-18: 5 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-18.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-17 7 AM and 2026-10-18 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-18' and (slug is null or slug not in ($n$2026-10-18-hormuz-mines$n$, $n$2026-10-18-imfc-bangkok$n$, $n$2026-10-18-jio-ipo$n$, $n$2026-10-18-durga-puja-two-economies$n$, $n$2026-10-18-hdfc-bank-q2$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at)
values
($n$2026-10-18-hormuz-mines$n$, '2026-10-18', $n$global$n$, $n$OIL$n$,
  $n$Iran says two tankers hit mines in the Strait of Hormuz$n$,
  $n$On Saturday, Iran's Revolutionary Guards said two oil tankers caught fire after hitting naval mines while crossing the Strait of Hormuz, each reportedly carrying around 2 million barrels of crude. There was no independent confirmation. The strait normally carries about a fifth of the world's oil, and attacks on ships there have kept oil above $100 a barrel. For India, which imports most of its oil, every new incident raises the risk of costlier fuel and freight.$n$,
  $n$Each attack makes it harder to move oil, so less is supplied at every price: the supply curve shifts left, and the price rises even though demand hasn't changed.$n$,
  $n$AFP via Daily Tribune (also reported by Reuters)$n$, $n$https://tribune.net.ph/2026/10/17/oil-tanker-on-fire-after-hitting-mine-in-hormuz$n$, $n$econ-08$n$, 'draft',
  $n$Iran says two tankers just hit mines in the world’s most important oil lane. Here’s why India is watching.$n$,
  $n$The tankers, each said to carry around 2 million barrels, caught fire in the Strait of Hormuz, a route only about 30 km wide at its narrowest. It carries a fifth of the world’s oil, and India imports most of what it uses. One simple economics idea shows why every attack there pushes prices up.$n$, false, $n$2026-10-17T21:42:00+05:30$n$),
($n$2026-10-18-imfc-bangkok$n$, '2026-10-18', $n$global$n$, $n$IMF$n$,
  $n$IMF members call the world economy resilient, but warn of wars, debt and AI risks$n$,
  $n$At the IMF and World Bank meetings in Bangkok on Saturday, the committee that steers the IMF said the global economy is showing "remarkable resilience" but that "there is no room for complacency". Its chair, Saudi Finance Minister Mohammed Al-Jadaan, listed the risks: wars, threats to energy and food supplies, high public debt and fast-moving AI. Nearly half the delegates walked out during the Russian finance minister's speech.$n$,
  $n$These are macro-environment forces (PESTLE): political (wars), economic (debt, energy prices) and technological (AI). No single company controls them, yet every company's plans depend on them.$n$,
  $n$ThePrint (Reuters)$n$, $n$https://theprint.in/world/imfc-chair-says-global-economy-resilient-delegates-walk-out-on-russian-official/3074600/$n$, $n$mkt-05$n$, 'draft',
  $n$The world’s finance chiefs met in Bangkok, and nearly half walked out of one speech.$n$,
  $n$The IMF says the global economy is “remarkably resilient”, yet warns of wars, high debt and fast-moving AI. Behind that one sentence are the forces every company has to plan around, and the framework interviewers expect you to name.$n$, false, $n$2026-10-17T15:30:00+05:30$n$),
($n$2026-10-18-jio-ipo$n$, '2026-10-18', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms' ₹30,213-crore IPO opens Wednesday; brokerages say subscribe$n$,
  $n$Jio Platforms, Reliance's telecom and digital arm, will sell new shares worth about ₹30,213 crore at ₹1,065–1,119 each, from 21 to 23 October, with listing expected on 28 October. Most of the money, ₹27,500 crore, will repay Reliance Jio's borrowings. Brokerages including Emkay, GEPL and Ventura recommend subscribing, pointing to steady profit growth and falling capital spending: capex dropped from 48.8% of revenue in FY24 to 23.3% in FY26.$n$,
  $n$Building towers and buying spectrum is capital expenditure: it creates assets that earn for years. As that spending falls as a share of revenue, more cash is left over, which is one reason analysts like the issue.$n$,
  $n$LatestLY (ANI)$n$, $n$https://www.latestly.com/agency-news/business-news-brokerages-back-jio-platforms-ipo-cite-strong-earnings-growth-cash-flows-and-digital-expansion-7648993.html$n$, $n$acct-18$n$, 'draft',
  $n$₹30,213 crore in three days: Jio is going public, and brokerages say subscribe.$n$,
  $n$Jio Platforms opens its IPO on Wednesday at ₹1,065–1,119 a share. Analysts keep pointing to one number: its spending on towers and spectrum fell from nearly half its revenue to under a quarter in two years. Here’s why that single shift matters.$n$, false, $n$2026-10-18T14:46:00+05:30$n$),
($n$2026-10-18-durga-puja-two-economies$n$, '2026-10-18', $n$local$n$, $n$DURGA PUJA$n$,
  $n$Durga Puja's two economies: malls boom while small traders feel the pinch$n$,
  $n$This Puja, the festival economy is growing, but unevenly. Kolkata mall operator Primarc Projects reported 17% more footfall in the 45 days before the festival, and big puja committees say advertising rates are up at least 20%. Meanwhile about 30% of outdoor ad slots at smaller pujas stayed empty, and hawkers in Burrabazar, Hatibagan and Shyambazar report shrinking margins. Traders' associations blame deep online discounts for pulling buyers away.$n$,
  $n$Buyers no longer go straight from need to the nearest shop: they search online, compare prices and chase discounts first. When the decision process changes, where the money goes changes too.$n$,
  $n$The Morning Voice$n$, $n$https://tmv.in/article/durga-puja-economy-expands-but-small-traders-feel-the-pinch$n$, $n$mkt-08$n$, 'draft',
  $n$This Puja, the malls are busier, while the hawkers of Hatibagan are squeezed.$n$,
  $n$Same festival, same crowds, two very different Pujas. Mall footfall jumped 17% before the festival, while hawkers in Hatibagan, Burrabazar and Shyambazar say their margins are shrinking. Here's where the Puja money is really going, and the one marketing idea that explains it.$n$, true, $n$2026-10-18T00:00:00+05:30$n$),
($n$2026-10-18-hdfc-bank-q2$n$, '2026-10-18', $n$recruiter$n$, $n$BANKING$n$,
  $n$HDFC Bank's profit rises 4.7% as bad loans fall$n$,
  $n$HDFC Bank, India's largest private bank and a major campus recruiter, reported a standalone net profit of ₹19,510 crore for July–September, up 4.7% from a year ago. Net interest income, what it earns on loans minus what it pays on deposits, rose 9.7% to ₹34,619 crore. Deposits grew 18.8% and loans 16.3%. Gross bad loans fell to 1.11% of loans, but profit growth was held back by a 67% drop in treasury trading gains, to ₹780 crore.$n$,
  $n$Each figure has a home in the statements: net interest income and profit in the profit and loss statement; deposits (what the bank owes) and loans (what it is owed) in the balance sheet.$n$,
  $n$Business Standard$n$, $n$https://www.business-standard.com/companies/quarterly-results/hdfc-bank-q2fy27-result-net-profit-rises-4-7-to-19-510-cr-nii-up-9-7-126101700465_1.html$n$, $n$acct-10$n$, 'draft',
  $n$India’s biggest private bank earned ₹19,510 crore in three months, yet its profit grew only 4.7%.$n$,
  $n$HDFC Bank’s deposits and loans grew 16–19%, and bad loans fell. So why did profit barely move? The answer hides in one line of its statements, and it’s exactly the kind of question a bank interviewer asks.$n$, false, $n$2026-10-17T15:36:00+05:30$n$)
on conflict (slug) do update set
  publish_date = excluded.publish_date, lane = excluded.lane, tag = excluded.tag,
  headline = excluded.headline, summary = excluded.summary, concept_note = excluded.concept_note,
  source_name = excluded.source_name, source_url = excluded.source_url, card_id = excluded.card_id,
  published_at = excluded.published_at,
  -- the pick and teaser only fill in blanks, so changes made on the approval page are kept
  teaser_title = coalesce(news_stories.teaser_title, excluded.teaser_title),
  teaser = coalesce(news_stories.teaser, excluded.teaser),
  featured = news_stories.featured or (excluded.featured and not exists (
    select 1 from news_stories f where f.publish_date = excluded.publish_date and f.featured));

-- Check: this day's stories by lane
select lane, count(*) as stories, count(*) filter (where status = 'approved') as approved,
  count(*) filter (where featured) as todays_pick
from news_stories where publish_date = '2026-10-18' group by lane order by lane;
