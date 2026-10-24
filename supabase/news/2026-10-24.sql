-- =====================================================================
-- ChaiCase news brief for 2026-10-24: 10 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-24.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-23 7 AM and 2026-10-24 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-24' and (slug is null or slug not in ($n$2026-10-24-jio-ipo-closes-22x$n$, $n$2026-10-24-infosys-guidance-cut$n$, $n$2026-10-24-brent-116$n$, $n$2026-10-24-sensex-fourth-fall$n$, $n$2026-10-24-adani-power-q2$n$, $n$2026-10-24-jsw-steel-q2$n$, $n$2026-10-24-tata-motors-cv-q2$n$, $n$2026-10-24-amex-fee-jobs$n$, $n$2026-10-24-wall-street-friday$n$, $n$2026-10-24-trishakti-q2$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-24-jio-ipo-closes-22x$n$, '2026-10-24', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms IPO closes about 22 times subscribed as institutions bid for 70 times their share$n$,
  $n$India's largest-ever IPO, Jio Platforms' ₹30,213-crore issue, ended bidding on Friday about 22.19 times subscribed, according to tracker IPO Guru; Bloomberg also reported demand of more than 22 times. Qualified institutional buyers bid for about 70.55 times the shares kept for them, wealthy individuals (NIIs) about 14 times, and retail investors about 2.72 times. Demand jumped late in the day: the issue stood near 12.55 times at 3 pm. The price band was ₹1,065–1,119 a share, allotment is expected on 26 October and listing on BSE and NSE is set for 28 October.$n$,
  $n$At a fixed price band, buyers wanted about 22 times more shares than were on offer, which is a shortage. Rationing by allotment, and the listing-day price, are how such a gap between demand and supply gets settled.$n$,
  $n$IPO Guru (also reported by Bloomberg and HDFC Sky)$n$, $n$https://www.ipoguru.in/news/jio-platforms-ipo-subscription-status-final-day$n$, $n$econ-09$n$, 'draft',
  $n$Big funds asked for 70 times their share of Jio. Each will get only a sliver of what it bid for.$n$,
  $n$Jio's record IPO closed about 22 times oversubscribed, up from about 12.5 times at 3 pm on the last day. When far more people want shares than exist at a fixed price, someone has to go without. The market equilibrium card explains the shortage.$n$, true, $n$2026-10-23T20:00:00+05:30$n$, 1),
