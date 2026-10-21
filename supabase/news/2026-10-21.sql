-- =====================================================================
-- ChaiCase news brief for 2026-10-21: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-21.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-20 7 AM and 2026-10-21 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-21' and (slug is null or slug not in ($n$2026-10-21-jio-ipo-anchor-book$n$, $n$2026-10-21-us-india-trade-deal-close$n$, $n$2026-10-21-oil-iran-reports$n$, $n$2026-10-21-india-nz-fta$n$, $n$2026-10-21-gm-costs-buyback$n$, $n$2026-10-21-wall-street-healthcare$n$, $n$2026-10-21-netflix-weak-forecast$n$, $n$2026-10-21-spacex-first-results$n$, $n$2026-10-21-3m-amazon-warrant$n$, $n$2026-10-21-rbi-samvad-stability$n$, $n$2026-10-21-hasbro-magic$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-21-jio-ipo-anchor-book$n$, '2026-10-21', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms raises ₹8,110 crore from anchor investors as India's biggest IPO opens today$n$,
  $n$Jio Platforms allotted shares worth ₹8,109.85 crore to 212 anchor investors at ₹1,119 each, the top of its ₹1,065–1,119 price band, according to an exchange filing late on Monday. Reported institutional bids topped ₹2.5 lakh crore, more than 30 times what was on offer, with LIC getting about ₹500 crore. The ₹30,213-crore IPO is entirely a fresh issue of 27 crore shares; it opens to the public on 21 October, closes on 23 October and is set to list on 28 October. One lot is 12 shares, so retail investors need at least ₹13,428 at the top of the band. Up to ₹27,500 crore of the money will go towards repaying Reliance Jio Infocomm's borrowings.$n$,
  $n$With the price fixed at ₹1,119, institutions wanted more than 30 times the shares set aside for them. That gap between quantity demanded and quantity supplied at a set price is a shortage, which is why allotments get scaled down.$n$,
  $n$Business Today (also reported by Outlook Money)$n$, $n$https://www.businesstoday.in/markets/ipo-corner/story/jio-platforms-raises-rs-8110-crore-from-over-200-anchor-investors-draws-rs-2-5-lakh-cr-demand-562601-2026-10-20$n$, $n$econ-09$n$, 'draft',
  $n$Big funds bid over ₹2.5 lakh crore for Jio shares. Today, ₹13,428 lets you bid for a slice too.$n$,
  $n$India's largest IPO opens to the public today after its anchor book drew more than 30 times the shares on offer. When everyone wants something at a fixed price, not everyone gets it. That's a shortage, and the market equilibrium card explains why.$n$, true, $n$2026-10-20T09:34:00+05:30$n$, 1),
