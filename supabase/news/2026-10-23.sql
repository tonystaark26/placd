-- =====================================================================
-- ChaiCase news brief for 2026-10-23: 12 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-23.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-22 7 AM and 2026-10-23 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-23' and (slug is null or slug not in ($n$2026-10-23-jio-ipo-day-two$n$, $n$2026-10-23-brent-five-month-high$n$, $n$2026-10-23-sensex-third-fall$n$, $n$2026-10-23-swiggy-q2$n$, $n$2026-10-23-hpcl-q2$n$, $n$2026-10-23-rupee-94-81$n$, $n$2026-10-23-wall-street-tech-selloff$n$, $n$2026-10-23-coal-stocks-power-plants$n$, $n$2026-10-23-nestle-fssai-claims$n$, $n$2026-10-23-fusion-cx-listing$n$, $n$2026-10-23-havells-q2$n$, $n$2026-10-23-hermes-china-slowdown$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-23-jio-ipo-day-two$n$, '2026-10-23', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms IPO climbs to 4.38 times subscribed on day two as retail investors fill their quota$n$,
  $n$By 3 pm on Thursday, bids for Jio Platforms' ₹30,213-crore IPO covered about 86.46 crore shares against 19.75 crore on offer, or 4.38 times, up from 3.04 times on day one. Institutional buyers (QIBs) bid for 10.07 times their portion and wealthy individuals (NIIs) for 4.60 times. The retail quota, only 0.73 times filled on Wednesday, reached 1.40 times. The price band is ₹1,065–1,119 a share, and the issue closes today, 23 October, with listing tentatively set for 28 October. Grey-market dealers were quoting an unofficial premium of about ₹247 a share on Thursday morning.$n$,
  $n$At a fixed price band, every category now wants more shares than are on offer, which is a shortage. The grey-market premium is traders' guess at the higher price where demand and supply would actually meet.$n$,
  $n$HDFC Sky (also reported by IIFL and ThePrint)$n$, $n$https://hdfcsky.com/news/jio-platforms-ipo-subscription-hits-4-38x-by-3-pm-ist-on-day-2$n$, $n$econ-09$n$, 'draft',
  $n$Small investors held back on day one. By day two they had bid for 1.4 times their share of Jio.$n$,
  $n$Jio's IPO is now oversubscribed in every category, and today is the last day to bid. When a fixed price leaves more buyers than shares, someone misses out. The market equilibrium card explains the shortage.$n$, false, $n$2026-10-22T15:38:24+05:30$n$, 1),
