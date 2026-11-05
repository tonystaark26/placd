-- =====================================================================
-- ChaiCase news brief for 2026-11-05: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-05.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-04 7 AM and 2026-11-05 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-05' and (slug is null or slug not in ($n$2026-11-05-oil-nine-percent-fall-midterms$n$, $n$2026-11-05-dow-surges-midterm-sweep$n$, $n$2026-11-05-sensex-fifth-day-media-metals$n$, $n$2026-11-05-bengal-industrial-policy-preview$n$, $n$2026-11-05-india-services-pmi-four-month-high$n$, $n$2026-11-05-apollo-hospitals-profit-up-32$n$, $n$2026-11-05-exide-profit-up-75$n$, $n$2026-11-05-uber-bookings-up-20$n$, $n$2026-11-05-pfc-profit-dips-2-percent$n$, $n$2026-11-05-rupee-gains-17-paise$n$, $n$2026-11-05-us-ism-services-prices-73$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-05-oil-nine-percent-fall-midterms$n$, '2026-11-05', $n$global$n$, $n$OIL$n$,
  $n$Brent crashes about 9% to near $94.7, its lowest since early September, as traders bet the Iran war may wind down$n$,
  $n$Brent crude fell $8.94, or 8.6%, to about $94.66 a barrel in Wednesday afternoon US trading, its lowest level since September 4, while US crude dropped about 8.3% to $88.08. Traders were pricing in a possible end to the US-Israeli war on Iran after the Republicans lost both houses of Congress and President Trump and Vice President Vance linked the defeat to the war and fuel prices. Trump also told the Financial Times the US had no immediate plans to strike Iran, though a senior Iranian official said the two sides remained far from a deal. A surprise fall in US crude stocks, which the EIA said fell about 865,000 barrels, was not enough to stop the selling.$n$,
  $n$No barrel of oil changed hands differently on Wednesday; what changed was traders' expectation of future supply from the Gulf. Expectations about the future are one of the forces that shift the supply curve, as the law of supply card explains.$n$,
  $n$OilPrice.com; also Reuters via MarineLink$n$, $n$https://oilprice.com/Latest-Energy-News/World-News/Oil-Crashes-9-as-Trump-and-Vance-Blame-Iran-War-for-Midterm-Rout.html$n$, $n$econ-08$n$, 'draft',
  $n$Oil lost almost a tenth of its price in one day, and not a single tanker moved differently.$n$,
  $n$Brent fell to around $94.7 as traders bet that the US election result could bring the Iran war closer to an end. For India, which imports most of its oil, that is welcome news. The law of supply card shows why expectations alone can move a price.$n$, false, $n$2026-11-05T00:00:00+05:30$n$, 1),
($n$2026-11-05-dow-surges-midterm-sweep$n$, '2026-11-05', $n$global$n$, $n$WALL STREET$n$,
  $n$Dow jumps 1,569 points, its best day since April 2025, as Democrats take Congress and Trump accepts the result$n$,
  $n$The Dow Jones Industrial Average rose 1,569.40 points, or 3.03%, to 53,356.12 on Wednesday, while the S&P 500 gained 1.58% to 7,688.62 and the Nasdaq added 1.44% to 25,736.51. Democrats won control of both the House and the Senate in the US midterm elections, and stocks recovered after Trump told newspapers he accepted the result and would work with Democrats. Analysts said a divided Congress is less likely to pass sweeping tax and spending laws, which markets have historically liked. Apple rose about 6% to a record high, while Trump Media fell nearly 25% and Tesla slipped about 3%.$n$,
  $n$An election changed nothing inside American companies overnight, yet their share prices jumped. Political forces outside a firm's control shape its prospects, which is the political part of the PESTLE framework in the marketing environment card.$n$,
  $n$CNBC; also CBS News$n$, $n$https://www.cnbc.com/2026/11/04/stock-market-rally-trump-midterms.html$n$, $n$mkt-05$n$, 'draft',
  $n$America voted, Washington changed hands, and Wall Street had its best day in 19 months.$n$,
  $n$The Dow added 1,569 points after Democrats won Congress and Trump said he would accept the result. Investors cheered the end of uncertainty and the prospect of a divided government. The marketing environment card explains how politics moves business.$n$, false, $n$2026-11-05T03:02:00+05:30$n$, 2),
