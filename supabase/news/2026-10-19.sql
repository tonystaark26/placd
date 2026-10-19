-- =====================================================================
-- ChaiCase news brief for 2026-10-19: 10 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-19.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-18 7 AM and 2026-10-19 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-19' and (slug is null or slug not in ($n$2026-10-19-jio-anchor-book$n$, $n$2026-10-19-fuel-prices-omc-losses$n$, $n$2026-10-19-rubio-trade-deal$n$, $n$2026-10-19-oil-eases-hormuz$n$, $n$2026-10-19-china-q3-gdp$n$, $n$2026-10-19-ultratech-q2$n$, $n$2026-10-19-hindustan-zinc-q2$n$, $n$2026-10-19-markets-open-flat$n$, $n$2026-10-19-union-bank-q2$n$, $n$2026-10-19-fortune-puja-campaign$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-19-jio-anchor-book$n$, '2026-10-19', $n$india$n$, $n$IPO$n$,
  $n$Jio IPO's anchor book draws bids worth about 30 times the shares on offer$n$,
  $n$Big institutions have rushed for Jio Platforms' shares before the IPO opens to the public on Wednesday. Bids from anchor investors reportedly reached nearly ₹2.5 lakh crore, more than 30 times the ₹8,110 crore set aside for them, from names like BlackRock, Fidelity, LIC and all of India's top 10 mutual fund houses; Reuters put the bids at about $25 billion. These are reported bids, and final allotments come later. The ₹30,213-crore issue is priced at ₹1,065–1,119 a share and closes on 23 October.$n$,
  $n$At a fixed price band, demand far beyond the shares available is excess demand: a shortage at that price. That's why heavily oversubscribed shares often list above their issue price.$n$,
  $n$IPO Guru (citing Fortune India, Moneycontrol and Reuters)$n$, $n$https://www.ipoguru.in/news/jio-platforms-ipo-anchor-book-30x-demand-8110-crore$n$, $n$econ-09$n$, 'draft',
  $n$Investors asked for 30 times more Jio shares than were on offer, and the IPO hasn't even opened.$n$,
  $n$Before ordinary investors get a chance on Wednesday, some of the world's biggest funds have already queued up for India's largest IPO. What happens when demand is 30 times the supply at a fixed price? The answer is a basic economics idea, and it tells you what to watch on listing day.$n$, false, $n$2026-10-19T16:35:00+05:30$n$, 1),
