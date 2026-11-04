-- =====================================================================
-- ChaiCase news brief for 2026-11-04: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-04.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-03 7 AM and 2026-11-04 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-04' and (slug is null or slug not in ($n$2026-11-04-sbi-profit-up-14-percent$n$, $n$2026-11-04-sensex-fourth-day-rally$n$, $n$2026-11-04-vedanta-bengal-aluminium-plan$n$, $n$2026-11-04-oil-second-day-fall$n$, $n$2026-11-04-rba-hikes-to-4-85$n$, $n$2026-11-04-amd-record-quarter$n$, $n$2026-11-04-nse-profit-up-23-percent$n$, $n$2026-11-04-bajaj-finserv-profit$n$, $n$2026-11-04-kolkata-port-cargo-growth$n$, $n$2026-11-04-rupee-third-day-gain$n$, $n$2026-11-04-wall-street-election-day$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-04-sbi-profit-up-14-percent$n$, '2026-11-04', $n$recruiter$n$, $n$SBI$n$,
  $n$SBI's quarterly profit rises 14.3% to ₹23,038 crore as loans grow almost 18% and bad loans shrink$n$,
  $n$State Bank of India reported standalone net profit of about ₹23,038 crore for the July-September quarter, up 14.3% from about ₹20,160 crore a year earlier. Net interest income, the gap between what the bank earns on loans and pays on deposits, rose 14.7% to ₹49,143 crore. Total advances grew 17.84%, with farm and small-business loans growing fastest, and gross bad loans eased to 1.39% of advances from 1.47% in the previous quarter. Operating profit, however, slipped 1.4% to ₹26,937 crore, while exceptional gains rose to ₹7,289 crore from ₹4,593 crore a year earlier.$n$,
  $n$The bottom line grew 14%, yet operating profit actually dipped, and a bigger one-off gain filled the gap. Spotting which line of the statement is doing the work is exactly what the reading the financial statements card teaches.$n$,
  $n$IIFL (IndiaInfoline); also Upstox$n$, $n$https://www.indiainfoline.com/news/companies/sbi-q2-fy27-results-net-profit-up-14-3-to-rs-23038-crore-asset-quality-improves$n$, $n$acct-10$n$, 'draft',
  $n$India's biggest bank earned ₹23,038 crore in three months, but look closely at where it came from.$n$,
  $n$SBI's profit rose 14.3% as loans grew almost 18% and bad loans fell to 1.39%. But operating profit slipped and a ₹7,289 crore one-off gain helped. The reading the financial statements card shows how to find what really drove the number.$n$, false, $n$2026-11-03T14:57:03+05:30$n$, 1),
($n$2026-11-04-sensex-fourth-day-rally$n$, '2026-11-04', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex adds 1,225 points to 76,918 as the rally reaches a fourth day, led by FMCG and private banks$n$,
  $n$The Sensex rose 1.62% (1,225 points) to close at 76,917.85 on Tuesday and the Nifty 50 gained 1.58% (370 points) to 23,810.85, a fourth straight day of gains that took both to their highest levels in nearly two months. FMCG shares led, with Nestle India, Tata Consumer Products and Asian Paints among the top Nifty gainers, while Power Grid, SBI and ONGC were among the losers. Reports credited foreign investor buying, solid company earnings and cooler crude prices after Monday's sharp fall. The rupee also firmed, and analysts flagged oil, the Middle East and the US midterm elections as risks.$n$,
  $n$Indian shares rose partly because of events abroad: talks over Iran that cooled oil, and foreign funds returning. Forces outside a company's control shape its results and its share price, which is what the marketing environment (PESTLE) card explains.$n$,
  $n$HDFC Sky; also Kotak Neo$n$, $n$https://hdfcsky.com/news/market-close-report-today-november-3-2026-diwali-party-continues-as-benchmarks-extend-mega-rally$n$, $n$mkt-05$n$, 'draft',
  $n$Four days, about 5% higher: Dalal Street's winning streak is now its best in nearly two months.$n$,
  $n$The Sensex closed at 76,918, with soap, food and paint makers leading the climb as foreign money returned and oil cooled. Much of the push came from outside India. The marketing environment card explains how outside forces move businesses.$n$, false, $n$2026-11-03T16:25:01+05:30$n$, 2),
