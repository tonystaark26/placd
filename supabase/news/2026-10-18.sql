-- =====================================================================
-- PLACED news brief for 2026-10-18: 10 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-18.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-17 7 AM and 2026-10-18 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-18' and (slug is null or slug not in ($n$2026-10-18-us-tariff-waiver$n$, $n$2026-10-18-jio-ipo$n$, $n$2026-10-18-hormuz-mines$n$, $n$2026-10-18-hdfc-bank-q2$n$, $n$2026-10-18-icici-bank-q2$n$, $n$2026-10-18-durga-puja-two-economies$n$, $n$2026-10-18-axis-bank-q2$n$, $n$2026-10-18-idbi-bank-q2$n$, $n$2026-10-18-space-economy$n$, $n$2026-10-18-imfc-bangkok$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-18-us-tariff-waiver$n$, '2026-10-18', $n$india$n$, $n$TRADE$n$,
  $n$US suspends up-to-100% tariffs aimed at India and other buyers of Russian oil$n$,
  $n$The US has suspended the tariffs of up to 100% it was about to impose on goods from the five biggest buyers of Russian oil and gas, including India and China. President Trump signed the waiver on Friday night, US time, just before the measures were due, citing the national interest after a US-Russia arrangement on diesel supplies. The tariffs are suspended, not scrapped, so they could return, and other US tariffs on Indian goods still apply. US Secretary of State Marco Rubio is scheduled to visit India from 17 to 22 October.$n$,
  $n$A tariff raises the price US buyers pay for Indian goods. How much sales fall depends on price elasticity: where buyers can easily switch to another country’s products, demand is elastic, and a tariff that large could wipe out orders.$n$,
  $n$News Karnataka (PTI)$n$, $n$https://newskarnataka.com/india/trump-waives-proposed-tariffs-on-india-over-russian-oil/17102026/$n$, $n$econ-03$n$, 'draft',
  $n$Tariffs of up to 100% on Indian goods were about to hit. Then came a Friday-night waiver.$n$,
  $n$The US has suspended tariffs aimed at the biggest buyers of Russian oil, including India, just before they were due. But it’s a pause, not a pardon. Here’s what was at stake for Indian exporters, and the economics idea that explains why it mattered so much.$n$, false, $n$2026-10-17T13:46:00+05:30$n$, 1),
($n$2026-10-18-jio-ipo$n$, '2026-10-18', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms' ₹30,213-crore IPO opens Wednesday; brokerages say subscribe$n$,
  $n$Jio Platforms, Reliance's telecom and digital arm, will sell new shares worth about ₹30,213 crore at ₹1,065–1,119 each, from 21 to 23 October, with listing expected on 28 October. Most of the money, ₹27,500 crore, will repay Reliance Jio's borrowings. Brokerages including Emkay, GEPL and Ventura recommend subscribing, pointing to steady profit growth and falling capital spending: capex dropped from 48.8% of revenue in FY24 to 23.3% in FY26.$n$,
  $n$Building towers and buying spectrum is capital expenditure: it creates assets that earn for years. As that spending falls as a share of revenue, more cash is left over, which is one reason analysts like the issue.$n$,
  $n$LatestLY (ANI)$n$, $n$https://www.latestly.com/agency-news/business-news-brokerages-back-jio-platforms-ipo-cite-strong-earnings-growth-cash-flows-and-digital-expansion-7648993.html$n$, $n$acct-18$n$, 'draft',
  $n$₹30,213 crore in three days: Jio is going public, and brokerages say subscribe.$n$,
  $n$Jio Platforms opens its IPO on Wednesday at ₹1,065–1,119 a share. Analysts keep pointing to one number: its spending on towers and spectrum fell from nearly half its revenue to under a quarter in two years. Here’s why that single shift matters.$n$, true, $n$2026-10-18T14:46:00+05:30$n$, 2),
