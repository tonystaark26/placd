-- =====================================================================
-- ChaiCase news brief for 2026-11-06: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-06.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-05 7 AM and 2026-11-06 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-06' and (slug is null or slug not in ($n$2026-11-06-wall-street-ai-chip-selloff$n$, $n$2026-11-06-sensex-jumps-2009-points$n$, $n$2026-11-06-bengal-investment-promotion-policy$n$, $n$2026-11-06-brent-rebounds-tanker-attacks$n$, $n$2026-11-06-bank-of-england-hikes-to-4$n$, $n$2026-11-06-mahindra-profit-up-25$n$, $n$2026-11-06-lic-profit-up-20$n$, $n$2026-11-06-britannia-profit-up-11$n$, $n$2026-11-06-emami-ad-spend-up-38$n$, $n$2026-11-06-berger-paints-profit-up-5$n$, $n$2026-11-06-rupee-flat-94-46$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-06-wall-street-ai-chip-selloff$n$, '2026-11-06', $n$global$n$, $n$WALL STREET$n$,
  $n$Nasdaq sinks 5.5% and the Dow loses 1,833 points as AI chip stocks crash; S&P 500 has its worst day since April 2025$n$,
  $n$One day after a big post-election rally, US stocks fell sharply on Thursday: the S&P 500 dropped 4.4% to 7,353.73, the Dow lost 1,833.06 points, or 3.4%, to 51,523.06, and the Nasdaq fell 5.5% to 24,315.00, putting it in correction territory. AI-linked shares led the fall, with AMD down about 17%, Nvidia down about 9% and CoreWeave down almost 10%. Reports said investors were questioning whether heavy spending on AI data centres will pay off, and that the Democrats' midterm gains raised the possibility of government pauses on data-centre construction amid voter unease about power bills. South Korea's Kospi had already fallen 5.3% earlier in the day.$n$,
  $n$Nothing changed inside Nvidia or AMD on Thursday; what changed was investors' view of the political and regulatory climate around AI data centres. Outside forces like politics and law that a firm cannot control are the macro environment explained in the PESTLE card.$n$,
  $n$The Motley Fool; also AP via Spectrum News$n$, $n$https://www.fool.com/coverage/stock-market-today/2026/11/05/stock-market-today-nov-5-nasdaq-suffers-worst-day-in-18-months-as-ai-trade-comes-under-fire/$n$, $n$mkt-05$n$, 'draft',
  $n$Wall Street's AI darlings lost a fortune in one day, and the trigger came from voters, not from the companies.$n$,
  $n$The Nasdaq fell 5.5% as chip stocks crashed, a day after a record-setting rally. Investors fear new limits on power-hungry data centres. The marketing environment card explains how politics can reprice an entire industry.$n$, false, $n$2026-11-06T03:25:00+05:30$n$, 1),
($n$2026-11-06-sensex-jumps-2009-points$n$, '2026-11-06', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex soars 2,009 points to 79,310 for a sixth straight gain, its longest winning run in a year$n$,
  $n$The Sensex jumped 2,008.61 points, or 2.6%, to close at 79,310.01 on Thursday and the Nifty 50 rose 576 points, or 2.4%, to 24,536.60, the sixth gain in a row. Over those six sessions both indices have risen more than 8%, though they are still down about 6-7% for 2026. Auto, financial and capital-market shares led, with Bajaj Finance up about 7.7% and Maruti Suzuki up about 5.5%. Reports credited the previous day's fall in crude oil, hopes raised by the US midterm results and foreign investors, who bought ₹7,284 crore of Indian shares on Wednesday, their biggest single-day purchase since October 2025.$n$,
  $n$When foreign funds rush in to buy and few holders want to sell at the old price, prices must rise until buyers and sellers balance again. That tug of war that settles a price is what the market equilibrium card explains.$n$,
  $n$HDFC Sky; also PTI via HDFC Sky$n$, $n$https://hdfcsky.com/news/market-close-report-today-november-5-2026-nifty-sensex-post-blockbuster-gains-as-stocks-continue-to-celebrate-diwali$n$, $n$econ-09$n$, 'draft',
  $n$Six days, six gains, and over 8% up: Dalal Street just had its best winning run in a year.$n$,
  $n$The Sensex added 2,009 points in a single day as foreign buyers made their biggest purchase in more than a year. Cheaper oil helped too. The market equilibrium card shows how eager buyers push a price up.$n$, false, $n$2026-11-05T16:31:00+05:30$n$, 2),
