-- =====================================================================
-- ChaiCase news brief for 2026-10-29: 12 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-29.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-28 7 AM and 2026-10-29 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-29' and (slug is null or slug not in ($n$2026-10-29-fed-holds-rates-two-dissent$n$, $n$2026-10-29-vedanta-bengal-80000-crore$n$, $n$2026-10-29-jio-platforms-debut$n$, $n$2026-10-29-alphabet-cash-flow-negative$n$, $n$2026-10-29-microsoft-azure-48$n$, $n$2026-10-29-hul-q2-sales-15$n$, $n$2026-10-29-oil-back-above-115$n$, $n$2026-10-29-sensex-falls-it-oil$n$, $n$2026-10-29-hero-motocorp-q2$n$, $n$2026-10-29-adani-ports-raises-guidance$n$, $n$2026-10-29-sail-q2-profit-quadruples$n$, $n$2026-10-29-vedanta-q2-record-profit$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-29-fed-holds-rates-two-dissent$n$, '2026-10-29', $n$global$n$, $n$FED$n$,
  $n$US Fed keeps rates at 3.75%-4% after September's hike, but two officials vote for another increase$n$,
  $n$The US Federal Reserve left its benchmark rate range unchanged at 3.75% to 4% on Wednesday, a month after it raised rates by a quarter point in September. The decision was not unanimous: the vote was 10-2, with Governor Lisa Cook and Cleveland Fed President Beth Hammack preferring another 0.25 percentage point increase. The Fed's statement said inflation 'remains elevated', that uncertainty is high partly because of geopolitical developments, and that it wants more information before deciding its next step. It also kept the interest rate it pays banks on their reserves at 3.90%.$n$,
  $n$The Fed's rate is set by a committee that votes, and here two members openly disagreed with the majority. Recording dissent instead of forcing a show of unity is one of the ways a group avoids groupthink, which the card on group decisions explains.$n$,
  $n$US Federal Reserve (FOMC statement); also reported by CNBC$n$, $n$https://www.federalreserve.gov/newsevents/pressreleases/monetary20261028a.htm$n$, $n$ob-18$n$, 'draft',
  $n$The world's most powerful money committee voted 10-2 last night. The two who disagreed wanted rates higher.$n$,
  $n$The US Fed held rates at 3.75%-4% because inflation 'remains elevated', but two members wanted another hike. When the US keeps money costly, money flows out of markets like India's. The group decisions card shows why open dissent makes a committee's choices better.$n$, false, $n$2026-10-28T23:30:00+05:30$n$, 1),
($n$2026-10-29-vedanta-bengal-80000-crore$n$, '2026-10-29', $n$local$n$, $n$BENGAL$n$,
  $n$Vedanta explores ₹70,000-80,000 crore of power and aluminium projects in Bengal, with Asansol in focus$n$,
  $n$Vedanta chairman Anil Agarwal said in Kolkata on Wednesday that his group is exploring investments of ₹70,000-80,000 crore in West Bengal in power generation and an aluminium smelter, after meeting Chief Minister Suvendu Adhikari at the state secretariat. Asansol is being considered because of its coal and the roughly 300 acres Vedanta already holds there, and alumina could come by rail from Vedanta's operations in Odisha. Agarwal said the projects could run within three years with proactive state support, but that coal, water and timely clearances are essential and a feasibility study comes first. The Chief Minister said the projects could create around 10,000 jobs, and claimed Agarwal had cited the change of government as a reason for his renewed interest.$n$,
  $n$Vedanta's interest depends on things outside any company's control: a new state government, access to coal and water, and how fast clearances come. Scanning these political, economic and legal forces before investing is what the PESTLE card describes.$n$,
  $n$ETV Bharat (PTI); also reported by ThePrint$n$, $n$https://www.etvbharat.com/en/business/vedanta-exploring-rs-80000-cr-investment-in-bengal-in-power-aluminium-says-anil-agarwal-enn26102807235$n$, $n$mkt-05$n$, 'draft',
  $n$Up to ₹80,000 crore and maybe 10,000 jobs: Vedanta is eyeing Asansol for a giant aluminium plant.$n$,
  $n$Anil Agarwal met the Chief Minister in Kolkata and said the projects could run within three years, if coal, water and clearances come on time. Nothing is final until a feasibility study is done. The PESTLE card shows the outside forces that decide where such money goes.$n$, true, $n$2026-10-28T20:29:00+05:30$n$, 2),