($n$2026-10-19-fuel-prices-omc-losses$n$, '2026-10-19', $n$india$n$, $n$FUEL$n$,
  $n$Petrol stays at ₹113.51 in Kolkata even as state oil companies lose up to ₹30 a litre$n$,
  $n$Petrol and diesel prices were unchanged again on Monday: ₹113.51 and ₹99.82 a litre in Kolkata, ₹102.12 and ₹95.20 in Delhi, despite Brent crude near $108. State-run retailers Indian Oil, BPCL and HPCL are absorbing the gap; a Jefferies estimate puts their losses at about ₹26 a litre on petrol and ₹30 on diesel. Crude eased slightly on Monday after the US waived some Russia-related sanctions and tariffs.$n$,
  $n$Fuel demand is price-inelastic: people still need to commute and move goods, so higher prices barely cut usage. That makes price hikes painful for households, which is why pump prices are often held steady while companies take the hit.$n$,
  $n$Business Today$n$, $n$https://www.businesstoday.in/india/story/petrol-diesel-prices-today-october-19-check-latest-rates-in-delhi-mumbai-chennai-kolkata-more-562324-2026-10-19$n$, $n$econ-03$n$, 'draft',
  $n$Crude is above $100, yet your petrol price hasn't moved. Someone is paying the difference.$n$,
  $n$Kolkata's petrol is still ₹113.51 a litre, while India's state oil companies lose up to ₹30 on every litre of diesel, by one estimate. Who's absorbing the cost, how long can they keep it up, and what does an economics idea called 'inelastic demand' have to do with it?$n$, true, $n$2026-10-19T09:04:00+05:30$n$, 2),
($n$2026-10-19-rubio-trade-deal$n$, '2026-10-19', $n$india$n$, $n$TRADE$n$,
  $n$Rubio says the US is 'very close' to a trade deal with India$n$,
  $n$US Secretary of State Marco Rubio said Washington is trying to finalise a trade deal with India and is "very close to doing that". Speaking in Samarkand, Uzbekistan, before arriving in India, he called India an important partner but noted it still gets a substantial amount of energy from Russia. He meets External Affairs Minister S. Jaishankar in Mumbai on Tuesday, with trade, energy and defence on the agenda, and is also scheduled to visit Jamnagar, home to one of the world's largest refining complexes.$n$,
  $n$Every choice has a cost. Cheaper Russian oil helps India's import bill, but it can complicate access to the US market. Weighing what you give up against what you gain is opportunity cost, at the scale of a country.$n$,
  $n$India TV News$n$, $n$https://www.indiatvnews.com/news/world/every-country-has-complex-set-of-factors-rubio-says-us-close-to-finalising-trade-deal-with-india-2026-10-19-1057339$n$, $n$econ-06$n$, 'draft',
  $n$America says a trade deal with India is 'very close'. One question still hangs over it: Russian oil.$n$,
  $n$Rubio meets Jaishankar in Mumbai this week as Washington weighs India's energy ties with Russia. Here's what each side wants, what India might have to give up, and the economics idea every trade negotiation comes down to.$n$, false, $n$2026-10-19T11:11:00+05:30$n$, 3),
($n$2026-10-19-oil-eases-hormuz$n$, '2026-10-19', $n$global$n$, $n$OIL$n$,
  $n$Oil eases from a five-month high, but Hormuz keeps supply tight$n$,
  $n$Brent crude fell about 1.3% to around $108 a barrel on Monday after closing at its highest level since May on Friday, partly on hopes of more supply after the US waived some Russia-related sanctions. The Strait of Hormuz remains the big risk: Iran's Revolutionary Guards said a tanker hit a naval mine and exploded there on Sunday, and Kpler data shows Gulf crude flows fell to about 8.5 million barrels a day last week, from more than 20 million the week before.$n$,
  $n$Two forces are pulling on supply at once: the Russia waiver could add oil (supply shifts right), while Hormuz attacks take it away (supply shifts left). The price settles where the stronger force wins.$n$,
  $n$Rallies.ai (Reuters report, Kpler data)$n$, $n$https://rallies.ai/news/oil-slips-from-five-month-high-with-hormuz-transits-in-focus-4d26059c675f4c34$n$, $n$econ-08$n$, 'draft',
  $n$Oil dipped on Monday. But another tanker exploded in Hormuz on Sunday, and Gulf oil shipments have more than halved.$n$,
  $n$Brent slipped from a five-month high after a US sanctions waiver hinted at more supply. Yet the world's key oil lane moved less than half of what it did a week earlier. Here's the tug-of-war setting the price of the fuel in your bus.$n$, false, $n$2026-10-19T00:00:00+05:30$n$, 4),
($n$2026-10-19-china-q3-gdp$n$, '2026-10-19', $n$global$n$, $n$CHINA$n$,
  $n$China's economy grows 4.5% in July–September, beating forecasts$n$,
  $n$China's GDP grew 4.5% from a year earlier in the third quarter, faster than 4.3% in the previous quarter and above economists' 4.4% forecast. Over the first nine months, growth was 4.6%, within Beijing's 4.5–5% target for the year. Exports have been the main engine: goods trade jumped 27.5% in September alone, while retail sales of consumer goods grew just 1.1% in the first nine months. Reuters notes the export boom faces pressure from cooling AI-related investment and trade tensions with the EU.$n$,
  $n$Growth means a country's production possibility frontier moving outward. China's is moving, but mostly because the world is buying its goods, not because its own people are spending more.$n$,
  $n$Xinhua (also reported by Reuters and Bloomberg)$n$, $n$https://english.news.cn/20261019/6c02c8b4fcdb48f9b6a043076673c046/c.html$n$, $n$econ-07$n$, 'draft',
  $n$China beat expectations again. Look at what's driving it, and it's not Chinese shoppers.$n$,
  $n$The world's second-largest economy grew 4.5% last quarter, powered by exports while consumer spending barely grew. For India, which competes with China for factories and export orders, that matters. Here's how to read a growth number like an economist.$n$, false, $n$2026-10-19T00:00:00+05:30$n$, 5),
($n$2026-10-19-ultratech-q2$n$, '2026-10-19', $n$recruiter$n$, $n$CEMENT$n$,
  $n$UltraTech Cement's profit rises 21% on higher volumes$n$,
  $n$UltraTech Cement, India's largest cement maker and part of the Aditya Birla group, reported a consolidated net profit of ₹1,501 crore for July–September, up 21% from a year ago. Revenue rose 19% to ₹23,295 crore, which the company linked to higher production volumes and steady demand from infrastructure and housing. Profit was lower than in the April–June quarter, which reports put down to the monsoon and the West Asia crisis.$n$,
  $n$When governments build roads and people buy homes, the demand for cement rises at every price: the whole demand curve shifts right. That's a change in demand, not just a movement along the curve.$n$,
  $n$Equity Bulls$n$, $n$https://www.equitybulls.com/news/377218/ultratech-cement-reports-q2-fy27-consolidated-net-profit-of-1-501-crore-top-line$n$, $n$econ-02$n$, 'draft',
  $n$Every new road and flat needs cement. UltraTech's 21% profit jump shows how much India is building.$n$,
  $n$India's biggest cement maker grew revenue 19% this quarter on higher volumes, even through the monsoon. Here's what its numbers say about infrastructure and housing, and why cement shows up so often in consulting and finance interviews.$n$, false, $n$2026-10-19T14:41:00+05:30$n$, 6),
($n$2026-10-19-hindustan-zinc-q2$n$, '2026-10-19', $n$india$n$, $n$METALS$n$,
  $n$Hindustan Zinc posts record profit as metal prices and silver output climb$n$,
  $n$Vedanta-controlled Hindustan Zinc reported a record quarterly net profit of ₹6,412 crore for July–September, up 142% from a year ago, on revenue of ₹15,093 crore, up 77%. Its EBITDA margin reached 62%. The company credited higher metal prices, more production (silver output rose 20% to 173 tonnes) and better prices for its by-products.$n$,
  $n$Revenue rose 77% but profit rose 142%: costs didn't rise as fast as sales, so more of each rupee reached the bottom line. Reading the statements from revenue down to profit shows where that extra money came from.$n$,
  $n$TaxGuru$n$, $n$https://taxguru.in/finance/business/hindustan-zinc-reports-record-profit-and-revenue-for-q2-and-h1-fy27.html$n$, $n$acct-10$n$, 'draft',
  $n$Hindustan Zinc's revenue rose 77%. Its profit rose 142%. How does profit outrun sales?$n$,
  $n$A record quarter, a 62% margin and a 20% jump in silver output. The gap between those two growth numbers is one of the most useful things to understand about any company's results, and interviewers know it.$n$, false, $n$2026-10-19T00:00:00+05:30$n$, 7),
($n$2026-10-19-markets-open-flat$n$, '2026-10-19', $n$india$n$, $n$MARKETS$n$,
  $n$Markets open flat as high oil offsets strong bank results$n$,
  $n$The Sensex and Nifty opened almost unchanged on Monday, at 74,849 and 23,151, after the Nifty gained 2.8% last week. PSU bank shares rose over 1%, while private banks and IT stocks slipped. Analysts said strong bank results support the market, but Brent crude near $109 on Hormuz tensions is a strong headwind. Foreign investors turned buyers on Friday after 15 straight sessions of selling. Markets are closed on Tuesday for Dussehra.$n$,
  $n$Oil prices, foreign investor flows and global markets are macro-environment forces. No company controls them, yet they move every share price on the screen.$n$,
  $n$LatestLY (IANS)$n$, $n$https://www.latestly.com/india/news/stock-market-today-sensex-nifty-open-flat-amid-mixed-global-cues-7649526.html$n$, $n$mkt-05$n$, 'draft',
  $n$Strong bank results pull the market up, expensive oil pulls it down. On Monday, it was a draw.$n$,
  $n$The Sensex and Nifty barely moved at Monday's open as two big forces cancelled out, and foreign investors have just stopped selling after 15 days in a row. Here's how to read a market day in one minute, the way an interviewer expects you to.$n$, false, $n$2026-10-19T10:01:00+05:30$n$, 8),
($n$2026-10-19-union-bank-q2$n$, '2026-10-19', $n$recruiter$n$, $n$BANKING$n$,
  $n$Union Bank of India's loans grow nearly three times faster than its deposits$n$,
  $n$Union Bank of India, a major public-sector bank, reported a net profit of ₹5,537 crore for July–September, up 3.8% from the April–June quarter; profit for the first half of the year rose 30% from a year earlier to ₹10,870 crore. Its loans grew 18.5% from a year ago, while deposits grew just 6.9%. Bad loans kept falling: gross NPAs dropped to 2.42% of loans.$n$,
  $n$For a bank, deposits are liabilities and loans are assets. When loans grow much faster than deposits, the gap has to be funded some other way, because the accounting equation, assets = liabilities + capital, always balances.$n$,
  $n$Equity Bulls$n$, $n$https://www.equitybulls.com/news/377208/union-bank-of-india-reports-q2-fy27-net-profit-of-5-537-crore-advances-surge-18$n$, $n$acct-09$n$, 'draft',
  $n$Union Bank's loans grew nearly three times faster than its deposits. Where's the money coming from?$n$,
  $n$Profit is up and bad loans are down at one of India's biggest public-sector banks. But one gap in its balance sheet tells a bigger story about Indian banking right now, and about the most basic equation in accounting.$n$, false, $n$2026-10-19T14:16:00+05:30$n$, 9),
($n$2026-10-19-fortune-puja-campaign$n$, '2026-10-19', $n$local$n$, $n$DURGA PUJA$n$,
  $n$Fortune turns 3,000 oil jars into a Rajbari for Durga Puja in Kolkata$n$,
  $n$Edible-oil brand Fortune, from AWL Agri Business, has built a Rajbari-style installation at Deshapriya Park using more than 3,000 Fortune jars and packs, part of a Durga Puja campaign across Kolkata and West Bengal. The campaign also includes murals made from rice, dal and poha at Badamtala Ashar Sangha, over 47,000 sq ft of outdoor ads at Ultadanga and Ruby, a #PujoTeAmiEtaKori contest, and a drive to bring the festival to more than 3,000 children and elderly people. "West Bengal is an extremely important market for Fortune," said joint president Mukesh Mishra.$n$,
  $n$Cooking oil is a habitual purchase: low involvement, few differences between brands, bought out of routine. For such products, brands win by staying familiar and visible, which is exactly what a pandal installation does.$n$,
  $n$MediaBrief$n$, $n$https://mediabrief.com/fortune-launches-360-degree-durga-puja-campaign-across-west-bengal/$n$, $n$mkt-07$n$, 'draft',
  $n$A cooking-oil brand built a Rajbari out of 3,000 oil jars at Deshapriya Park. There's a marketing reason.$n$,
  $n$Fortune's Durga Puja campaign spans murals of rice and dal, giant hoardings and community drives across Bengal. Why would a cooking-oil brand spend on pandals instead of discounts? The answer is a buying-behaviour idea every marketing interviewer loves.$n$, false, $n$2026-10-19T00:00:00+05:30$n$, 10)
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
from news_stories where publish_date = '2026-10-19' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-19' order by rank;