($n$2026-10-24-infosys-guidance-cut$n$, '2026-10-24', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Infosys profit rises 6% to ₹7,823 crore, but it cuts its full-year revenue growth forecast to 1–2%$n$,
  $n$Infosys reported July–September net profit of ₹7,823 crore, up 6% from ₹7,364 crore a year ago, on revenue of ₹49,244 crore, up 11%. In dollars, revenue was $5,145 million. The company lowered its FY27 revenue growth guidance to 1–2% in constant currency from 1.5–3%, while keeping its operating margin range at 20–22%; the quarter's margin was 21%. Large deals worth $5.2 billion were signed, including one above $2 billion, and AI work made up 10.5% of revenue after growing 29% from the previous quarter. The board declared an interim dividend of ₹26 a share.$n$,
  $n$Guidance is a company's own forecast of how much its clients will spend with it over the year. Cutting it means Infosys now estimates lower demand for its services, which is what market measurement and demand estimation try to get right.$n$,
  $n$Upstox (also reported by INDmoney)$n$, $n$https://upstox.com/news/market-news/earnings/infosys-q2-earnings-net-profit-rises-6-annually-to-7-823-crore-cuts-revenue-growth-guidance/article-202322/$n$, $n$mkt-10$n$, 'draft',
  $n$Infosys signed $5.2 billion of big deals and still expects slower growth. Why it lowered its own forecast.$n$,
  $n$Profit rose and AI revenue jumped 29% in a quarter, yet one of India's biggest campus recruiters now sees only 1–2% growth this year. A forecast is a bet on what clients will spend. The demand estimation card shows how firms make that call.$n$, false, $n$2026-10-23T17:35:00+05:30$n$, 2),
($n$2026-10-24-brent-116$n$, '2026-10-24', $n$global$n$, $n$OIL$n$,
  $n$Brent climbs to about $116, its highest since March, as US–Iran talks stall$n$,
  $n$Brent crude rose 2.7% to $116.24 a barrel on Friday, the Associated Press reported, its highest level since March and up from under $97 at the start of October. AP linked the rise to stalled efforts to bring the US and Iran back to negotiations, while Indian market reports also pointed to Houthi attacks on Saudi Arabia. Yahoo Finance reported that Brent for December delivery settled at $116.72, a third straight weekly gain, with US crude just above $103. The US average price of regular petrol rose to $4.29 a gallon, against $3.07 a year earlier, according to AAA.$n$,
  $n$The fear that conflict will cut future supply from the Gulf makes sellers demand more for each barrel today. A change in expected supply conditions is one of the factors that shifts the whole supply curve.$n$,
  $n$Transport Topics (Associated Press); also reported by Yahoo Finance$n$, $n$https://www.ttnews.com/articles/oil-prices-levels-may$n$, $n$econ-08$n$, 'draft',
  $n$Oil was under $97 when October began. Three weeks later Brent is near $117 and US petrol costs $4.29.$n$,
  $n$Stalled US–Iran talks and attacks on Saudi Arabia have lifted crude for a third straight week. Markets are pricing the barrels they fear may not arrive. The law of supply card shows what shifts the curve.$n$, false, $n$2026-10-23T17:36:00+05:30$n$, 3),
($n$2026-10-24-sensex-fourth-fall$n$, '2026-10-24', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex slips for a fourth day while smallcaps tumble almost 3% as oil keeps rising$n$,
  $n$The Sensex fell 125.56 points (0.17%) to 73,123.83 on Friday and the Nifty 50 lost 87.65 points (0.39%) to close at 22,600, after recovering from the day's lows. Smaller companies were hit much harder: the Nifty Midcap 100 fell 2.21% and the Nifty Smallcap 100 dropped 2.94%. Metal (down 2.71%) and realty (down 2.38%) were the weakest sectors. Rising crude, with Brent December futures near $114 a barrel in the afternoon, and Gulf supply fears weighed on mood, while Eternal, Apollo Hospitals and ONGC were among the few Nifty gainers.$n$,
  $n$Oil prices and conflict in West Asia are outside forces that no single company controls, yet they moved the whole market. Scanning such economic and political forces is the macro side of the marketing environment (PESTLE).$n$,
  $n$Kotak Neo (also reported by Business Standard)$n$, $n$https://www.kotakneo.com/news/market-news/sensex-nifty-close-lower-amid-oil-price-surge/$n$, $n$mkt-05$n$, 'draft',
  $n$The Sensex fell just 0.17%. Smallcaps lost almost 3%. Same oil shock, very different damage.$n$,
  $n$A fourth straight down day hid a much bigger fall in smaller companies, metals and real estate. None of the causes started inside these firms. The PESTLE card shows how to read the forces from outside.$n$, false, $n$2026-10-23T16:19:00+05:30$n$, 4),
($n$2026-10-24-adani-power-q2$n$, '2026-10-24', $n$india$n$, $n$RESULTS$n$,
  $n$Adani Power's profit jumps 142% to ₹7,019 crore, helped by ₹2,422 crore of past-period revenue$n$,
  $n$Adani Power's net profit for July–September rose 142% to ₹7,019.32 crore from ₹2,906.46 crore a year earlier, PTI reported. Operating revenue grew 29.8% to ₹17,014.06 crore, as power sold under long-term contracts rose 29.7% to 23.4 billion units and average tariff realisation climbed 12.7% to ₹6.4 per unit. A large part of the jump came from ₹2,422.25 crore of revenue relating to earlier periods, booked mainly after energy charges under some power purchase agreements were revised. The company says it is adding 23,720 MW of new thermal capacity.$n$,
  $n$Revenue is booked when the company's right to it becomes certain, which here happened only after old tariffs were revised. That is why income from past years landed in this quarter and inflated its profit growth.$n$,
  $n$ThePrint (PTI); also reported by Business Today$n$, $n$https://theprint.in/economy/adani-power-net-profit-jumps-142-pc-to-rs-7019-32-cr-in-q2/3079749/$n$, $n$acct-12$n$, 'draft',
  $n$Adani Power's profit more than doubled, but over ₹2,400 crore of the revenue belonged to earlier years.$n$,
  $n$Revised power contracts let Adani Power book old dues this quarter, so the 142% jump overstates its usual earnings growth. When does money earned become revenue? The revenue recognition card explains.$n$, false, $n$2026-10-23T16:45:00+05:30$n$, 5),
($n$2026-10-24-jsw-steel-q2$n$, '2026-10-24', $n$recruiter$n$, $n$RESULTS$n$,
  $n$JSW Steel's profit more than triples to ₹5,359 crore on record sales, but its shares fall 2.8%$n$,
  $n$JSW Steel reported consolidated net profit of ₹5,359 crore for July–September, more than three times the year-ago figure, on revenue of ₹54,486 crore. It sold a record 7.46 million tonnes of steel, up 13%, and produced 7.27 million tonnes of crude steel. Reported EBITDA was ₹10,120 crore, though the company said costlier coking coal and other inputs kept pressure on expenses. Net debt was ₹44,482 crore at the end of September, and JSW plans to spend ₹22,000–24,000 crore on expansion this year, including at Dolvi and Utkal. The stock closed 2.83% lower at ₹1,185.50 on Friday.$n$,
  $n$The ₹22,000–24,000 crore JSW will spend on new plants is capital expenditure: it builds assets that earn for years. Coking coal used up this quarter is revenue expenditure, charged straight against this quarter's profit.$n$,
  $n$Kotak Neo (also reported by Business Today)$n$, $n$https://www.kotakneo.com/news/stocks/jsw-steel-q2-profit-surges-as-revenue-and-sales-rise-share-price-in-focus/$n$, $n$acct-18$n$, 'draft',
  $n$JSW Steel sold more steel than ever and tripled its profit. The market still marked its shares down.$n$,
  $n$Record volumes powered the quarter, while costly coal and a ₹22,000-crore-plus expansion bill sit in the background. Some spending hits profit now and some builds the future. The capital vs revenue card explains the difference.$n$, false, $n$2026-10-23T16:50:00+05:30$n$, 6),
($n$2026-10-24-tata-motors-cv-q2$n$, '2026-10-24', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Tata Motors' truck business swings to ₹1,257 crore profit as volumes rise 42%$n$,
  $n$Tata Motors' commercial vehicle company reported a July–September consolidated net profit of ₹1,257 crore, against a loss of ₹867 crore a year earlier. Revenue from operations rose 36.33% to ₹25,338 crore. Wholesale volumes grew 42% to about 1,35,100 trucks, buses and pickups, with domestic volumes up 30% and exports up 177%. MD and CEO Girish Wagh said commodity costs stayed a headwind through the first half. The company said its tender offer for Italian truck maker Iveco is open until 26 October, with settlement planned for 30 October if it succeeds; its shares fell 4.43% to ₹395.70 before the results were announced.$n$,
  $n$Trucks are bought by fleet operators and businesses, where several people weigh price, running cost and finance before signing. That makes a 42% jump in volumes a story about business buying behaviour, not consumer whim.$n$,
  $n$Business Today (also reported by Forbes India)$n$, $n$https://www.businesstoday.in/markets/stocks/story/tata-motors-q2-net-profit-at-rs-1257-crore-revenue-up-36-shares-update-on-iveco-deal-563321-2026-10-23$n$, $n$mkt-09$n$, 'draft',
  $n$A year ago Tata's truck arm lost ₹867 crore. Now it earns ₹1,257 crore and is bidding for Iveco.$n$,
  $n$Truck sales rose 42% and exports nearly tripled, turning a loss into a profit as Tata Motors' CV business bids for an Italian rival. Fleet owners buy very differently from shoppers. The B2B buying card explains how.$n$, false, $n$2026-10-23T16:29:00+05:30$n$, 7),
($n$2026-10-24-amex-fee-jobs$n$, '2026-10-24', $n$recruiter$n$, $n$JOBS$n$,
  $n$American Express profit rises 28% as cardholders accept a $200 fee rise, yet it cuts 3,500 jobs$n$,
  $n$American Express said third-quarter profit rose 28% to $3.71 billion, helped by higher card spending and fees, the Associated Press reported. Net card fees grew by more than $400 million after the Platinum Card's annual fee went up from $695 to $895, and AP said nearly all customers moved to the higher fee have kept the card. At the same time, Amex plans to cut about 5% of its workforce, roughly 3,500 jobs, its first major cuts in about a decade. CFO Christophe Le Caillec told CNBC the changes would make the company leaner and prepare it for AI by reducing management layers.$n$,
  $n$A 29% fee rise lost almost no Platinum customers, so demand for the card barely responded to price. Inelastic demand like this is why a price increase can raise total revenue.$n$,
  $n$Yahoo Finance (The Independent); also reported by AP via WRAL$n$, $n$https://finance.yahoo.com/technology/ai/articles/amex-slashes-3-500-jobs-202449452.html$n$, $n$econ-03$n$, 'draft',
  $n$Amex raised its Platinum fee by $200 and almost nobody left. It is still cutting 3,500 jobs.$n$,
  $n$Loyal cardholders paid up and lifted profit 28%, while the company trims management layers to prepare for AI. Why did such a big price rise not drive customers away? The price elasticity card has the answer.$n$, false, $n$2026-10-24T01:54:00+05:30$n$, 8),
($n$2026-10-24-wall-street-friday$n$, '2026-10-24', $n$global$n$, $n$MARKETS$n$,
  $n$Dow drops 653 points as oil hits a six-month high and the tech sell-off spreads$n$,
  $n$The Dow Jones fell 652.82 points (1.23%) to 52,215.16 on Friday, the S&P 500 lost 0.52% to 7,623.68 and the Nasdaq slipped 0.21% to 25,955.34, Yahoo Finance reported. The S&P 500 and Nasdaq posted a second weekly loss, while the Dow still ended the week higher. Brent settled at $116.72, a six-month high, and airline shares including United, Delta and American fell as fuel costs rose. Worries about AI spending and financing costs spread beyond tech, and the 10-year US Treasury yield rose but stayed below 5% ahead of next week's Federal Reserve meeting.$n$,
  $n$When safe US government bonds pay close to 5%, holding risky shares has a higher cost: the sure return an investor gives up. That forgone return is the opportunity cost of every rupee or dollar put into stocks.$n$,
  $n$Yahoo Finance (also reported by CNBC)$n$, $n$https://finance.yahoo.com/markets/live/stock-market-today-friday-october-23-dow-sp-500-nasdaq-tesla-meta-093000521.html$n$, $n$econ-06$n$, 'draft',
  $n$Oil at a six-month high, bonds near 5%, airlines hit: why Wall Street ended a rough week lower.$n$,
  $n$Costlier fuel hit airlines, and AI worries spread across the market as safe bond yields climbed. When a safe asset pays well, every risky bet must clear a higher bar. The opportunity cost card explains why.$n$, false, $n$2026-10-24T02:12:00+05:30$n$, 9),
($n$2026-10-24-trishakti-q2$n$, '2026-10-24', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata's Trishakti Industries says equipment-rental revenue more than doubled and profit tripled in Q2$n$,
  $n$Trishakti Industries, a Salt Lake Sector V–based company that rents out cranes, man-lifters, piling rigs and earth-moving machines, said its July–September revenue from operations rose 133% to about ₹15.5 crore from ₹6.65 crore a year earlier. According to the company's press release, EBITDA rose 141% to ₹9.44 crore, a 60.9% margin, and profit after tax rose 223% to ₹5.19 crore. Clients it names include Tata Steel, Adani Group, ONGC and L&T. The company says it has deployed about ₹370 crore of a ₹400-crore equipment spending plan and has set a 'Mission 2030' target of ₹1,000 crore in cumulative capex by 2030.$n$,
  $n$A rental firm's cranes lose value every year they work, so depreciation sits between its 61% EBITDA margin and its much smaller 28% profit margin, along with interest and tax. How that wear is charged decides the profit a fleet business reports.$n$,
  $n$The Tribune (company press release via VMPL/ANI)$n$, $n$https://www.tribuneindia.com/news/business/trishakti-industries-delivers-133-revenue-growth-and-141-ebitda-growth-in-q2fy27-accelerating-its-next-phase-of-expansion$n$, $n$acct-22$n$, 'draft',
  $n$A Sector V company that rents out cranes says its profit tripled, and it plans ₹1,000 crore more in machines.$n$,
  $n$Kolkata's Trishakti Industries, which rents heavy machines to firms like Tata Steel and L&T, reports a 223% jump in profit. But every crane it buys wears out a little each year. The depreciation card shows how that cost reaches the bottom line.$n$, false, $n$2026-10-23T17:57:00+05:30$n$, 10)
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
from news_stories where publish_date = '2026-10-24' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-24' order by rank;