($n$2026-11-04-vedanta-bengal-aluminium-plan$n$, '2026-11-04', $n$local$n$, $n$BENGAL$n$,
  $n$Vedanta explores a ₹70,000-80,000 crore aluminium smelter and power plant in Bengal's Asansol belt$n$,
  $n$Vedanta Group, chaired by Anil Agarwal, is exploring an investment of ₹70,000 crore to ₹80,000 crore in West Bengal for an aluminium smelter and power plant, according to reports. The project would be in the Asansol industrial belt, near JK Nagar, home to India's first aluminium factory in 1937, and would need roughly 700 to 800 more acres of land. Agarwal discussed land, water, coal supply and clearances with the state government at Nabanna. The plan is still at an early stage and depends on land, infrastructure and approvals; one industrial economist quoted in the report estimated it could create about 10,000 direct jobs.$n$,
  $n$A new smelter and power plant would add land, machines and workers to what Bengal can produce. Adding resources is what shifts an economy's production possibility frontier outward, as the PPF card explains.$n$,
  $n$Hindusthan Samachar; also PropNewsTime$n$, $n$https://english.hindusthansamachar.in/Encyc/2026/11/3/Decades-of-Silence-to-Break-as.php$n$, $n$econ-07$n$, 'draft',
  $n$Bengal made India's first aluminium in 1937. Now Vedanta is weighing up to ₹80,000 crore to restart it.$n$,
  $n$Anil Agarwal's group is exploring a smelter and power plant near Asansol that could mean around 10,000 jobs, though land and approvals come first. Big projects like this expand what a state can produce. The PPF card shows how.$n$, true, $n$2026-11-03T11:48:53+05:30$n$, 3),
($n$2026-11-04-oil-second-day-fall$n$, '2026-11-04', $n$global$n$, $n$OIL$n$,
  $n$Brent slips to $103.60 for a second day of losses, after swinging on a reported US strike on Iran's Qeshm Island$n$,
  $n$Brent crude fell $1.17 to settle at $103.60 a barrel on Tuesday and US crude dipped 37 cents to $96.09, a second straight decline after Monday's fall of more than 7%. Prices had jumped earlier after The Wall Street Journal, citing US officials, reported a US attack on Iran's Qeshm Island near the Strait of Hormuz. Hopes of a US-Iran deal pulled them back down, with Qatar saying its mediators had held talks in Tehran. Iran's foreign ministry said it would not accept diplomacy based on coercion, and it remained unclear how far talks had progressed.$n$,
  $n$A strike that threatens Gulf shipping pushes prices up, and talk of peace pushes them down, all before any barrel actually moves. Expected future supply is one of the things that shifts the supply curve, as the law of supply card explains.$n$,
  $n$CNBC; also Rigzone$n$, $n$https://www.cnbc.com/2026/11/03/oil-prices-climb-after-us-reportedly-strikes-irans-qeshm-island.html$n$, $n$econ-08$n$, 'draft',
  $n$A strike pushed oil up, peace talk pulled it down: crude swung all day and still ended lower.$n$,
  $n$Brent settled at $103.60 after a choppy session driven by news from the Gulf, not by any change in actual barrels. Traders bet on what supply will look like next. The law of supply card explains why expectations move the curve.$n$, false, $n$2026-11-03T12:11:00+05:30$n$, 4),
($n$2026-11-04-rba-hikes-to-4-85$n$, '2026-11-04', $n$global$n$, $n$RATES$n$,
  $n$Australia's central bank raises rates to 4.85%, an 18-year high, in a split 6-3 vote$n$,
  $n$The Reserve Bank of Australia raised its cash rate by a quarter point to 4.85%, its fifth increase this year and the highest level in about 18 years. Six board members voted for the rise and three wanted to hold at 4.60%. The bank said inflation is elevated and broadly based, and pointed to the Middle East conflict and higher energy prices as extra pressure. Governor Michele Bullock said the hike was needed to bring inflation down, while the statement dropped its earlier hint of further increases, which markets read as a softer signal.$n$,
  $n$Higher interest rates make loans and EMIs costlier, so people want to borrow and spend less at every price. A change like that shifts the whole demand curve rather than moving along it, as the change in demand card explains.$n$,
  $n$Reserve Bank of Australia; also ABC News, SBS News$n$, $n$https://www.rba.gov.au/media-releases/2026/mr-26-30.html$n$, $n$econ-02$n$, 'draft',
  $n$Australia just made borrowing its most expensive in 18 years, and three of nine policymakers said no.$n$,
  $n$The RBA lifted rates to 4.85% to cool stubborn inflation worsened by the oil shock. Dearer loans mean households and firms want to buy less overall. The change in demand card explains why that shifts the curve itself.$n$, false, $n$2026-11-03T09:00:00+05:30$n$, 5),
($n$2026-11-04-amd-record-quarter$n$, '2026-11-04', $n$global$n$, $n$TECH$n$,
  $n$AMD posts record $13.4 billion revenue as its data-centre business nearly doubles on AI chip demand$n$,
  $n$Chipmaker AMD reported third-quarter revenue of $13.4 billion, up 45% from a year earlier, and net income of $2.4 billion. Its data-centre segment, which sells server processors and AI chips, earned a record $8.5 billion, up 97%, helped by early sales of its new MI450 AI accelerators. Gaming revenue fell 40% to $773 million. AMD forecast about $17 billion in revenue for the October-December quarter, and CEO Lisa Su said she expects growth to speed up.$n$,
  $n$AMD's AI-chip surge comes in a market where buyers are few and huge and Nvidia is the dominant rival. How rivalry, buyer power and switching costs decide who profits is what Porter's five forces card explains.$n$,
  $n$AMD (company release); also TechPowerUp$n$, $n$https://ir.amd.com/news-events/press-releases/detail/1303/amd-reports-third-quarter-2026-financial-results$n$, $n$mkt-06$n$, 'draft',
  $n$AMD's AI chip sales nearly doubled in a year. The challenger is gaining on the giant.$n$,
  $n$AMD's data-centre revenue jumped 97% to $8.5 billion and it expects about $17 billion next quarter, while gaming sales fell sharply. Winning in AI chips means taking on a dominant rival. Porter's five forces card shows how industry structure decides profits.$n$, false, $n$2026-11-04T02:45:00+05:30$n$, 6),
($n$2026-11-04-nse-profit-up-23-percent$n$, '2026-11-04', $n$india$n$, $n$EXCHANGES$n$,
  $n$NSE's quarterly profit rises 23% to ₹2,578 crore as cash-market trading climbs$n$,
  $n$The National Stock Exchange reported consolidated net profit of about ₹2,578 crore for the July-September quarter, up about 23% from ₹2,098 crore a year earlier but down 17% from the previous quarter. Revenue from trading fees rose 9% to ₹3,035 crore, as average daily cash-market turnover rose 24%. Part of the year-on-year jump reflects a weak base: a year earlier NSE had set aside ₹1,297 crore for a settlement with SEBI. The board also approved selling up to 40% of its stake in its subsidiary National Coal Exchange of India.$n$,
  $n$Last year's profit was pulled down by a ₹1,297 crore amount NSE set aside for an expected SEBI settlement, which makes this year's growth look bigger. Recording a probable, measurable obligation before it is paid is what the provisions card explains.$n$,
  $n$Upstox; also ANI$n$, $n$https://upstox.com/news/market-news/earnings/nse-q2-fy-27-results-net-profit-declines-17-qo-q-firm-disinvests-stake-in-national-coal-exchange-of-india/article-202915/$n$, $n$acct-19$n$, 'draft',
  $n$Profit up 23% at the exchange where India trades, yet part of that rise is an accounting echo from last year.$n$,
  $n$NSE earned about ₹2,578 crore as cash trading rose 24%, but a year ago it had set aside ₹1,297 crore for a SEBI settlement. That makes the comparison flattering. The provisions card explains why such amounts are booked in advance.$n$, false, $n$2026-11-03T18:19:47+05:30$n$, 7),
($n$2026-11-04-bajaj-finserv-profit$n$, '2026-11-04', $n$recruiter$n$, $n$BAJAJ$n$,
  $n$Bajaj Finserv's group profit rises 25% to ₹5,952 crore, with ₹2,758 crore belonging to its shareholders$n$,
  $n$Bajaj Finserv, the holding company for Bajaj Finance and the Bajaj insurance businesses, reported consolidated profit of ₹5,952 crore for the July-September quarter, up 25%. The part attributable to Bajaj Finserv's own shareholders was ₹2,758 crore, up 23% from ₹2,244 crore. Total income rose 17% to ₹43,416 crore. Reports say lending arm Bajaj Finance, whose profit rose 29%, did most of the work, while the general insurance business earned less because of higher claims. The shares rose about 2% on Tuesday.$n$,
  $n$Two profit numbers appear because Bajaj Finserv does not own all of its subsidiaries; the rest of their profit belongs to other shareholders. Knowing which line of the statement belongs to whom is what the reading the financial statements card teaches.$n$,
  $n$Business Today; also Zee Business$n$, $n$https://www.businesstoday.in/markets/stocks/story/bajaj-finserv-q2-results-consolidated-profit-rises-25-income-up-17-565364-2026-11-03$n$, $n$acct-10$n$, 'draft',
  $n$₹5,952 crore or ₹2,758 crore? Bajaj Finserv's profit depends on whose share you count.$n$,
  $n$The Bajaj group's profit rose 25%, powered by its lending arm, but less than half of it belongs to Bajaj Finserv's own shareholders. Both numbers are correct. The reading the financial statements card explains why.$n$, false, $n$2026-11-03T13:45:00+05:30$n$, 8),
($n$2026-11-04-kolkata-port-cargo-growth$n$, '2026-11-04', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata port's cargo rises 5.1% to 40.5 million tonnes in April-October as container traffic grows faster$n$,
  $n$Syama Prasad Mookerjee Port, Kolkata handled 40.527 million tonnes of cargo between April and October, up 5.10% from a year earlier, according to an IANS report. Haldia Dock Complex handled 29.752 million tonnes (up 5.28%) and the Kolkata Dock System 10.775 million tonnes (up 4.58%). Container traffic grew faster, up 7.98% to about 5.87 lakh TEUs, and the Kolkata docks handled 64,224 TEUs in October alone, up 15.83%. Haldia also received its first shipload of quicklime, 8,133 tonnes from the UAE, a material steelmakers use to remove impurities.$n$,
  $n$The port judges demand for its services by counting tonnes and containers for a clearly defined place and period. Defining the market precisely before measuring it is what the market measurement card teaches.$n$,
  $n$IANS via SocialNews.XYZ; also HiIndia$n$, $n$https://www.socialnews.xyz/2026/11/03/kolkata-port-registers-cargo-growth-starts-importing-lime-through-haldia-dock$n$, $n$mkt-10$n$, 'draft',
  $n$More boxes through the Hooghly: Kolkata's docks handled 16% more containers this October.$n$,
  $n$The city's port moved 40.5 million tonnes in seven months, with container traffic growing fastest, and Haldia took in its first quicklime cargo for steelmakers. Those counts are how a port sizes its market. The market measurement card shows how.$n$, false, $n$2026-11-03T21:10:35+05:30$n$, 9),
($n$2026-11-04-rupee-third-day-gain$n$, '2026-11-04', $n$india$n$, $n$RUPEE$n$,
  $n$Rupee gains 9 paise to 94.75 per dollar, its third straight rise, on foreign inflows$n$,
  $n$The rupee rose 9 paise to settle at 94.75 against the US dollar on Tuesday, its third straight day of gains, after touching 94.60 during the day. Dealers said foreign fund inflows, a strong stock market and a softer dollar supported the currency. A rebound in crude prices, after reports of fresh US strikes on Iranian targets, limited the gains. Mirae Asset Sharekhan's Anuj Choudhary expects the rupee to trade between 94.40 and 95 per dollar.$n$,
  $n$When foreign investors bring in dollars to buy Indian shares, more dollars are offered and the rupee's price rises; when oil importers need dollars, the pull goes the other way. The exchange rate settles where those two forces balance, as the market equilibrium card explains.$n$,
  $n$ThePrint (PTI); also Business Standard$n$, $n$https://theprint.in/economy/rupee-rises-9-paise-to-settle-at-94-75-against-us-dollar/3089655/$n$, $n$econ-09$n$, 'draft',
  $n$Three days in a row, the rupee has clawed back ground against the dollar.$n$,
  $n$The rupee closed at 94.75 as foreign money flowed into Indian shares, though costlier oil held it back. A currency is a price like any other. The market equilibrium card explains where it settles.$n$, false, $n$2026-11-03T20:47:00+05:30$n$, 10),
($n$2026-11-04-wall-street-election-day$n$, '2026-11-04', $n$global$n$, $n$WALL STREET$n$,
  $n$Nasdaq rises 0.83% as chip stocks rebound on US election day, while Apple drags the Dow lower$n$,
  $n$US stocks ended mixed on Tuesday as Americans voted in the midterm elections. The Nasdaq rose 0.83% to 25,372.01 and the S&P 500 gained 0.36% to 7,568.92, ending a three-day losing run, while the Dow fell 197 points (0.38%) to 51,786.72. Chipmakers including AMD, Broadcom, Micron and Nvidia rallied, but Apple fell almost 2% after a disappointing margin forecast and weaker iPad sales. Shopify dropped more than 5% after missing estimates for merchandise volume.$n$,
  $n$Apple and Shopify fell not because of past results but because their outlook for future demand disappointed investors. Estimating how much customers will buy, and how sure you can be, is what the market measurement and demand estimation card covers.$n$,
  $n$SRN News; also CNBC$n$, $n$https://srnnews.com/stocks-close-mixed-on-election-day/$n$, $n$mkt-10$n$, 'draft',
  $n$Americans voted, chip stocks climbed, and Apple slipped on a forecast that fell short.$n$,
  $n$The Nasdaq gained 0.83% as AI chipmakers rallied, but Apple and Shopify fell when their outlooks disappointed. Markets trade on expected demand, not past sales. The market measurement card shows how demand is estimated.$n$, false, $n$2026-11-04T05:26:55+05:30$n$, 11)
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
from news_stories where publish_date = '2026-11-04' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-04' order by rank;