($n$2026-10-18-hormuz-mines$n$, '2026-10-18', $n$global$n$, $n$OIL$n$,
  $n$Iran says two tankers hit mines in the Strait of Hormuz$n$,
  $n$On Saturday, Iran's Revolutionary Guards said two oil tankers caught fire after hitting naval mines while crossing the Strait of Hormuz, each reportedly carrying around 2 million barrels of crude. There was no independent confirmation. The strait normally carries about a fifth of the world's oil, and attacks on ships there have kept oil above $100 a barrel. For India, which imports most of its oil, every new incident raises the risk of costlier fuel and freight.$n$,
  $n$Each attack makes it harder to move oil, so less is supplied at every price: the supply curve shifts left, and the price rises even though demand hasn't changed.$n$,
  $n$AFP via Daily Tribune (also reported by Reuters)$n$, $n$https://tribune.net.ph/2026/10/17/oil-tanker-on-fire-after-hitting-mine-in-hormuz$n$, $n$econ-08$n$, 'draft',
  $n$Iran says two tankers just hit mines in the world’s most important oil lane. Here’s why India is watching.$n$,
  $n$The tankers, each said to carry around 2 million barrels, caught fire in the Strait of Hormuz, a route only about 30 km wide at its narrowest. It carries a fifth of the world’s oil, and India imports most of what it uses. One simple economics idea shows why every attack there pushes prices up.$n$, false, $n$2026-10-17T21:42:00+05:30$n$, 3),
($n$2026-10-18-hdfc-bank-q2$n$, '2026-10-18', $n$recruiter$n$, $n$BANKING$n$,
  $n$HDFC Bank's profit rises 4.7% as bad loans fall$n$,
  $n$HDFC Bank, India's largest private bank and a major campus recruiter, reported a standalone net profit of ₹19,510 crore for July–September, up 4.7% from a year ago. Net interest income, what it earns on loans minus what it pays on deposits, rose 9.7% to ₹34,619 crore. Deposits grew 18.8% and loans 16.3%. Gross bad loans fell to 1.11% of loans, but profit growth was held back by a 67% drop in treasury trading gains, to ₹780 crore.$n$,
  $n$Each figure has a home in the statements: net interest income and profit in the profit and loss statement; deposits (what the bank owes) and loans (what it is owed) in the balance sheet.$n$,
  $n$Business Standard$n$, $n$https://www.business-standard.com/companies/quarterly-results/hdfc-bank-q2fy27-result-net-profit-rises-4-7-to-19-510-cr-nii-up-9-7-126101700465_1.html$n$, $n$acct-10$n$, 'draft',
  $n$India’s biggest private bank earned ₹19,510 crore in three months, yet its profit grew only 4.7%.$n$,
  $n$HDFC Bank’s deposits and loans grew 16–19%, and bad loans fell. So why did profit barely move? The answer hides in one line of its statements, and it’s exactly the kind of question a bank interviewer asks.$n$, false, $n$2026-10-17T15:36:00+05:30$n$, 4),
($n$2026-10-18-icici-bank-q2$n$, '2026-10-18', $n$recruiter$n$, $n$BANKING$n$,
  $n$ICICI Bank’s profit rises 20% as bad loans keep falling$n$,
  $n$ICICI Bank, one of the biggest recruiters in Indian banking, reported a net profit of ₹14,843 crore for July–September, up 20% from a year ago. Net interest income rose 17.7% to ₹25,339 crore, and fee income grew 20%. Bad loans kept falling: gross NPAs dropped to 1.20% of loans from 1.58% a year ago. One soft spot: its net interest margin slipped to 4.18% from 4.36% in the previous quarter.$n$,
  $n$Banks set money aside as provisions for loans that may not be repaid. ICICI’s provisions were just ₹851 crore this quarter, and it still holds ₹13,100 crore of extra contingency provisions: a cushion recorded before any loss actually happens.$n$,
  $n$Business Today$n$, $n$https://www.businesstoday.in/markets/stocks/story/icici-bank-q2-results-net-profit-jumps-20-to-rs-14843-crore-nim-contracts-562250-2026-10-17$n$, $n$acct-19$n$, 'draft',
  $n$ICICI Bank’s profit grew 20%, about four times faster than HDFC Bank’s. Same industry, same quarter.$n$,
  $n$Both banks reported on Saturday. ICICI earned ₹14,843 crore as bad loans fell and fees jumped 20%. Comparing the two is a ready-made interview question. Here’s what’s driving ICICI’s numbers, and the accounting idea behind them.$n$, false, $n$2026-10-17T16:06:00+05:30$n$, 5),