($n$2026-11-06-bengal-investment-promotion-policy$n$, '2026-11-06', $n$local$n$, $n$BENGAL$n$,
  $n$Bengal unveils its Investment Promotion Policy 2026, offering incentives of up to 120% of eligible investment$n$,
  $n$Chief Minister Suvendu Adhikari unveiled the West Bengal Investment Promotion Policy, 2026 on Thursday, aimed at manufacturing, advanced technology, clean energy and strategic sectors such as defence, semiconductors and electric mobility. Incentives tied to fixed capital investment are set at 100% for regular units, 110% for thrust-sector units and up to 120% for units in priority areas, paid over 10 years after production starts. New investments get an electricity tariff exemption for up to five years, and the state will pay employers' EPF contributions for some workers, including 100% for women and transgender employees in MSMEs for 10 years. The government also promised time-bound clearances and a dedicated 'buddy' official for each investor, while about ₹50,000 crore of incentives promised by the previous government remain unpaid.$n$,
  $n$Tax breaks, power waivers and land rules are set by government, not by companies, yet they decide where companies build factories. These political and legal forces belong to the macro environment in the PESTLE card.$n$,
  $n$The Week; also Business Standard$n$, $n$https://www.theweek.in/news/biz-tech/2026/11/05/suvendu-adhikari-unveils-bengal-industrial-policy.html$n$, $n$mkt-05$n$, 'draft',
  $n$Bengal now offers up to 120% back on new factories. Could that bring jobs home to Kolkata's graduates?$n$,
  $n$The new policy pays back investment over 10 years, waives power tariffs and helps with workers' EPF, especially for women. The test will be whether investors actually come. The marketing environment card explains how government shapes business decisions.$n$, true, $n$2026-11-05T22:16:00+05:30$n$, 3),
($n$2026-11-06-brent-rebounds-tanker-attacks$n$, '2026-11-06', $n$global$n$, $n$OIL$n$,
  $n$Brent jumps nearly 4% to $98.29 as fresh tanker attacks revive supply fears a day after its 9% plunge$n$,
  $n$Brent crude settled up $3.67, or 3.88%, at $98.29 a barrel on Thursday, and US crude rose 2.72% to $90.52, a day after both fell more than 8% to their lowest closes since August 31. Reuters reported that at least five vessels had been hit since Sunday, and Iran's Revolutionary Guard said two tankers and a tugboat caught fire after using unauthorised routes through the Strait of Hormuz. Saudi Arabia also warned of possible danger at its Red Sea export hub at Yanbu. Eurasia Group said renewed escalation could push Brent to $110-125 a barrel.$n$,
  $n$The oil in the ground did not change; the risk of getting it to buyers did. Anything that threatens how much sellers can deliver shifts the supply curve, as the law of supply card explains.$n$,
  $n$Reuters via Yahoo Finance; also The National$n$, $n$https://ca.finance.yahoo.com/news/oil-falls-fourth-day-expectations-045943628.html$n$, $n$econ-08$n$, 'draft',
  $n$Oil crashed 9% one day and bounced almost 4% the next. One sea route explains both moves.$n$,
  $n$Brent climbed back to $98 after new attacks on tankers near the Strait of Hormuz. For India, which imports most of its oil, these swings matter for prices and the rupee. The law of supply card shows why fear alone can move supply.$n$, false, $n$2026-11-06T01:45:00+05:30$n$, 4),
($n$2026-11-06-bank-of-england-hikes-to-4$n$, '2026-11-06', $n$global$n$, $n$RATES$n$,
  $n$Bank of England raises rates to 4%, its first hike since August 2023, and warns UK inflation could near 5%$n$,
  $n$The Bank of England raised its key interest rate by 0.25 percentage point to 4% on Thursday, its first increase since August 2023. The Monetary Policy Committee voted 8-1, with Catherine Mann wanting a bigger rise to 4.25%. The Bank expects UK inflation, 3.5% in September, to reach about 5% by mid-2027 because the US-Iran war has pushed up energy prices. Governor Andrew Bailey said he could see the argument for a further increase unless there is real progress towards settling the Middle East conflict.$n$,
  $n$An interest rate is the price of borrowing money, and raising it makes people and firms borrow and spend less. That inverse link between price and quantity demanded is the law of demand.$n$,
  $n$CNBC; also Bank of England$n$, $n$https://www.cnbc.com/2026/11/05/interest-rates-inflation-uk.html$n$, $n$econ-01$n$, 'draft',
  $n$Britain just made borrowing dearer for the first time in three years, all because of an oil war far away.$n$,
  $n$The Bank of England lifted rates to 4% to fight energy-driven inflation it expects to near 5%. Higher rates cool spending by making loans costlier. The law of demand card explains why a higher price means less borrowing.$n$, false, $n$2026-11-05T17:31:00+05:30$n$, 5),
($n$2026-11-06-mahindra-profit-up-25$n$, '2026-11-06', $n$recruiter$n$, $n$M&M$n$,
  $n$Mahindra & Mahindra's quarterly profit rises 25% to ₹4,588 crore on its SUV business; shares jump over 6%$n$,
  $n$Mahindra & Mahindra reported consolidated net profit of ₹4,588 crore for the July-September quarter, up 25% from ₹3,673 crore a year earlier, on revenue that also grew 25% to ₹57,553 crore. The auto business drove the growth, with its profit up 55% and total vehicle sales up 26% to 3,30,896 units, while the farm business weakened as tractor sales fell 6%. The company reported an SUV market share of 24.3% and said electric SUVs made up 30.1% of revenue. Its shares rose more than 6.5% to ₹3,143.95 on Thursday.$n$,
  $n$Holding about a quarter of India's SUV market lets Mahindra grow faster than rivals in a crowded field. How a company builds an edge against competitors is what the Porter's Five Forces and competitive advantage card explores.$n$,
  $n$Business Today; also Upstox$n$, $n$https://www.businesstoday.in/markets/stocks/story/mm-q2-results-profit-jumps-25-to-rs-4588-crore-shares-rally-6-5-565874-2026-11-05$n$, $n$mkt-06$n$, 'draft',
  $n$Mahindra's SUVs are on a roll: auto profit up 55%, and about one in four SUVs sold in India is theirs.$n$,
  $n$M&M's quarterly profit rose 25% to ₹4,588 crore, even as tractor sales slipped. Investors pushed the stock up over 6%. The Porter's Five Forces card explains how a strong market position becomes profit.$n$, false, $n$2026-11-05T13:47:00+05:30$n$, 6),
($n$2026-11-06-lic-profit-up-20$n$, '2026-11-06', $n$india$n$, $n$LIC$n$,
  $n$LIC's quarterly profit rises 20% to ₹12,076 crore as net premium income grows 16% to ₹1.47 lakh crore$n$,
  $n$Life Insurance Corporation of India reported standalone net profit of ₹12,076 crore for the July-September quarter, up 20.1% from ₹10,053 crore a year earlier, though down 10.5% from the June quarter. Net premium income rose 16.2% to ₹1,47,018 crore. For the first half of the year, the value of new business (VNB), a measure of the future profit expected from policies sold, rose 34% to ₹6,846 crore, and the VNB margin improved to 22.3% from 17.6%. Its solvency ratio rose to 2.35 from 2.13, and the results are unaudited.$n$,
  $n$VNB values today the profits a new policy is expected to earn over all its future years, which is the same idea as valuing a customer over a lifetime of purchases. That is the logic of the customer lifetime value card.$n$,
  $n$Free Press Journal; also Upstox$n$, $n$https://www.freepressjournal.in/business/lic-q2-profit-jumps-20-to-12076-crore-premium-income-rises-16-to-147-lakh-crore$n$, $n$mkt-03$n$, 'draft',
  $n$LIC earned ₹12,076 crore in three months, but the number to watch is the profit still to come.$n$,
  $n$LIC's profit rose 20% and the expected future profit from its new policies grew 34%. Insurers value customers over decades, not quarters. The customer lifetime value card explains how.$n$, false, $n$2026-11-05T18:14:00+05:30$n$, 7),
($n$2026-11-06-britannia-profit-up-11$n$, '2026-11-06', $n$recruiter$n$, $n$BRITANNIA$n$,
  $n$Kolkata-headquartered Britannia's profit rises 10.8% to ₹726 crore as volumes grow 13%, but margins narrow$n$,
  $n$Britannia Industries reported consolidated net profit of ₹725.99 crore for the July-September quarter, up 10.8% from ₹655.06 crore a year earlier. Revenue from operations rose 15.6% to ₹5,597.79 crore, helped by 13% growth in sales volumes. Because costs grew faster than sales, the EBITDA margin narrowed to about 18.2% from 19.7%, which reports linked to higher raw material costs. CEO Rakshit Hargave said the company sustained strong top-line momentum across channels and key states, with bakery and international business also growing.$n$,
  $n$Sales grew almost 16%, but profit grew only about 11%, because expenses rose faster than revenue. Reading revenue, costs and margins together, not only the headline profit, is the skill the reading the financial statements card builds.$n$,
  $n$Upstox; also Investywise and Whalesbook$n$, $n$https://upstox.com/news/market-news/earnings/q2-results-live-updates-bharti-airtel-lic-m-and-m-titan-ongc-britannia-lg-bharat-forge-others-to-declare-earnings/liveblog-203021/$n$, $n$acct-10$n$, 'draft',
  $n$Indians bought 13% more Britannia biscuits, but the Kolkata company kept a smaller slice of each rupee.$n$,
  $n$Revenue rose almost 16% to ₹5,598 crore while profit rose 10.8%, as rising costs squeezed margins. The gap between sales growth and profit growth tells the real story. The reading the financial statements card shows where to look.$n$, false, $n$2026-11-05T18:50:00+05:30$n$, 8),
($n$2026-11-06-emami-ad-spend-up-38$n$, '2026-11-06', $n$local$n$, $n$KOLKATA INC$n$,
  $n$Kolkata's Emami grows revenue 36% to ₹1,088 crore and lifts ad spend 38%, but quarterly profit slips 3%$n$,
  $n$Emami, the Kolkata-based maker of BoroPlus and Navratna, reported consolidated revenue of ₹1,087.65 crore for the July-September quarter, up 36.2% from ₹798.51 crore, with its domestic business up 49% and volumes up 43%. Recent acquisitions, including a controlling stake in Axiom Ayurveda and 60% of IncNut Digital, add to the comparison with last year. Advertising spend rose 37.9% to ₹215.70 crore and EBITDA grew 25% to ₹222 crore, but profit after tax fell about 3% to ₹144 crore, which reports linked to higher tax expense. Skin care grew 31% and hair and scalp care 30%.$n$,
  $n$Advertising builds brands that last for years, yet accountants charge it in full against the current quarter's profit. Why some spending is treated as a cost of the year while other spending is capitalised is explained in the capital vs revenue expenditure card.$n$,
  $n$Storyboard18; also Multibagg$n$, $n$https://www.storyboard18.com/brand-marketing/emamis-ad-spend-jumps-38-to-rs-216-crore-in-q2-fy27-114135.htm$n$, $n$acct-18$n$, 'draft',
  $n$The Kolkata company behind BoroPlus grew sales 36% and spent 38% more on ads, yet earned a little less.$n$,
  $n$Emami's revenue jumped to ₹1,088 crore and volumes rose 43%, but higher costs and tax pulled profit down 3%. Brand building shows up as a cost today. The capital vs revenue expenditure card explains why.$n$, false, $n$2026-11-05T16:28:29+05:30$n$, 9),
($n$2026-11-06-berger-paints-profit-up-5$n$, '2026-11-06', $n$local$n$, $n$KOLKATA INC$n$,
  $n$Kolkata-based Berger Paints' profit rises 5.2% to ₹217 crore as revenue grows 13%; it keeps raising prices$n$,
  $n$Berger Paints reported net profit of ₹217.1 crore for the July-September quarter, up 5.2% from ₹206.4 crore a year earlier. Revenue from operations rose 13.2% to ₹3,200.4 crore, but EBITDA grew only 5.2% to ₹370.7 crore. The company said it kept raising prices in stages to offset raw material inflation, while its industrial, construction chemicals and international businesses supported growth. Its shares closed about 2% higher at ₹510.20.$n$,
  $n$When the cost of raw materials rises, a company can make the same paint only at a higher price, so it raises prices step by step. Input costs are a key force that shifts supply, as the law of supply card explains.$n$,
  $n$Business Today; also Upstox$n$, $n$https://www.businesstoday.in/markets/stocks/story/berger-paints-q2-earnings-net-profit-rises-to-rs-217-crore-revenue-at-rs-3200-crore-565979-2026-11-05$n$, $n$econ-08$n$, 'draft',
  $n$Paint is getting pricier, and Kolkata's Berger explains why: its raw materials keep costing more.$n$,
  $n$Berger grew revenue 13% to ₹3,200 crore, but profit rose only 5% as input costs bit. So it is raising prices in stages. The law of supply card shows how costs ripple into prices.$n$, false, $n$2026-11-05T16:39:00+05:30$n$, 10),
($n$2026-11-06-rupee-flat-94-46$n$, '2026-11-06', $n$india$n$, $n$RUPEE$n$,
  $n$Rupee settles flat at 94.46 per dollar as cheaper oil and a firm dollar cancel out$n$,
  $n$The rupee ended unchanged at a provisional 94.46 against the US dollar on Thursday, according to a PTI report, after opening at 94.36 and slipping to 94.57 during the day. Lower crude prices and continued foreign buying supported it, while a firm dollar weighed on it; foreign investors bought ₹7,284.03 crore of Indian shares on Wednesday. On Wednesday the rupee had gained 29 paise. A Kotak NEO analyst credited the RBI's management for keeping the currency orderly.$n$,
  $n$A currency's price settles where dollars supplied meet dollars demanded; on Thursday the push from foreign inflows and the pull from a firmer dollar balanced out. That balance point is what the market equilibrium card explains.$n$,
  $n$HDFC Sky (PTI); also Telangana Today$n$, $n$https://hdfcsky.com/news/rupee-settles-flat-at-94-46-against-us-dollar$n$, $n$econ-09$n$, 'draft',
  $n$Cheaper oil pulled the rupee up, a strong dollar pulled it down, and it ended exactly where it started.$n$,
  $n$The rupee closed flat at 94.46 after a tug of war between foreign inflows and a firm greenback. Two equal forces left the price unchanged. The market equilibrium card explains why.$n$, false, $n$2026-11-05T16:10:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-11-06' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-06' order by rank;