($n$2026-10-21-us-india-trade-deal-close$n$, '2026-10-21', $n$india$n$, $n$TRADE$n$,
  $n$Rubio says US–India trade deal is 'as close as you can be' after Mumbai talks$n$,
  $n$After talks in Mumbai with External Affairs Minister S. Jaishankar, US Secretary of State Marco Rubio said the two countries were "about as close as you can be without having executed the agreement." The US put tariffs of up to 50% on most Indian goods in August 2025; a framework agreed in February cut that to 18%, but talks have since stalled. India wants its final rate to be similar to those of rivals such as Vietnam. Rubio said India still buys a lot of Russian oil and that it is "hard to pivot from one day to the next." He is due to visit Reliance's Jamnagar refinery on Wednesday.$n$,
  $n$Tariff talks, sanctions and diplomacy are political and legal forces that no single exporter controls. PESTLE analysis is how a company maps such outside factors before they hit its sales.$n$,
  $n$Fortune (Associated Press)$n$, $n$https://fortune.com/2026/10/20/marco-rubio-india-trade-talks-tariffs-russia-oil/$n$, $n$mkt-05$n$, 'draft',
  $n$Indian goods went from a 50% US tariff to 18%. Now Washington says a final deal is almost done.$n$,
  $n$Rubio's Mumbai remarks put the long-stalled US–India trade deal back in focus, with Russian oil still in the background. A tariff decided in Washington can make or break an exporter in Tiruppur. PESTLE analysis maps the outside forces like this that shape a business.$n$, false, $n$2026-10-20T19:06:00+05:30$n$, 2),
($n$2026-10-21-oil-iran-reports$n$, '2026-10-21', $n$global$n$, $n$OIL$n$,
  $n$Brent slips to $108.79 after touching near $112 as reports of a US–Iran proposal swirl$n$,
  $n$Brent crude for December settled at $108.79 a barrel on Tuesday, down 76 cents (0.69%), after trading near $112 earlier in the session. Prices fell after reports in Israel's Channel 12 and The New Arab said the US had approved a Pakistan-brokered proposal that Iran had preliminarily accepted, including UN nuclear inspections and Iran getting the interest on $6 billion of funds frozen in Qatar; neither government confirmed it. Supply fears remain: Kpler data shows oil flows out of the Persian Gulf fell to about 8.5 million barrels a day, from over 20 million two weeks earlier, after a wave of tanker attacks. US diesel averaged $6.276 a gallon in the latest weekly survey, up 9.7 cents.$n$,
  $n$Oil prices react to what traders expect about future supply, not just today's barrels. Hopes of a peace deal ease supply fears and pull prices down, while fresh attacks push them up; expectations are a key supply shifter.$n$,
  $n$TokenPost (Iran-proposal reports also covered by TradingKey)$n$, $n$https://www.tokenpost.com/news/investing/36004$n$, $n$econ-08$n$, 'draft',
  $n$Oil neared $112, then a single unconfirmed peace report knocked it back below $109.$n$,
  $n$Brent swung by about $3 in one day as traders weighed reports of a US–Iran proposal against tanker attacks in the Gulf. Why can a rumour about the future move today's price? Expectations shift supply, and the law of supply card shows how.$n$, false, $n$2026-10-21T03:12:00+05:30$n$, 3),
($n$2026-10-21-india-nz-fta$n$, '2026-10-21', $n$india$n$, $n$TRADE$n$,
  $n$India–New Zealand free trade agreement comes into force$n$,
  $n$India's free trade agreement with New Zealand took effect on Tuesday, after being signed on 27 April and ratified on 21 September. Labour-intensive exports such as textiles, apparel, leather and footwear are expected to gain most, because tariffs of up to 10% on them are removed from day one. Sensitive Indian sectors, including dairy, remain protected. Two-way trade in goods and services is about $2.4 billion today, and the two countries aim to reach NZ$7 billion by 2030. Commerce Minister Piyush Goyal said New Zealand has committed to facilitate $20 billion of investment into India, and the deal promises customs clearance within 48 hours for regular cargo and 24 hours for perishables.$n$,
  $n$Removing a 10% tariff lets Indian garments sell for less in New Zealand. How much extra they actually sell depends on how sensitive buyers there are to price, which is price elasticity of demand.$n$,
  $n$ThePrint (ANI)$n$, $n$https://theprint.in/economy/indian-exporters-get-duty-free-access-to-new-zealand-market-as-fta-takes-effect/3076708/$n$, $n$econ-03$n$, 'draft',
  $n$From Tuesday, Indian shirts and shoes enter New Zealand without a 10% tariff.$n$,
  $n$India's trade deal with New Zealand is now live, cutting duties on labour-heavy exports while keeping dairy protected. Will cheaper Indian goods actually sell more? That depends on price elasticity of demand.$n$, false, $n$2026-10-20T13:38:00+05:30$n$, 4),
($n$2026-10-21-gm-costs-buyback$n$, '2026-10-21', $n$recruiter$n$, $n$AUTO$n$,
  $n$GM beats estimates and plans a $20 billion buyback, but shares sink on rising costs$n$,
  $n$General Motors' third-quarter adjusted operating profit (EBIT) rose 22% to $4.1 billion, and adjusted earnings of $3.70 a share beat the $3.63 analysts expected. It narrowed its full-year forecast to $12.75–13.75 a share, with the midpoint below the $13.41 consensus. GM expects commodity inflation of about $2 billion this year, and its finance chief warned that steel, aluminium and logistics costs could cut a similar amount from next year's profit if they don't ease. Fourth-quarter truck deliveries will also dip ahead of redesigned Silverado and Sierra pickups. Despite a new multi-year $20 billion share buyback, the stock closed 6.8% lower.$n$,
  $n$The headline profit beat estimates, but the guidance and cost details pointed to weaker profits ahead. Reading the whole set of statements and the outlook, not just one number, is what investors were doing.$n$,
  $n$Reuters (via AOL)$n$, $n$https://www.aol.com/articles/gms-core-profit-rises-22-103341000.html$n$, $n$acct-10$n$, 'draft',
  $n$GM beat profit estimates and announced a $20 billion buyback. Its shares still fell almost 7%.$n$,
  $n$Rising steel, aluminium and logistics costs could cost GM about $2 billion next year, and that worried investors more than the quarter's beat. Knowing where to look beyond the headline profit is the skill a card on reading financial statements teaches.$n$, false, $n$2026-10-20T20:34:00+05:30$n$, 5),
($n$2026-10-21-wall-street-healthcare$n$, '2026-10-21', $n$global$n$, $n$US MARKETS$n$,
  $n$Dow gains over 500 points as investors rotate into healthcare and away from tech$n$,
  $n$The Dow rose 529.85 points (1.02%) to 52,495.88 on Tuesday and the S&P 500 added 0.28% to 7,712.57, while the Nasdaq slipped 0.02% to 26,424.82. Healthcare led and hit a record high, with Eli Lilly the S&P 500's biggest contributor and UnitedHealth, Merck, Johnson & Johnson and Amgen lifting the Dow. Technology fell 0.3% and was the biggest drag, and Meta and Alphabet both lost ground. Smaller companies did best: the Russell 2000 rose 1.7%. Equifax jumped 11.3% after beating profit estimates.$n$,
  $n$Investors have limited money, so buying healthcare and small-company shares means selling something else, here tech. Every choice to put money in one place gives up the return it could have earned elsewhere, which is opportunity cost.$n$,
  $n$Reuters (via Yahoo Finance)$n$, $n$https://finance.yahoo.com/markets/stocks/articles/wall-st-set-lower-open-130804295.html$n$, $n$econ-06$n$, 'draft',
  $n$Wall Street rose on Tuesday, but not because of tech. Healthcare and small companies led.$n$,
  $n$The Dow gained over 500 points while the tech-heavy Nasdaq ended flat, as money moved out of big tech into drugmakers and smaller firms. With limited money, every investment means giving up another. That's opportunity cost.$n$, false, $n$2026-10-21T02:44:00+05:30$n$, 6),
($n$2026-10-21-netflix-weak-forecast$n$, '2026-10-21', $n$recruiter$n$, $n$MEDIA$n$,
  $n$Netflix shares drop about 6% after hours on a weak fourth-quarter forecast$n$,
  $n$Netflix's third-quarter revenue rose 11.8% to $12.87 billion, in line with forecasts but its slowest growth in nearly three years; earnings of 87 cents a share beat the 82-cent estimate. For the fourth quarter it forecast 67 cents a share and $2.79 billion in net income, below analysts' 73 cents and $3.07 billion. It also cut its 2026 advertising revenue forecast to about $2.7 billion from about $3 billion. The shares fell nearly 6% after hours to $64.66. The results came days after Netflix cut about 6% of its workforce, and co-CEO Ted Sarandos said: "I know that we could do better."$n$,
  $n$Subscribers keep paying only while the shows feel worth the price. Sarandos's promise to lift the content slate is about strengthening Netflix's value proposition as growth slows.$n$,
  $n$Reuters (via MarketScreener)$n$, $n$https://www.marketscreener.com/news/netflix-issues-weak-fourth-quarter-forecast-shares-drop-ce785cd8dc88f221$n$, $n$mkt-02$n$, 'draft',
  $n$Netflix grew at its slowest pace in nearly three years, and its co-CEO admitted it could do better.$n$,
  $n$A weak forecast and a lower ad-revenue target knocked about 6% off Netflix shares after hours. When growth slows, the question is whether customers still feel they're getting their money's worth. That's the value proposition.$n$, false, $n$2026-10-21T03:48:00+05:30$n$, 7),
($n$2026-10-21-spacex-first-results$n$, '2026-10-21', $n$global$n$, $n$RESULTS$n$,
  $n$SpaceX revenue jumps 161% in its first quarterly report as a listed company, led by AI$n$,
  $n$SpaceX reported third-quarter revenue of $14.58 billion, up 161% from a year earlier and well above the roughly $13 billion analysts expected. It earned about $4.4 billion in net income, or 35 cents a share, against a 13-cent estimate, after losing $541 million in the previous quarter. AI-related revenue of $7.56 billion overtook its Starlink connectivity business ($5.25 billion) for the first time, while launches brought in $1.77 billion. Capital spending was about $19.6 billion, mostly on AI infrastructure, so free cash flow stayed negative. The shares rose in after-hours trading.$n$,
  $n$The $19.6 billion spent on AI infrastructure buys long-lasting assets, so it is capital expenditure, not a running cost charged against this quarter's revenue. That's how a company can report a profit and still burn cash.$n$,
  $n$Stocktwits (revenue also reported by The Motley Fool)$n$, $n$https://stocktwits.com/news-articles/markets/equity/spcx-rises-after-hours-on-ai-driven-revenue-surge-and-first-profit-since-ipo/cZxAIl0RBH9$n$, $n$acct-18$n$, 'draft',
  $n$SpaceX earned $4.4 billion in three months and still spent more cash than it brought in.$n$,
  $n$Revenue jumped 161%, AI sales overtook Starlink, and capital spending hit about $19.6 billion. How can a company be profitable and cash-negative at once? The capital-vs-revenue expenditure card explains.$n$, false, $n$2026-10-21T02:34:00+05:30$n$, 8),
($n$2026-10-21-3m-amazon-warrant$n$, '2026-10-21', $n$recruiter$n$, $n$B2B$n$,
  $n$3M gives Amazon a share warrant tied to $6 billion of data-centre purchases and raises its outlook$n$,
  $n$3M issued a seven-year warrant to an Amazon subsidiary for up to about 3.16 million 3M shares at $164.89 each, which Reuters valued at over $521 million. About 85% of those shares vest as Amazon buys 3M's optical connectivity and other data-centre products, fully vesting once Amazon's payments reach $6 billion. 3M also reported third-quarter adjusted earnings of $2.50 a share, above the $2.39 estimate, on revenue of about $6.6 billion. It raised its full-year adjusted profit forecast to $9.10–9.15 a share. The stock rose 5.8%.$n$,
  $n$For a business buyer like Amazon, the deal rewards long-term, high-volume purchasing. Structuring incentives around a big customer's buying is classic B2B selling.$n$,
  $n$Yahoo Finance (also reported by Reuters)$n$, $n$https://finance.yahoo.com/markets/stocks/articles/3m-jumps-6-expanded-amazon-145845385.html$n$, $n$mkt-09$n$, 'draft',
  $n$The company behind Post-it Notes will hand Amazon shares if it buys $6 billion of its data-centre gear.$n$,
  $n$3M's unusual deal ties a stake in the company to how much Amazon buys from it, and investors cheered with a near-6% jump. Selling to another business works very differently from selling to you. That's B2B buying.$n$, false, $n$2026-10-20T20:28:00+05:30$n$, 9),
($n$2026-10-21-rbi-samvad-stability$n$, '2026-10-21', $n$india$n$, $n$RBI$n$,
  $n$At RBI's SAMVAD, officials warn crises are now coming faster and harder$n$,
  $n$The RBI's two-day international central banking seminar, SAMVAD 2026, ended in New Delhi on Tuesday. Deputy Governor Poonam Gupta said financial stability has become a policy goal in its own right, with oversight widening from individual banks to the whole system, including non-banks. Former RBI governor Shaktikanta Das, now Principal Secretary-2 to the Prime Minister, said prolonged conflicts are tightening financial conditions, cautioned that AI valuations without a track record could add to risks, and called for adequate buffers. Economic Affairs Secretary Anuradha Thakur said India faces the global turmoil from a position of macroeconomic stability. Participants said crises were now "coming quicker and were more intense."$n$,
  $n$Building buffers before trouble arrives is the same thinking behind conservatism in accounting: expect possible losses early instead of waiting for them.$n$,
  $n$The Tribune (ANI)$n$, $n$https://www.tribuneindia.com/news/business/ai-geopolitical-tensions-pose-growing-risks-to-financial-stability-experts-at-rbi-samvad-2026$n$, $n$acct-13$n$, 'draft',
  $n$India's top money managers say financial crises now hit faster and harder. Their answer: build buffers.$n$,
  $n$At the RBI's SAMVAD seminar, officials flagged wars, AI valuations and fintech as rising risks. Preparing for losses before they arrive is a core idea in accounting, called conservatism.$n$, false, $n$2026-10-20T20:04:00+05:30$n$, 10),
($n$2026-10-21-hasbro-magic$n$, '2026-10-21', $n$global$n$, $n$RESULTS$n$,
  $n$Hasbro jumps 11% as Magic: The Gathering tops $600 million in a quarter$n$,
  $n$Toymaker Hasbro's third-quarter revenue rose 15% to about $1.6 billion, and adjusted earnings of $2.90 a share beat the $1.85 consensus. Its Magic: The Gathering card game passed $600 million in quarterly revenue for the first time, up 34%. Results were helped by about $55 million of tariff refunds, mostly in toys; the finance chief said that benefit was fully booked in the third quarter, so fourth-quarter margins will step down. Hasbro raised its 2026 revenue growth outlook to 7–9% in constant currency, from 5–7%. Its shares rose 11.2%.$n$,
  $n$Hasbro recorded all of the tariff refund in the quarter it was earned, which flatters this quarter and makes the next look weaker. Knowing when income is recognised helps you compare quarters fairly.$n$,
  $n$MT Newswires via MarketScreener (details also reported by TIKR)$n$, $n$https://www.marketscreener.com/news/hasbro-lifts-annual-outlook-following-third-quarter-beat-shares-rise-ce785cd8dd8af523$n$, $n$acct-12$n$, 'draft',
  $n$A card game just earned Hasbro over $600 million in three months, a first.$n$,
  $n$Magic: The Gathering powered an earnings beat and an 11% jump in Hasbro's shares, with a one-off tariff refund adding a boost. Why will next quarter look weaker? It comes down to when income is recognised.$n$, false, $n$2026-10-20T23:13:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-10-21' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-21' order by rank;