($n$2026-10-29-jio-platforms-debut$n$, '2026-10-29', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms lists 21% above its IPO price and closes near ₹1,419, becoming India's second most valuable listed company$n$,
  $n$Reliance's Jio Platforms opened at ₹1,358 on both the BSE and NSE on Wednesday, about 21.4% above its IPO price of ₹1,119. The shares kept rising and ended the day around ₹1,419 on the NSE, roughly 27% above the issue price. That gave the company a market value of about ₹13.05 lakh crore, second only to its parent Reliance Industries, and ahead of HDFC Bank, Bharti Airtel and ICICI Bank. Reliance's own shares fell about 3% on the same day.$n$,
  $n$The IPO price was fixed in advance, but on listing day buyers and sellers on the exchange set a new price where their demand and supply met. That price discovery is the market equilibrium the card explains.$n$,
  $n$Outlook Business; also reported by Upstox and HDFC Sky$n$, $n$https://www.outlookindia.com/business/grand-debut-for-jio-platforms-shares-up-nearly-23-pc-becomes-2nd-most-valuable-indian-firm-by-mcap$n$, $n$econ-09$n$, 'draft',
  $n$Bought Jio at ₹1,119? By evening the market said it was worth about ₹1,419.$n$,
  $n$India's biggest IPO opened 21% higher and kept climbing, making Jio worth about ₹13 lakh crore on day one. The listing price was set by trading, not by the company. The market equilibrium card shows how that price is found.$n$, false, $n$2026-10-28T17:45:00+05:30$n$, 3),
($n$2026-10-29-alphabet-cash-flow-negative$n$, '2026-10-29', $n$global$n$, $n$BIG TECH$n$,
  $n$Alphabet's revenue grows 25% to $127.6 billion, but heavy AI spending turns its cash flow negative and shares drop$n$,
  $n$Google's parent Alphabet reported July-September revenue of $127.6 billion, up about 25% and in line with forecasts. Profit per share of $2.12 fell well short of the roughly $3.01 analysts expected, partly because of an $8.7 billion loss on its equity investments. Spending on data centres and chips was about $51 billion in the quarter, which pushed free cash flow below zero; reports put the gap at over $9 billion. The shares fell about 8% in trading right after the results.$n$,
  $n$Money spent on data centres is capital expenditure: it buys assets that will earn for years, so it does not hit the profit line all at once, but it still drains cash today. The capital vs revenue card explains the difference.$n$,
  $n$Yahoo Finance (StockStory); also reported by Financial News (fnnews)$n$, $n$https://finance.yahoo.com/markets/stocks/articles/alphabet-nasdaq-googl-posts-q3-201459872.html$n$, $n$acct-18$n$, 'draft',
  $n$Google earned $127.6 billion in three months, yet more cash went out than came in.$n$,
  $n$Alphabet's sales grew 25%, but about $51 billion of AI spending pushed its free cash flow below zero, and the shares fell about 8%. Spending on long-lasting assets works differently from everyday costs. The capital vs revenue expenditure card explains why.$n$, false, $n$2026-10-29T01:44:00+05:30$n$, 4),
($n$2026-10-29-microsoft-azure-48$n$, '2026-10-29', $n$recruiter$n$, $n$BIG TECH$n$,
  $n$Microsoft's revenue rises 19% to $92.3 billion as Azure cloud grows 48%, and its shares jump in late trading$n$,
  $n$Microsoft reported revenue of $92.3 billion for July-September, up 19% and above the roughly $90.7 billion analysts expected, while net income rose 32% to $36.6 billion. Its Azure cloud business grew 48%, faster than the 42% of the previous quarter, and Microsoft gave Azure's revenue figure, about $33.2 billion, for the first time. Capital spending of about $45.2 billion came in below analysts' estimate of around $50.7 billion, and the shares rose about 3.8% after hours. Its order backlog from business customers, commercial remaining performance obligation, rose 73% to $677 billion.$n$,
  $n$On the same evening, Microsoft grew faster while spending less than expected, and investors rewarded it as Alphabet's shares fell. How a firm builds an edge over close rivals is what the card on competitive advantage explains.$n$,
  $n$Financial News (fnnews); also Microsoft results release$n$, $n$https://en.fnnews.com/news/202610290543166596$n$, $n$mkt-06$n$, 'draft',
  $n$Same night, two tech giants: Microsoft grew faster, spent less than expected, and its shares rose.$n$,
  $n$Azure grew 48% and Microsoft's quarterly revenue reached $92.3 billion, while Alphabet's shares fell. Investors compared the rivals side by side. The Porter's Five Forces card explains how competitive advantage shows up in results.$n$, false, $n$2026-10-29T02:37:00+05:30$n$, 5),
($n$2026-10-29-hul-q2-sales-15$n$, '2026-10-29', $n$recruiter$n$, $n$RESULTS$n$,
  $n$HUL's sales grow about 15% to ₹18,226 crore, but profit rises only 4% to ₹2,790 crore$n$,
  $n$Hindustan Unilever's consolidated net profit rose about 4% to ₹2,790 crore in the July-September quarter from ₹2,685 crore a year earlier, while revenue from operations rose about 15% to ₹18,226 crore. Home care led with 22% underlying sales growth, followed by beauty and wellbeing at 16%; reports put overall volume growth at 7%, its best in several years. The board declared an interim dividend of ₹19 a share. The shares still fell more than 2% on Wednesday morning.$n$,
  $n$Sales at the top of HUL's income statement grew almost four times faster than profit at the bottom, so costs in between must have risen. Reading the whole statement, not just the headline number, is the skill the card teaches.$n$,
  $n$Kotak Neo; also reported by Mint and 5paisa$n$, $n$https://www.kotakneo.com/news/stocks/hul-q2-fy-27-results-share-price-in-focus/$n$, $n$acct-10$n$, 'draft',
  $n$HUL's sales jumped about 15% this quarter. Its profit rose just 4%.$n$,
  $n$HUL's sales rose about 15% while profit grew just 4%, and its shares slipped. A company that hires from every top campus showed how growth at the top can shrink by the bottom line. The reading financial statements card explains how.$n$, false, $n$2026-10-28T11:52:00+05:30$n$, 6),
($n$2026-10-29-oil-back-above-115$n$, '2026-10-29', $n$global$n$, $n$OIL$n$,
  $n$Brent crude climbs back above $115 after the Houthis claim a missile strike on Saudi Arabia's biggest refinery$n$,
  $n$Brent crude rose about 1.2% to $115.3 a barrel on Wednesday morning and US WTI rose to about $101, recovering after a drop of nearly $2 in the previous session. Yemen's Houthi group said it hit Saudi Arabia's largest refinery, which can process 550,000 barrels a day, with a missile; Saudi authorities had not confirmed the attack. Reuters later reported Brent near $115.7, with analysts saying traders expect tighter supply on reports that the US may restart military operations against Iran. For India, which imports most of its oil, high prices mean a bigger import bill and pressure on the rupee and inflation.$n$,
  $n$A strike on a major refinery threatens to cut the oil that reaches the market, so prices rise even before any shortage is confirmed. What shifts supply, and how prices respond, is what the card explains.$n$,
  $n$HDFC Sky; also reported by Business Recorder (Reuters)$n$, $n$https://hdfcsky.com/news/brent-crude-oil-price-today-october-28-2026-brent-above-115-after-saudi-refinery-attack-revives-supply-fears$n$, $n$econ-08$n$, 'draft',
  $n$One claimed missile strike, and oil jumped back above $115. India pays for every dollar.$n$,
  $n$The Houthis said they hit Saudi Arabia's biggest refinery, and Brent recovered the previous day's fall within hours. Saudi Arabia has not confirmed the attack. The law of supply card shows why fear of less oil raises its price.$n$, false, $n$2026-10-28T09:41:00+05:30$n$, 7),
($n$2026-10-29-sensex-falls-it-oil$n$, '2026-10-29', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex falls 353 points as IT and oil shares slide ahead of the Fed decision, while smaller shares rise$n$,
  $n$The Sensex closed 352.64 points, or 0.48%, lower at 73,246.03 on Wednesday, and the Nifty 50 fell 50.90 points to 22,698.85. IT and oil and gas shares dropped about 2% each, with Infosys and Reliance Industries down more than 3%, while auto, pharma, media and consumer durables shares gained about 1%. Smaller companies held up better: the Nifty Midcap index rose 0.4% and the Smallcap index 0.9%. Oil above $115 and caution before the US Federal Reserve's decision weighed on the market, even as Jio Platforms made a strong debut.$n$,
  $n$Oil prices in West Asia and a rate decision in Washington moved Indian shares more than anything Indian companies did that day. These outside forces make up the macro environment the PESTLE card maps.$n$,
  $n$HDFC Sky; also reported by India TV$n$, $n$https://hdfcsky.com/news/market-close-report-today-october-28-2026-sensex-nifty-decline-as-oil-fed-fears-loom-amid-strong-jio-debut$n$, $n$mkt-05$n$, 'draft',
  $n$Jio soared on its first day, yet the Sensex still fell 353 points. Oil and the US Fed were the reason.$n$,
  $n$IT and oil shares dropped about 2% as Brent stayed above $115 and markets waited for the US Fed. Small-company shares still ended higher. The PESTLE card explains the outside forces that move a whole market.$n$, false, $n$2026-10-28T17:52:00+05:30$n$, 8),
($n$2026-10-29-hero-motocorp-q2$n$, '2026-10-29', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Hero MotoCorp's profit rises 42% to ₹1,861 crore, though a ₹397-crore one-off gain does much of the lifting$n$,
  $n$Hero MotoCorp's consolidated net profit rose about 42% to ₹1,861 crore in the July-September quarter from ₹1,309 crore a year earlier, and revenue rose 22.5% to ₹14,971 crore. The result includes a non-recurring gain of about ₹397 crore, linked to a change in its share of an associate company after that company raised fresh capital. On a standalone basis, profit rose only about 4.6% to ₹1,456 crore. Sales rose 10% to 18.68 lakh vehicles, scooters jumped 47% to 2.40 lakh units, and retail sales of its Vida electric scooters grew 76%.$n$,
  $n$Hero labelled the ₹397-crore gain as one-off, so readers can see that the underlying business grew far more slowly than the 42% headline. Telling users everything that matters is the full disclosure convention on the card.$n$,
  $n$Whalesbook; also reported by Autocar Professional$n$, $n$https://www.whalesbook.com/corporate-news/English/auto/Hero-MotoCorp-Q2-Net-Profit-Jumps-42percent-to-Rs-1861-Crore/6ae2020fc6c6dccbb90a3ba1$n$, $n$acct-13$n$, 'draft',
  $n$Hero's profit jumped 42%. Its main business on its own grew less than 5%.$n$,
  $n$Scooter sales rose 47% and Vida electric scooters 76%, but a one-off gain explains much of the profit surge. The company flagged it, so investors could look past the headline. The accounting conventions card explains full disclosure.$n$, false, $n$2026-10-28T19:40:00+05:30$n$, 9),
($n$2026-10-29-adani-ports-raises-guidance$n$, '2026-10-29', $n$india$n$, $n$RESULTS$n$,
  $n$Adani Ports' profit rises 18% to ₹3,682 crore and it raises its forecasts for the year$n$,
  $n$Adani Ports and Special Economic Zone reported a net profit of ₹3,682 crore for the July-September quarter, up 18% from ₹3,120 crore a year earlier. Revenue grew 24% to ₹11,340 crore and EBITDA rose 23% to ₹6,807 crore. Revenue from its international ports jumped 71%, logistics 21% and marine services 57%, while domestic ports grew 13%. Citing a strong first half, the company raised its full-year guidance for revenue, EBITDA and capital spending.$n$,
  $n$Guidance is a company's own forecast of how much business it expects to win, and Adani Ports raised it after a strong half-year. Estimating demand before it happens is what the market measurement card covers.$n$,
  $n$Business Today; also reported by Upstox$n$, $n$https://www.businesstoday.in/markets/stocks/story/adani-ports-q2-earnings-net-profit-rises-18-revenue-crosses-rs-11000-crore-564215-2026-10-28$n$, $n$mkt-10$n$, 'draft',
  $n$India's biggest port operator grew profit 18% and now expects an even bigger year.$n$,
  $n$Adani Ports' revenue rose 24%, led by a 71% jump at its ports abroad, so it lifted its forecasts for the year. Forecasting demand is a skill every company needs. The market measurement card explains how it is done.$n$, false, $n$2026-10-28T13:15:00+05:30$n$, 10),
($n$2026-10-29-sail-q2-profit-quadruples$n$, '2026-10-29', $n$india$n$, $n$RESULTS$n$,
  $n$SAIL's quarterly profit more than quadruples to ₹1,774 crore as revenue rises 20%$n$,
  $n$Steel Authority of India's standalone net profit rose to ₹1,774 crore in the July-September quarter from ₹427 crore a year earlier, a jump of about 315%. Revenue from operations rose about 20% to ₹31,998 crore and EBITDA reached ₹4,561 crore, up from ₹2,829 crore. It sold 5.16 million tonnes of steel, up 5.1%, and its debt fell to ₹20,583 crore by September. For the first half of the year, profit more than tripled to ₹3,410 crore.$n$,
  $n$SAIL's customers are builders, manufacturers and government projects that buy steel in bulk under negotiated contracts. That is business-to-business buying, which the card on the buying centre explains.$n$,
  $n$Business Today; also reported by BW Businessworld and Kotak Neo$n$, $n$https://www.businesstoday.in/markets/stocks/story/sail-shares-in-focus-on-rise-in-q2-net-profit-debt-falls-564137-2026-10-28$n$, $n$mkt-09$n$, 'draft',
  $n$The steelmaker behind Durgapur and Burnpur just made four times last year's profit.$n$,
  $n$SAIL's profit jumped to ₹1,774 crore as it sold 5% more steel and cut its debt. Its buyers are companies and government projects, not shoppers. The B2B buying card shows how such customers decide.$n$, false, $n$2026-10-28T09:16:00+05:30$n$, 11),
($n$2026-10-29-vedanta-q2-record-profit$n$, '2026-10-29', $n$india$n$, $n$RESULTS$n$,
  $n$Vedanta's profit jumps 151% to a record ₹6,202 crore on higher metal prices$n$,
  $n$Vedanta reported a record profit after tax of ₹6,202 crore for the July-September quarter, up 151% from a year earlier, while revenue rose 57% to ₹25,812 crore. EBITDA more than doubled to ₹9,938 crore, and the company credited higher commodity prices, favourable currency movements and higher volumes. Net debt fell by ₹4,624 crore during the quarter to ₹3,675 crore. It declared an interim dividend of ₹5 a share, and its shares rose about 3% on Wednesday.$n$,
  $n$Vedanta does not set the price of zinc or aluminium; global buyers and sellers do, and when those prices rise its profit rises with them. How market prices are set is what the market equilibrium card explains.$n$,
  $n$HDFC Sky; also reported by Kotak Neo$n$, $n$https://hdfcsky.com/news/vedanta-q2-results-shares-rise-2-95-percent-as-profit-jumps-151-percent$n$, $n$econ-09$n$, 'draft',
  $n$The company eyeing Bengal for a smelter just posted a record ₹6,202-crore quarterly profit.$n$,
  $n$Vedanta's profit rose 151% as zinc and aluminium prices climbed, and its net debt fell sharply. Those metal prices are set by global markets, not by Vedanta. The market equilibrium card explains how.$n$, false, $n$2026-10-28T15:11:00+05:30$n$, 12)
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
from news_stories where publish_date = '2026-10-29' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-29' order by rank;