($n$2026-10-23-brent-five-month-high$n$, '2026-10-23', $n$global$n$, $n$OIL$n$,
  $n$Brent hits a five-month high above $111 after Houthi attacks in Saudi Arabia$n$,
  $n$Oil rose about 2% on Thursday, with Brent at $111.24 a barrel by mid-morning in New York and on course for its highest close since 18 May, Reuters reported. Prices jumped after Yemen's Houthis attacked targets in Saudi Arabia, and Reuters said Saudi Aramco told staff to evacuate its Dhahran headquarters. Analysts said Middle East exports had recovered to about 17 million barrels a day, close to pre-war levels, but attacks on ships and Saudi facilities outweighed that. US refiner Valero posted its highest-ever quarterly profit as the conflict pushed refining margins up.$n$,
  $n$Even with exports close to normal, the risk that attacks cut future supply makes sellers ask more today. Expected supply disruption is a classic factor that shifts the supply curve to the left.$n$,
  $n$The Korea Times (Reuters)$n$, $n$https://www.koreatimes.co.kr/world/20261023/oil-hits-5-month-high-as-houthi-attacks-stoke-supply-fears$n$, $n$econ-08$n$, 'draft',
  $n$Gulf oil exports are almost back to normal, yet oil just hit a five-month high. Fear is doing the work.$n$,
  $n$Houthi strikes on Saudi Arabia pushed Brent above $111 even though barrels are still flowing. Markets price the supply they expect tomorrow, not just today's. The law of supply card shows what shifts the curve.$n$, false, $n$2026-10-22T21:04:02+05:30$n$, 2),
($n$2026-10-23-sensex-third-fall$n$, '2026-10-23', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex sheds 460 points for a third straight fall as oil, war fears and rate-hike worries weigh$n$,
  $n$The Sensex fell 460.30 points (0.62%) to 73,249.39 and the Nifty 50 lost 123.70 points (0.54%) to 22,687.65 on Thursday, after the Sensex was down more than 600 points at one stage. All 11 major sector indices ended lower, and midcap and smallcap indices fell harder, by about 0.9% and 1.1%. HDFC Bank and Reliance Industries pulled the Nifty down the most, while ICICI Bank, Bajaj Finance and SBI cushioned the fall. Foreign investors sold shares worth ₹3,458.70 crore, according to exchange data reported by PTI.$n$,
  $n$High oil prices, conflict in West Asia and the chance of more RBI rate hikes are all forces outside any one company's control. Scanning those political and economic forces is what the macro (PESTLE) environment covers.$n$,
  $n$DSIJ (also reported by ThePrint/PTI)$n$, $n$https://insights.dsij.in/dsijarticledetail/closing-bell-sensex-falls-460-points-nifty-50-closes-below-22700-as-brent-crude-crosses-usd-110-60120$n$, $n$mkt-05$n$, 'draft',
  $n$Every one of the 11 sector indices fell. Three days, three losses: here's what is weighing on Dalal Street.$n$,
  $n$Oil, Gulf attacks and talk of more rate hikes dragged the market down for a third day. None of these start inside a company, yet all of them hit its share price. The PESTLE card shows how to read that bigger picture.$n$, false, $n$2026-10-22T16:10:00+05:30$n$, 3),
($n$2026-10-23-swiggy-q2$n$, '2026-10-23', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Swiggy's loss narrows to ₹922 crore as revenue rises 36%, but Instamart still loses ₹895 crore$n$,
  $n$Swiggy reported a July–September net loss of ₹922 crore, smaller than ₹1,092 crore a year ago but wider than ₹791 crore in the June quarter. Revenue from operations rose 36.1% to ₹7,571 crore. Food delivery order value grew 17.7% to ₹10,054 crore and earned record adjusted EBITDA of ₹341 crore. The Instamart quick-commerce arm grew order value 31.4% to ₹9,230 crore and added 69 dark stores to reach 1,240, but lost ₹895 crore. CEO Sriharsha Majety said differentiation will decide the winners in quick commerce; Swiggy's shares had closed more than 5% lower before the results came out.$n$,
  $n$With speed and wide selection now offered by every rival, Swiggy says it will compete on a better-curated range rather than sheer size. Choosing how to stand apart in a crowded market is what competitive advantage and Porter's five forces are about.$n$,
  $n$Business Today (also reported by Upstox)$n$, $n$https://www.businesstoday.in/markets/trending-stocks/story/swiggy-q2-results-loss-narrows-to-rs-922-cr-revenue-jumps-36-instamart-loss-at-rs-895-cr-563095-2026-10-22$n$, $n$mkt-06$n$, 'draft',
  $n$A day after Blinkit doubled profit, Swiggy's Instamart lost ₹895 crore. Same race, different results.$n$,
  $n$Swiggy's food delivery had its best quarter ever, but quick commerce still bleeds cash with 1,240 dark stores. Its CEO says speed is now standard and only differentiation wins. Porter's five forces card explains why.$n$, true, $n$2026-10-22T16:33:43+05:30$n$, 4),
($n$2026-10-23-hpcl-q2$n$, '2026-10-23', $n$india$n$, $n$RESULTS$n$,
  $n$HPCL returns to profit with ₹3,483 crore, as refining gains offset losses on fuel sales$n$,
  $n$Hindustan Petroleum's standalone net profit for July–September was ₹3,483 crore, down 9% from ₹3,830 crore a year ago but a sharp turnaround from a big loss in the June quarter. Costly crude squeezed marketing margins: Elara Capital estimated oil companies lost about ₹24 a litre on diesel. Refining helped, with the average gross refining margin for April–September at $27.89 a barrel against $5.95 a year earlier. Revenue included ₹3,960 crore of government compensation for selling cooking gas below cost, while HPCL disclosed a further ₹18,049 crore of LPG losses that it has not recognised in its accounts.$n$,
  $n$HPCL booked only the LPG compensation it is now owed and left the larger uncompensated amount off its income. Holding back gains that are not yet certain is how contingent assets are treated.$n$,
  $n$Business Standard (Reuters; also reported by Free Press Journal)$n$, $n$https://www.business-standard.com/companies/quarterly-results/hpcl-q2-profit-falls-9-to-3-483-cr-on-higher-costs-tax-expenses-126102201213_1.html$n$, $n$acct-19$n$, 'draft',
  $n$HPCL lost money on diesel and still made ₹3,483 crore. And ₹18,000 crore more sits off its books.$n$,
  $n$Refining profits rescued India's first oil marketer to report results, while a huge gap from cheap cooking gas stays unrecognised. Why can't a company count money it hopes to get? The contingent assets card answers.$n$, false, $n$2026-10-22T18:13:02+05:30$n$, 5),
($n$2026-10-23-rupee-94-81$n$, '2026-10-23', $n$india$n$, $n$RUPEE$n$,
  $n$Rupee falls 43 paise to 94.81 a dollar as oil climbs and foreign investors sell$n$,
  $n$The rupee closed at 94.81 against the US dollar on Thursday, down 43 paise, after touching 94.94 during the day, PTI reported. A day earlier it had gained 53 paise to 94.38. Dealers blamed higher crude prices after attacks on Saudi energy sites and weak Indian shares, as foreign investors sold equities worth ₹3,458.70 crore. A softer dollar index and lower US bond yields limited the fall. Traders said dollar inflows linked to the Jio IPO and hopes of a US trade deal had helped, but warned that oil near $120 could test that support.$n$,
  $n$Costlier oil means Indian importers need more dollars to buy the same barrels, so demand for dollars rises at every exchange rate. That shift of the whole demand curve, not a move along it, pushes the rupee's price down.$n$,
  $n$ThePrint (PTI)$n$, $n$https://theprint.in/economy/rupee-slumps-43-paise-to-close-at-94-81-against-us-dollar/3079090/$n$, $n$econ-02$n$, 'draft',
  $n$The rupee gave back a whole day's gain in one session. Blame oil and foreign investors heading for the exit.$n$,
  $n$Pricier crude means India needs more dollars, while foreign sellers take dollars out. Both push the rupee down. The card on change in demand versus quantity demanded explains the mechanics.$n$, false, $n$2026-10-22T20:46:40+05:30$n$, 6),
($n$2026-10-23-wall-street-tech-selloff$n$, '2026-10-23', $n$global$n$, $n$MARKETS$n$,
  $n$Nasdaq tumbles 2.6% as AI spending worries return; Meta shares sink nearly 7%$n$,
  $n$US technology shares sold off on Thursday: the Nasdaq Composite fell 2.6% and the S&P 500 1.2%, while the Dow Jones ended almost unchanged. Chip stocks led the fall as worries about the cost of the AI build-out resurfaced after results from Meta and Tesla. Meta dropped nearly 7% as investors weighed its quarterly results, and AI cloud provider CoreWeave sank 10% on concerns about borrowing costs for debt-heavy companies. Investors moved into bonds, pushing Treasury yields lower, while oil rose to a five-month high.$n$,
  $n$Data centres and chips are capital expenditure: big upfront costs expected to pay back over many years. Investors are now asking whether that long-term spending, often funded with debt, will earn its return.$n$,
  $n$Yahoo Finance$n$, $n$https://finance.yahoo.com/markets/article/stock-market-today-thursday-october-22-dow-sp-500-nasdaq-tesla-meta-112217857.html$n$, $n$acct-18$n$, 'draft',
  $n$Big Tech's AI spending spree spooked investors: the Nasdaq had its worst day in months.$n$,
  $n$Meta fell nearly 7% and chip stocks slid as investors questioned the bill for AI data centres. Spending billions today for returns years away is a capital decision. The capital versus revenue card explains.$n$, false, $n$2026-10-23T04:40:58+05:30$n$, 7),
($n$2026-10-23-coal-stocks-power-plants$n$, '2026-10-23', $n$india$n$, $n$ENERGY$n$,
  $n$96 power plants are down to under three days of coal as electricity demand jumps$n$,
  $n$The number of Indian power plants with critically low coal stocks, enough for less than three days of generation, rose to 96 on 19 October from 60 in mid-September, according to Central Electricity Authority data reported by Reuters. A senior power ministry official said supply should normalise soon, with a record 2.6 million tonnes of coal now reaching plants every day. Peak electricity demand is about 45–50 gigawatts higher than a year ago because of hotter weather, weak rainfall that cut hydropower and higher industrial output. Indian Railways separately said its coal loading in October was up 22.5% on last year.$n$,
  $n$Power plants keep a buffer of coal so they never run dry while waiting for the next delivery. Stock below a few days' use is the 'danger level' in inventory planning, the point at which emergency supplies are rushed in.$n$,
  $n$Business Standard (Reuters)$n$, $n$https://www.business-standard.com/industry/news/coal-supply-to-power-plants-to-normalise-soon-as-india-ramps-up-deliveries-126102200303_1.html$n$, $n$acct-01$n$, 'draft',
  $n$96 power plants have less than three days of coal left. Here's the inventory rule that sets off the alarm.$n$,
  $n$Hot weather, weak rain and busy factories pushed power demand far above last year, and coal stocks ran low. Railways are now moving record loads. The stock levels card explains reorder and danger levels.$n$, false, $n$2026-10-22T11:09:13+05:30$n$, 8),
($n$2026-10-23-nestle-fssai-claims$n$, '2026-10-23', $n$recruiter$n$, $n$REGULATION$n$,
  $n$Nestle India and Zydus Wellness shares fall after FSSAI questions health claims on baby food and Complan$n$,
  $n$Nestle India fell about 3% and Zydus Wellness about 2% on Thursday after the food regulator FSSAI issued notices over claims on some nutrition products. FSSAI asked Nestle for scientific proof that the whey protein in Lactogen Pro 1 is easy to digest and questioned a claim that ingredients in NAN Excella Pro Stage 1 support the immune system. Zydus was asked to back claims for Complan such as '2X Faster Growth'. The notices seek explanations and are not a final finding of wrongdoing; Nestle said it had already replied on the same points raised in September.$n$,
  $n$Health claims on products for babies and children face strict rules because parents can't easily check them. When a claim goes beyond what evidence supports, it moves from persuasion into misleading marketing.$n$,
  $n$Kotak Neo (also reported by Upstox)$n$, $n$https://www.kotakneo.com/news/stocks/nestle-zydus-wellness-shares-fall-after-fssai-notices/$n$, $n$mkt-12$n$, 'draft',
  $n$'Easy to digest', '2X faster growth': India's food regulator wants proof, and Nestle and Complan shares fell.$n$,
  $n$FSSAI has asked two big food brands to back up health claims on their packs. For a marketer, a bold claim without evidence can cost trust and share price. The marketing ethics card shows where the line is.$n$, false, $n$2026-10-22T14:45:40+05:30$n$, 9),
($n$2026-10-23-fusion-cx-listing$n$, '2026-10-23', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata's Fusion CX lists at a 5.5% premium on NSE despite a weak market$n$,
  $n$Shares of Fusion CX, a Kolkata-based provider of AI-driven customer experience services, opened at ₹305 on the NSE on Thursday, 5.54% above the IPO price of ₹289; on the BSE they opened at ₹292. The ₹702-crore IPO, which had been subscribed 4.45 times, combined ₹500 crore of new shares with a ₹202-crore sale by existing shareholders. The company plans to use ₹275 crore of the fresh money to repay borrowings and ₹61 crore to upgrade IT at two subsidiaries. At listing it was valued at about ₹4,311 crore on the NSE.$n$,
  $n$Using new share capital to repay loans swaps one source of funding for another: liabilities fall and owners' equity rises, while the accounting equation still balances.$n$,
  $n$Free Press Journal$n$, $n$https://www.freepressjournal.in/business/fusion-cx-ipo-listing-today-shares-debut-at-554-premium-on-nse-at-rs-305-despite-weak-stock-market$n$, $n$acct-09$n$, 'draft',
  $n$A Kolkata company listed on a red day for the market, and still opened 5.5% above its IPO price.$n$,
  $n$Fusion CX will use much of its IPO money to pay off debt. Swapping loans for shareholders' money changes the shape of a balance sheet without breaking it. The accounting equation card shows how.$n$, false, $n$2026-10-22T12:07:45+05:30$n$, 10),
($n$2026-10-23-havells-q2$n$, '2026-10-23', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Havells revenue jumps 34.6% on cable demand, but profit grows only 11%$n$,
  $n$Havells India's July–September revenue rose 34.6% to ₹6,417 crore and net profit 11.1% to ₹353 crore. Cables, its biggest business, grew 47.9% to ₹2,999 crore, and renewables more than doubled to ₹329 crore. Contribution margin fell to 18.2% from 20.1%, partly because lower aluminium prices hit cable margins, and EBITDA margin slipped to 9.0% from 9.3%. Last year's quarter also included a one-time gain of ₹45 crore from selling land and a building in Faridabad. The company plans ₹1,400 crore of capital spending this year, mainly for cable capacity and a new R&D centre.$n$,
  $n$Revenue grew three times as fast as profit, and the reason sits in the margins and a one-off item in last year's figures. Reading the whole profit and loss statement, not just the top line, shows what really changed.$n$,
  $n$Kotak Neo (also reported by Adgully)$n$, $n$https://www.kotakneo.com/news/stocks/havells-india-q2-fy-27-results-in-focus/$n$, $n$acct-10$n$, 'draft',
  $n$Havells grew sales by a third, yet profit rose just 11%. The gap is hiding in the margins.$n$,
  $n$Cables boomed, but thinner margins and a one-time gain in last year's numbers held profit growth down. Headlines show revenue; the full statement shows the story. The reading financial statements card shows how.$n$, false, $n$2026-10-22T16:27:23+05:30$n$, 11),
($n$2026-10-23-hermes-china-slowdown$n$, '2026-10-23', $n$global$n$, $n$LUXURY$n$,
  $n$Hermès sales growth slows to about 4% as weak China demand hits accessories$n$,
  $n$Hermès said third-quarter sales were €4.1 billion, up 4% at constant exchange rates, with Greater China flat in what it called a more difficult context while the Americas grew 13% and Japan 11% over nine months. BigGo Finance reported that the growth missed analyst expectations and was the slowest since early 2020. Its ready-to-wear and accessories business fell about 2%, while leather goods such as the Birkin bag grew about 11%, according to the report. The shares fell more than 9% at one point in Paris trading.$n$,
  $n$Demand for luxury goods is very sensitive to how wealthy buyers feel about their income and assets. When Chinese shoppers feel poorer, they cut back on cheaper luxury accessories first, while top products hold up.$n$,
  $n$Hermès results release (via GlobeNewswire); also reported by BigGo Finance$n$, $n$https://www.manilatimes.net/2026/10/22/tmt-newswire/globenewswire/hermes-international-third-quarter-2026-revenue/2451453$n$, $n$econ-04$n$, 'draft',
  $n$Birkin bags still sell, but Hermès accessories are struggling in China. Shares fell 9% at one point.$n$,
  $n$The world's most exclusive luxury brand grew sales only about 4% as Chinese shoppers held back. Not every luxury product reacts to income the same way. The income elasticity card explains why.$n$, false, $n$2026-10-22T11:40:34+05:30$n$, 12)
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
from news_stories where publish_date = '2026-10-23' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-23' order by rank;