($n$2026-11-05-sensex-fifth-day-media-metals$n$, '2026-11-05', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex rises 384 points to 77,301 for a fifth straight gain as media and metal shares lead and IT slips$n$,
  $n$The Sensex rose 383.55 points, or 0.50%, to close at 77,301.40 on Wednesday and the Nifty 50 gained 149.75 points, or 0.63%, to 23,960.60, extending the winning run to five sessions. Media shares jumped about 5% and metal and realty about 2%, while IT fell about 1.5%, with TCS, HCL Technologies and Infosys among the biggest Nifty losers. Bharat Electronics, Adani Enterprises and Titan were among the top gainers. Reports credited cheaper crude, solid company earnings and foreign investors, who bought about ₹6,837 crore of Indian shares on Tuesday; advancing shares outnumbered decliners by more than two to one.$n$,
  $n$Prices rise when eager buyers, here returning foreign funds, outnumber willing sellers at the old price. That tug between demand and supply that settles a price is what the market equilibrium card explains.$n$,
  $n$HDFC Sky; also Telangana Today (PTI)$n$, $n$https://hdfcsky.com/news/market-close-report-today-november-4-2026-diwali-party-continues-as-democrats-seize-congress-in-blow-for-trump$n$, $n$econ-09$n$, 'draft',
  $n$Five days, five gains: Dalal Street keeps climbing, but India's IT giants are being left behind.$n$,
  $n$The Sensex closed at 77,301 as media, metal and property shares rose, while TCS and Infosys fell. Foreign buyers kept coming back. The market equilibrium card shows how buyers and sellers set the price.$n$, false, $n$2026-11-04T16:39:00+05:30$n$, 3),
($n$2026-11-05-bengal-industrial-policy-preview$n$, '2026-11-05', $n$local$n$, $n$BENGAL$n$,
  $n$West Bengal is set to unveil a new industrial policy on Thursday; Kolkata business leaders ask for faster approvals, land and skills$n$,
  $n$West Bengal is set to release a new industrial policy on Thursday, November 5, according to The Week, filling a gap left since 2025, when the previous government scrapped industrial incentives. The state had consulted ministers, industrialists and chambers at Nabanna on August 12 before drafting it. Ambuja Neotia chairman Harshvardhan Neotia asked for time-bound single-window clearances, easier access to industrial land and job-linked skills training. Keventer's Mayank Jalan said cold storage uses about 40% of a food processor's power and sought a power tariff waiver or subsidy, while Patton Group's Sanjay Budhia said simpler land laws would be key.$n$,
  $n$Land rules, power subsidies and clearance timelines are decided by government, not by companies, yet they decide where companies invest. These political and legal forces are part of the macro environment in the PESTLE card.$n$,
  $n$The Week$n$, $n$https://www.theweek.in/news/biz-tech/2026/11/04/west-bengal-to-unveil-new-industrial-policy-on-thursday-what-are-industry-giants-expecting.html$n$, $n$mkt-05$n$, 'draft',
  $n$Bengal's first industrial policy since 2025 is due today, and Kolkata's business leaders have a wish list.$n$,
  $n$Industrialists from Ambuja Neotia, Keventer and Patton are asking for quick approvals, land and power support, and say more jobs for young people would be the real test. The marketing environment card explains how government rules shape business.$n$, true, $n$2026-11-04T19:30:00+05:30$n$, 4),
($n$2026-11-05-india-services-pmi-four-month-high$n$, '2026-11-05', $n$india$n$, $n$ECONOMY$n$,
  $n$India's services PMI rises to 55.8 in October, a four-month high, as new orders pick up$n$,
  $n$The HSBC India Services PMI rose to 55.8 in October from 55.2 in September, its highest reading since June, and the composite index covering factories and services edged up to 56.2 from 55.9. New business grew at the fastest pace in four months, and input-cost inflation eased to its lowest since August 2020. Export orders, however, grew at the slowest pace since February 2023, and hiring eased. A reading above 50 means activity is expanding.$n$,
  $n$A PMI turns answers from hundreds of purchasing managers into one number that tells companies whether demand is picking up. Turning survey data into a decision is what the marketing research card teaches.$n$,
  $n$Angel One; also Free Press Journal$n$, $n$https://www.angelone.in/news/economy/india-s-services-pmi-reaches-4-month-peak-in-october-2026$n$, $n$mkt-11$n$, 'draft',
  $n$India's service firms just had their busiest month since June, but foreign customers are cooling.$n$,
  $n$The services PMI rose to 55.8 as new orders grew fastest in four months and cost pressures eased. Export orders slowed to a three-and-a-half-year low. The marketing research card shows how surveys like this become business decisions.$n$, false, $n$2026-11-04T11:36:52+05:30$n$, 5),