($n$2026-10-18-durga-puja-two-economies$n$, '2026-10-18', $n$local$n$, $n$DURGA PUJA$n$,
  $n$Durga Puja's two economies: malls boom while small traders feel the pinch$n$,
  $n$This Puja, the festival economy is growing, but unevenly. Kolkata mall operator Primarc Projects reported 17% more footfall in the 45 days before the festival, and big puja committees say advertising rates are up at least 20%. Meanwhile about 30% of outdoor ad slots at smaller pujas stayed empty, and hawkers in Burrabazar, Hatibagan and Shyambazar report shrinking margins. Traders' associations blame deep online discounts for pulling buyers away.$n$,
  $n$Buyers no longer go straight from need to the nearest shop: they search online, compare prices and chase discounts first. When the decision process changes, where the money goes changes too.$n$,
  $n$The Morning Voice$n$, $n$https://tmv.in/article/durga-puja-economy-expands-but-small-traders-feel-the-pinch$n$, $n$mkt-08$n$, 'draft',
  $n$This Puja, the malls are busier, while the hawkers of Hatibagan are squeezed.$n$,
  $n$Same festival, same crowds, two very different Pujas. Mall footfall jumped 17% before the festival, while hawkers in Hatibagan, Burrabazar and Shyambazar say their margins are shrinking. Here's where the Puja money is really going, and the one marketing idea that explains it.$n$, false, $n$2026-10-18T00:00:00+05:30$n$, 6),
($n$2026-10-18-axis-bank-q2$n$, '2026-10-18', $n$recruiter$n$, $n$BANKING$n$,
  $n$Axis Bank’s profit jumps 38%, helped by lower provisions$n$,
  $n$Axis Bank’s net profit rose 38% to ₹7,003 crore in July–September, helped mainly by setting aside less for bad loans: provisions were ₹1,694 crore. Loans grew 23% and deposits 21%, and gross NPAs eased to 1.16%. Even so, reports say profit came in slightly below what analysts expected. The bank also holds ₹8,006 crore of extra provisions beyond what its capital ratios count.$n$,
  $n$Conservatism: anticipate losses, don’t anticipate profits. Axis’s ₹8,006 crore of extra provisions is that convention in action, and when fewer loans go bad, smaller provisions flow straight into profit.$n$,
  $n$Business Upturn$n$, $n$https://businessupturn.com/business/axis-bank-reports-rs7-003-crore-net-profit-for-second-quarter-of-fy27/$n$, $n$acct-13$n$, 'draft',
  $n$Axis Bank’s profit jumped 38%, and the biggest reason wasn’t more business.$n$,
  $n$Loans and deposits grew over 20%, but a big boost came from setting aside less money for bad loans. Profit still fell slightly short of what analysts expected. Here’s how a cautious accounting habit shapes a bank’s bottom line.$n$, false, $n$2026-10-17T13:15:00+05:30$n$, 7),
($n$2026-10-18-idbi-bank-q2$n$, '2026-10-18', $n$india$n$, $n$BANKING$n$,
  $n$IDBI Bank’s profit falls 39%, but only because of last year’s one-off gain$n$,
  $n$IDBI Bank’s net profit fell 39% to ₹2,206 crore in July–September. But the drop is mostly about last year: profit a year ago included a one-time gain of ₹1,699 crore from selling its stake in NSDL. Leave that out, and profit actually grew 14%. Net interest income rose 28.7% to ₹4,227 crore.$n$,
  $n$Selling a long-term investment like the NSDL stake is a capital receipt: a one-off, not part of regular earnings. Analysts strip such items out to see whether the business itself is growing.$n$,
  $n$The Hans India (IANS)$n$, $n$https://www.thehansindia.com/business/idbi-bank-q2-net-profit-declines-39-pc-in-fy27-1133282$n$, $n$acct-18$n$, 'draft',
  $n$IDBI Bank’s profit crashed 39%. Look closer, and it actually grew.$n$,
  $n$A year ago, a one-time windfall from selling its NSDL stake made profits look bigger. Remove it, and this quarter’s profit is up 14%. Spotting one-offs like this is a classic interview test, and here’s how to do it.$n$, false, $n$2026-10-17T16:42:00+05:30$n$, 8),
($n$2026-10-18-space-economy$n$, '2026-10-18', $n$india$n$, $n$SPACE$n$,
  $n$India’s space economy could grow five-fold to $40–45 billion in 7–8 years, says minister$n$,
  $n$India’s space economy, about $9 billion today, could grow to $40–45 billion within seven to eight years, Minister of State Jitendra Singh said on Saturday. Speaking at a Bloomberg New Economy Forum roundtable in New Delhi, he said more private investment, faster licence approvals and government agencies acting as anchor customers are key. He named satellite communications, Earth observation and geospatial services as growth areas.$n$,
  $n$Sizing a market, $9 billion today and $40–45 billion tomorrow, is market measurement. Firms use such estimates to decide whether a market is worth entering, but every forecast rests on assumptions worth questioning.$n$,
  $n$The Tribune (ANI)$n$, $n$https://www.tribuneindia.com/news/business/indias-space-economy-may-reach-usd-40-45-billion-in-7-8-years-private-investment-key-jitendra-singh$n$, $n$mkt-10$n$, 'draft',
  $n$India’s space business is worth about $9 billion. The government says it can be five times bigger within eight years.$n$,
  $n$Satellites for farming, maps for disaster relief, internet from space: the minister listed where the growth will come from, and what private firms need to get there. Here’s how markets like this are sized, and why interviewers love asking you to do it.$n$, false, $n$2026-10-17T20:21:00+05:30$n$, 9),
($n$2026-10-18-imfc-bangkok$n$, '2026-10-18', $n$global$n$, $n$IMF$n$,
  $n$IMF members call the world economy resilient, but warn of wars, debt and AI risks$n$,
  $n$At the IMF and World Bank meetings in Bangkok on Saturday, the committee that steers the IMF said the global economy is showing "remarkable resilience" but that "there is no room for complacency". Its chair, Saudi Finance Minister Mohammed Al-Jadaan, listed the risks: wars, threats to energy and food supplies, high public debt and fast-moving AI. Nearly half the delegates walked out during the Russian finance minister's speech.$n$,
  $n$These are macro-environment forces (PESTLE): political (wars), economic (debt, energy prices) and technological (AI). No single company controls them, yet every company's plans depend on them.$n$,
  $n$ThePrint (Reuters)$n$, $n$https://theprint.in/world/imfc-chair-says-global-economy-resilient-delegates-walk-out-on-russian-official/3074600/$n$, $n$mkt-05$n$, 'draft',
  $n$The world’s finance chiefs met in Bangkok, and nearly half walked out of one speech.$n$,
  $n$The IMF says the global economy is “remarkably resilient”, yet warns of wars, high debt and fast-moving AI. Behind that one sentence are the forces every company has to plan around, and the framework interviewers expect you to name.$n$, false, $n$2026-10-17T15:30:00+05:30$n$, 10)
on conflict (slug) do update set
  publish_date = excluded.publish_date, lane = excluded.lane, tag = excluded.tag,
  headline = excluded.headline, summary = excluded.summary, concept_note = excluded.concept_note,
  source_name = excluded.source_name, source_url = excluded.source_url, card_id = excluded.card_id,
  published_at = excluded.published_at, rank = excluded.rank,
  -- the pick and teaser only fill in blanks, so changes made on the approval page are kept
  teaser_title = coalesce(news_stories.teaser_title, excluded.teaser_title),
  teaser = coalesce(news_stories.teaser, excluded.teaser),
  featured = news_stories.featured or (excluded.featured and not exists (
    select 1 from news_stories f where f.publish_date = excluded.publish_date and f.featured));

-- Check: this day's stories by lane
select lane, count(*) as stories, count(*) filter (where status = 'approved') as approved,
  count(*) filter (where featured) as todays_pick
from news_stories where publish_date = '2026-10-18' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-18' order by rank;