($n$2026-11-05-apollo-hospitals-profit-up-32$n$, '2026-11-05', $n$recruiter$n$, $n$APOLLO$n$,
  $n$Apollo Hospitals' quarterly profit rises 32% to ₹630 crore as it plans about 5,800 new beds, including a ramp-up in Kolkata$n$,
  $n$Apollo Hospitals reported consolidated net profit of ₹630 crore for the July-September quarter, up 32% from ₹477 crore a year earlier. Revenue rose 23% to ₹7,615 crore and EBITDA grew 29% to ₹1,191 crore, lifting the margin to 15.64% from 14.95%. The company said growth came from higher patient volumes and complex treatments, with oncology up 28%. It plans to add about 5,800 beds over five years, its Gurugram hospital is due to open this quarter, and newer hospitals including Sonarpur in Kolkata are ramping up.$n$,
  $n$Apollo is betting thousands of crores on beds that will fill only if demand keeps rising, so it must estimate patient demand years ahead. Sizing future demand before building capacity is what the market measurement card covers.$n$,
  $n$Upstox; also Whalesbook$n$, $n$https://upstox.com/news/market-news/earnings/apollo-hospitals-q2-fy-27-results-net-profit-rises-32-yo-y-revenue-grows-to-7-615-crore/article-202996/$n$, $n$mkt-10$n$, 'draft',
  $n$Apollo's profit jumped 32%, and it is planning 5,800 more beds, with a new hospital in Sonarpur ramping up.$n$,
  $n$Revenue rose 23% to ₹7,615 crore on more patients and complex care like cancer treatment. Now the chain is building for demand years away. The market measurement card shows how companies estimate that demand.$n$, false, $n$2026-11-04T19:35:00+05:30$n$, 6),
($n$2026-11-05-exide-profit-up-75$n$, '2026-11-05', $n$local$n$, $n$KOLKATA INC$n$,
  $n$Kolkata-based Exide's quarterly profit jumps 75% to ₹386 crore as margins widen; shares rise up to 7%$n$,
  $n$Exide Industries, the Kolkata-headquartered battery maker, reported standalone net profit of ₹386 crore for the July-September quarter, up 75.1% from ₹221 crore a year earlier. Revenue rose 20.3% to ₹5,026 crore and EBITDA climbed 53% to ₹606 crore, widening the margin to 12.1% from 9.4%, even though the company said input costs stayed high. Its lithium-ion cell subsidiary commissioned a 6 GWh plant on September 23, and Exide has now invested ₹5,352 crore in it. The shares rose nearly 7% during Wednesday's trade.$n$,
  $n$Sales grew 20%, but operating profit (EBITDA) grew 53% and net profit 75% as the margin widened. Tracing how each line of the income statement feeds the bottom line is what the reading the financial statements card teaches.$n$,
  $n$Upstox; also Whalesbook$n$, $n$https://upstox.com/news/market-news/earnings/exide-industries-q2-results-net-profit-soars-75-1-yo-y-to-386-crore-price-hikes-help-ebitda-margin-expansion/article-202964/$n$, $n$acct-10$n$, 'draft',
  $n$A Kolkata battery maker grew sales 20% and profit 75%. Here is how that maths works.$n$,
  $n$Exide's margin widened from 9.4% to 12.1% while it built a lithium-ion cell plant for the electric age. Its shares rose nearly 7%. The reading the financial statements card shows why profit can grow faster than sales.$n$, false, $n$2026-11-04T14:04:00+05:30$n$, 7),
($n$2026-11-05-uber-bookings-up-20$n$, '2026-11-05', $n$global$n$, $n$UBER$n$,
  $n$Uber's gross bookings rise 20% to $59.8 billion, but reported revenue grows only 10% to $14.8 billion$n$,
  $n$Uber said gross bookings, the total value of rides and deliveries on its platform, rose 20% to $59.8 billion in the July-September quarter, while revenue rose 10% to $14.8 billion. The company said changes to its business model cut revenue growth by about 8 percentage points. Trips grew 16% to 4.1 billion and monthly active users rose 14% to 215 million, while adjusted EBITDA climbed 31% to about $3.0 billion. For the December quarter it forecast gross bookings of $63.25 billion to $65.25 billion.$n$,
  $n$Uber handles almost $60 billion of fares but counts only about a quarter of it as its own revenue, depending on when and how much it actually earns. That choice is governed by revenue recognition, explained in the accounting concepts II card.$n$,
  $n$Uber via Business Wire (Yahoo Finance)$n$, $n$https://finance.yahoo.com/markets/stocks/articles/uber-announces-results-third-quarter-115500361.html$n$, $n$acct-12$n$, 'draft',
  $n$Riders paid Uber almost $60 billion in three months, so why is its revenue only $14.8 billion?$n$,
  $n$Bookings grew 20% and trips hit 4.1 billion, but revenue grew just 10% after business model changes. The gap is about what a company is allowed to call its own income. The accounting concepts II card explains revenue recognition.$n$, false, $n$2026-11-04T17:25:00+05:30$n$, 8),
($n$2026-11-05-pfc-profit-dips-2-percent$n$, '2026-11-05', $n$recruiter$n$, $n$PFC$n$,
  $n$Power Finance Corporation's quarterly profit slips 2% to ₹7,682 crore as expenses outpace income$n$,
  $n$Power Finance Corporation, the state-owned lender to the power sector, reported consolidated net profit of ₹7,681.51 crore for the July-September quarter, down about 2% from ₹7,834.39 crore a year earlier. Total income rose 1.15% to ₹29,234.42 crore, but expenses grew more than 3% to ₹19,453.12 crore. Its loan book stood at about ₹11.89 lakh crore at the end of September. The board declared an interim dividend of ₹4.10 per share.$n$,
  $n$Income went up, yet profit went down, because costs rose about three times as fast. Reading the income and expense lines together, rather than only the headline profit, is the skill the reading the financial statements card builds.$n$,
  $n$HDFC Sky (PTI); also Free Press Journal$n$, $n$https://hdfcsky.com/news/pfc-net-profit-dips-marginally-to-over-rs-7681-cr-in-q2$n$, $n$acct-10$n$, 'draft',
  $n$PFC earned more than last year and still made less profit. The answer is in one line of the accounts.$n$,
  $n$The power-sector lender's income rose about 1%, but expenses rose more than 3%, so profit slipped 2% to ₹7,682 crore. It still declared a ₹4.10 dividend. The reading the financial statements card shows where to look.$n$, false, $n$2026-11-04T15:17:00+05:30$n$, 9),
($n$2026-11-05-rupee-gains-17-paise$n$, '2026-11-05', $n$india$n$, $n$RUPEE$n$,
  $n$Rupee gains 17 paise to 94.58 per dollar on cheaper oil, a weaker dollar and foreign inflows$n$,
  $n$The rupee rose 17 paise to settle at a provisional 94.58 against the US dollar on Wednesday, from 94.75 on Tuesday, according to a PTI report. Traders credited lower crude prices, a softer dollar, with the dollar index down 0.53% to 101.18, and continued buying by foreign investors, who bought equities worth ₹6,836.81 crore on Tuesday. Geojit's Vinod Nair said the US midterm outcome had improved global sentiment. Because India imports most of its oil, cheaper crude reduces the demand for dollars.$n$,
  $n$When foreign funds bring dollars in and oil importers need fewer of them, the supply of dollars rises against demand and the rupee's price firms. Exchange rates settle the same way as any market price, as the market equilibrium card explains.$n$,
  $n$Telangana Today (PTI); also DT Next$n$, $n$https://telanganatoday.com/rupee-rises-to-94-58-as-foreign-investor-inflows-support-local-currency$n$, $n$econ-09$n$, 'draft',
  $n$Cheaper oil and foreign money gave the rupee a lift. Here's why both matter for India.$n$,
  $n$The rupee firmed 17 paise to 94.58 as crude eased and foreign investors kept buying Indian shares. Fewer dollars needed and more dollars coming in push the rupee up. The market equilibrium card explains the mechanics.$n$, false, $n$2026-11-04T16:09:00+05:30$n$, 10),
($n$2026-11-05-us-ism-services-prices-73$n$, '2026-11-05', $n$global$n$, $n$US ECONOMY$n$,
  $n$US services activity grows for a 28th month, but the prices index stays high at 73.0 on tariffs and fuel costs$n$,
  $n$The Institute for Supply Management's US services PMI was 54.5 in October, down from 54.9 in September but still showing growth for the 28th month in a row. New orders slowed to 55.9 from 59.8, while employment improved to 51.4. The prices index eased only slightly to 73.0 from 74.0, well above its 12-month average. ISM's Steve Miller said tariffs and fuel costs were the most-cited supply-chain issues and warned that more pricing pressure could come if oil and tariff costs are not eased.$n$,
  $n$When inputs such as fuel and imported goods cost more, firms supply less at each price and pass costs on, which shows up in the prices index. Input costs are a key force that shifts supply, as the law of supply card explains.$n$,
  $n$Institute for Supply Management (PR Newswire)$n$, $n$https://www.prnewswire.com/news-releases/services-pmi-at-54-5-october-2026-ism-services-pmi-report-302928112.html$n$, $n$econ-08$n$, 'draft',
  $n$America's service businesses are still growing, but they are paying a lot more to do it.$n$,
  $n$The US services PMI held at 54.5, yet its prices gauge stayed at 73.0 as tariffs and fuel bit. Rising input costs ripple into what customers pay. The law of supply card explains why.$n$, false, $n$2026-11-04T20:30:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-11-05' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-05' order by rank;
