-- =====================================================================
-- ChaiCase news brief for 2026-10-31: 12 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-31.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-30 7 AM and 2026-10-31 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-31' and (slug is null or slug not in ($n$2026-10-31-reliance-q2-o2c-record$n$, $n$2026-10-31-jio-platforms-first-results$n$, $n$2026-10-31-indian-oil-record-profit$n$, $n$2026-10-31-fiscal-deficit-first-half$n$, $n$2026-10-31-hormuz-tanker-brent-117$n$, $n$2026-10-31-bank-of-baroda-record-profit$n$, $n$2026-10-31-exxon-chevron-q3-beat$n$, $n$2026-10-31-sun-pharma-one-time-loss$n$, $n$2026-10-31-sensex-it-rally-smallcaps-fall$n$, $n$2026-10-31-ramkrishna-forgings-turnaround$n$, $n$2026-10-31-bel-q2-order-book$n$, $n$2026-10-31-forex-reserves-gold-dip$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-31-reliance-q2-o2c-record$n$, '2026-10-31', $n$india$n$, $n$RELIANCE$n$,
  $n$Reliance's profit jumps about 41% to ₹25,548 crore as its oil-to-chemicals arm has its best quarter ever, while retail profit falls by a quarter$n$,
  $n$Reliance Industries reported a consolidated profit of ₹25,548 crore for July-September, up about 41% from ₹18,165 crore a year earlier, on revenue of ₹3.33 lakh crore, up about 29%. The oil-to-chemicals (O2C) business drove the jump: its revenue rose about 44% and its EBITDA about 68% to ₹25,203 crore, which the company called its best quarterly performance ever. Reliance Retail went the other way, with profit down 24.5% to ₹2,619 crore even though revenue grew about 6%. Jio Platforms, which listed on the stock market this week, grew profit about 14% to ₹8,389 crore.$n$,
  $n$The same war-driven jump in energy prices lifted Reliance's fuel and chemicals business while its shoppers' business slowed. That shows how one shift in the wider economy can hit each part of a company differently, which the marketing environment (PESTLE) card explains.$n$,
  $n$Upstox; also PTI via The Hans India$n$, $n$https://upstox.com/news/market-news/earnings/reliance-industries-q2-results-live-updates-mukesh-ambani-ril-earnings-o2c-retail-jio-profit-revenue-share-price-news/liveblog-202688/$n$, $n$mkt-05$n$, 'draft',
  $n$India's biggest company earned 41% more this quarter, but its shops earned a quarter less.$n$,
  $n$Reliance's profit jumped to ₹25,548 crore as high fuel prices gave its oil-to-chemicals arm its best quarter ever, while Reliance Retail's profit fell 24.5%. The same outside forces helped one business and hurt another. The marketing environment card shows how to read those forces.$n$, false, $n$2026-10-30T20:04:00+05:30$n$, 1),
($n$2026-10-31-jio-platforms-first-results$n$, '2026-10-31', $n$recruiter$n$, $n$TELECOM$n$,
  $n$Jio Platforms' first results as a listed company: profit up 14% to ₹8,389 crore as average revenue per user rises to ₹218.8 a month$n$,
  $n$Jio Platforms, the Reliance digital and telecom arm that listed on the stock market this week, reported a profit of ₹8,389 crore for July-September, up 13.7% from ₹7,379 crore a year earlier. Revenue rose 11.4% to ₹40,475 crore and its EBITDA margin widened to 51.6% from 49.8%. Average revenue per user (ARPU), the money Jio earns per customer each month, rose to ₹218.8 from ₹211.4 a year earlier. Jio now has more than 542 million subscribers, including 300 million on 5G, and it added 9.1 million customers in the quarter while about 1.6% of users left each month.$n$,
  $n$Jio's profit grows both by signing up more people and by earning a little more from each one every month for years. Valuing a customer over their whole relationship with a company is what the customer lifetime value card explains.$n$,
  $n$Upstox; also PTI via The Hans India$n$, $n$https://upstox.com/news/market-news/earnings/jio-platforms-q2-results-live-updates-ril-subsidiary-to-release-first-earnings-after-listing-on-oct-30/liveblog-202694/$n$, $n$mkt-03$n$, 'draft',
  $n$The SIM in your phone is now a listed company: Jio earns ₹218.8 a month per user, and rising.$n$,
  $n$In its first results since listing this week, Jio Platforms grew profit 14% to ₹8,389 crore, with 542 million subscribers and ARPU up from ₹211.4 to ₹218.8. A few rupees more per user, every month, adds up to a lot. The customer lifetime value card explains why that matters so much.$n$, true, $n$2026-10-30T19:19:00+05:30$n$, 2),
($n$2026-10-31-indian-oil-record-profit$n$, '2026-10-31', $n$india$n$, $n$OIL PSU$n$,
  $n$Indian Oil posts a record quarterly profit of ₹21,630 crore on refining gains, but warns that a fall in crude prices could bring inventory losses$n$,
  $n$Indian Oil Corporation's standalone profit for July-September nearly tripled to a record ₹21,630 crore, from ₹7,610 crore a year earlier and after a loss of ₹2,661 crore in April-June; consolidated profit rose about 174% to ₹22,503 crore. Revenue from operations rose to ₹2.63 lakh crore from ₹2.03 lakh crore. Strong refining margins outweighed losses on petrol and diesel, whose pump prices have not changed since late May despite higher crude, and an unpaid LPG subsidy burden of about ₹32,506 crore for the quarter. The company cautioned that if crude prices fall as the Middle East situation calms, coming quarters could suffer inventory losses.$n$,
  $n$Indian Oil holds huge stocks of crude bought at earlier prices, so a sharp change in oil prices changes the value of that stock and therefore its profit. How a company values its stock is what the FIFO, LIFO and weighted average card explains.$n$,
  $n$Millennium Post; also Business Standard$n$, $n$https://www.millenniumpost.in/business/ioc-posts-record-quarterly-profit-of-rs-21630-crore-on-refining-gains-681563$n$, $n$acct-03$n$, 'draft',
  $n$Petrol prices haven't moved since May, yet Indian Oil just earned a record ₹21,630 crore.$n$,
  $n$Refining gains nearly tripled Indian Oil's profit, more than covering losses at the pump and a ₹32,506-crore LPG subsidy gap. But the company warns that cheaper crude could hurt it next. The stock valuation card explains why a price fall can shrink profit.$n$, false, $n$2026-10-30T22:40:00+05:30$n$, 3),
($n$2026-10-31-fiscal-deficit-first-half$n$, '2026-10-31', $n$india$n$, $n$ECONOMY$n$,
  $n$The Centre's fiscal deficit reaches ₹7.15 lakh crore, 42.1% of the full-year target, in the first half of the year$n$,
  $n$The central government's fiscal deficit for April-September was about ₹7.15 lakh crore, or 42.1% of its full-year target, compared with ₹5.7 lakh crore and about 36.5% of the target a year earlier, government data showed on Friday. The full-year goal is 4.3% of GDP, or ₹16.96 lakh crore. Total spending rose to about ₹25.5 lakh crore from ₹23 lakh crore, including ₹6.5 lakh crore of capital spending, up from ₹5.8 lakh crore, and about ₹2.2 lakh crore of subsidies, mostly on food and fertiliser. Net tax receipts grew more slowly, to ₹12.8 lakh crore from ₹12.3 lakh crore.$n$,
  $n$Every rupee spent on subsidies is a rupee that cannot go to roads or be saved, and the government has to choose. That trade-off between uses of scarce money is exactly what the scarcity and opportunity cost card explains.$n$,
  $n$Reuters via Business Recorder; also IANS$n$, $n$https://www.brecorder.com/news/40446684/indias-april-september-fiscal-deficit-at-421-of-202627-target$n$, $n$econ-06$n$, 'draft',
  $n$Halfway through the year, India's government has already used 42% of its full-year borrowing gap.$n$,
  $n$The fiscal deficit reached ₹7.15 lakh crore in April-September, up from ₹5.7 lakh crore a year ago, as subsidy and capital spending rose faster than tax income. Every rupee has competing uses. The scarcity and opportunity cost card explains the choice.$n$, false, $n$2026-10-30T16:23:00+05:30$n$, 4),
($n$2026-10-31-hormuz-tanker-brent-117$n$, '2026-10-31', $n$global$n$, $n$OIL$n$,
  $n$Brent crude touches $117 a barrel after a tanker catches fire in the Strait of Hormuz and Iran's Revolutionary Guards claim four tankers hit mines$n$,
  $n$Brent crude rose to $117 a barrel in Asian trading on Friday after a tanker leaving through the Strait of Hormuz caught fire when, according to the UK's maritime agency UKMTO, a small boat attached two explosive devices to its hull. UKMTO said the fire was put out, the crew was safe and the ship carried on to its next port. Iran's Revolutionary Guards claimed four tankers had struck mines and disputed US claims that the main routes had been cleared. Traders also fear US action against Iran after the 3 November US midterm elections, and oil was heading for a fourth straight monthly gain.$n$,
  $n$Nothing has yet stopped oil from flowing, but the fear that supply could be cut off is enough to push prices up. How a feared drop in supply moves a market's price is what the market equilibrium card explains.$n$,
  $n$Oilprice.com; also Kotak Neo$n$, $n$https://oilprice.com/Latest-Energy-News/World-News/Brent-Hits-117-as-Tanker-Catches-Fire-in-Strait-of-Hormuz.html$n$, $n$econ-09$n$, 'draft',
  $n$A small boat, two explosive devices and one tanker on fire: oil touched $117 within hours.$n$,
  $n$After a tanker was attacked in the Strait of Hormuz and Iran claimed four tankers had hit mines, Brent jumped to $117 a barrel, set for a fourth monthly gain. The ship sailed on, but the fear stayed. The market equilibrium card explains why fear alone can lift prices.$n$, false, $n$2026-10-30T18:00:00+05:30$n$, 5),
($n$2026-10-31-bank-of-baroda-record-profit$n$, '2026-10-31', $n$recruiter$n$, $n$BANKING$n$,
  $n$Bank of Baroda's profit rises 36% to a record ₹6,532 crore, helped by a one-off gain from selling NSE shares, and it raises its loan growth forecast$n$,
  $n$Bank of Baroda's standalone profit for July-September rose 35.8% to ₹6,532 crore, its highest ever for a quarter, from ₹4,809 crore a year earlier. A big part came from treasury income of ₹4,093 crore, against ₹1,086 crore a year ago, much of it from selling part of its stake in the NSE during the exchange's IPO, a gain that may not repeat. Its core net interest income rose a slower 9% to ₹13,026 crore, while bad loans fell to 1.78% of advances from 2.16%. CEO Debadatta Chand raised the bank's loan growth forecast for this year to 13-15% from 12-14%.$n$,
  $n$Money from selling a long-held investment is a one-time capital receipt, not income the bank earns from lending every quarter. The capital vs revenue card explains why the two should be read separately.$n$,
  $n$The Hans India; also Indian Masterminds and Lapaas Voice$n$, $n$https://www.thehansindia.com/business/bob-profit-hits-record-loan-growth-outlook-improves-1137679$n$, $n$acct-18$n$, 'draft',
  $n$Bank of Baroda just had its best quarter ever, partly by selling shares of the stock exchange itself.$n$,
  $n$The bank's profit jumped 36% to a record ₹6,532 crore, but treasury income, boosted by selling NSE shares in the exchange's IPO, did much of the work. Its core lending income grew just 9%. The capital vs revenue card shows how to tell one-off gains from regular earnings.$n$, false, $n$2026-10-31T05:59:00+05:30$n$, 6),
($n$2026-10-31-exxon-chevron-q3-beat$n$, '2026-10-31', $n$global$n$, $n$BIG OIL$n$,
  $n$ExxonMobil and Chevron beat profit forecasts as war-driven oil prices and record output lift earnings, and Exxon plans a $20 billion buyback$n$,
  $n$ExxonMobil earned $15.4 billion, or $3.72 a share, in July-September, with adjusted earnings of $4.23 a share beating analysts' forecasts, and its revenue rose 33% to about $113 billion. Chevron earned $9.9 billion, or $5.06 a share, as revenue rose 36% to $67.8 billion. Both cited higher oil prices and record production, with fuel costs pushed up by the wars involving Iran and Ukraine; US diesel was about $6.32 a gallon, 71% higher than a year ago, according to AAA. Exxon's Gulf Coast refineries ran at full capacity, and it set a $20 billion share buyback and raised its quarterly dividend to $1.07.$n$,
  $n$When oil prices rise, producers find it worth pumping and refining more, and both companies hit record output. That response of supply to a higher price is what the law of supply card explains.$n$,
  $n$Associated Press via Transport Topics; also ExxonMobil results release$n$, $n$https://www.ttnews.com/articles/exxon-chevron-earnings-q3-2026$n$, $n$econ-08$n$, 'draft',
  $n$Diesel in the US costs 71% more than a year ago, and the world's oil giants are pumping record amounts.$n$,
  $n$ExxonMobil earned $15.4 billion and Chevron $9.9 billion this quarter, both beating forecasts as war pushed up prices and output hit records. Exxon also plans a $20 billion buyback. The law of supply card explains why high prices bring out more oil.$n$, false, $n$2026-10-30T18:20:00+05:30$n$, 7),
($n$2026-10-31-sun-pharma-one-time-loss$n$, '2026-10-31', $n$recruiter$n$, $n$PHARMA$n$,
  $n$Sun Pharma's profit falls 36% to ₹1,989 crore because of a one-time loss, even as sales rise 12% and India sales grow 17%$n$,
  $n$Sun Pharmaceutical's profit for July-September fell 36% to ₹1,989 crore from ₹3,118 crore a year earlier, which reports put down to a one-time loss of ₹1,269 crore. Excluding exceptional items, profit before tax rose about 6% to ₹4,428 crore. Revenue rose about 12% to ₹16,199 crore, led by India sales up 17.3% to ₹5,552 crore, while sales of its medicines in the US fell 8.2% to $455 million. The shares rose about 4% after the results.$n$,
  $n$Sun Pharma's reported profit fell sharply, yet investors bought the shares because the one-time loss was shown separately and the business underneath kept growing. Showing such items clearly is what the full disclosure and materiality conventions are for.$n$,
  $n$Upstox; also IANS$n$, $n$https://upstox.com/news/market-news/earnings/sun-pharmaceutical-q2-fy-27-result-net-profit-declines-36-yo-y-us-formulation-sales-falls-to-455-million/article-202723/$n$, $n$acct-13$n$, 'draft',
  $n$Sun Pharma's profit fell 36%, and its shares went up 4%. Here's why that isn't crazy.$n$,
  $n$India's largest drugmaker took a one-time loss of ₹1,269 crore, so reported profit dropped to ₹1,989 crore, but sales grew 12% and underlying profit before tax rose. Investors looked past the one-off. The accounting conventions card explains why disclosure makes that possible.$n$, false, $n$2026-10-30T14:46:00+05:30$n$, 8),
($n$2026-10-31-sensex-it-rally-smallcaps-fall$n$, '2026-10-31', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex rises 308 points to 74,460 as IT shares jump 2.3%, but mid- and small-company shares fall$n$,
  $n$The Sensex gained 308 points, or 0.42%, to close at 74,459.53 on Friday, and the Nifty 50 rose 0.51% to 23,053.10, about 2% higher for the week. IT shares led, with the Nifty IT index up about 2.3% and Wipro, Coforge and Infosys among the big gainers, as market reports linked the buying to quarterly results from US-listed Cognizant. Trent and IndiGo also rose after their results. But the wider market fell: the Nifty Midcap 100 lost 0.93% and the Nifty Smallcap 100 1.85%, with Brent crude around $113 a barrel weighing on sentiment.$n$,
  $n$News about a rival's results changed how investors felt about IT shares as a group, so they wanted more of them at every price. A change in demand like that, rather than a move along the demand curve, is explained in the change in demand card.$n$,
  $n$5paisa; also Kotak Neo$n$, $n$https://www.5paisa.com/blog/post-market-update-sensex-nifty-rise-second-day-broader-markets-fall-october-30-2026$n$, $n$econ-02$n$, 'draft',
  $n$The Sensex rose for a second day, yet most small company shares fell. Both happened on Friday.$n$,
  $n$IT stocks jumped about 2.3% and lifted the Sensex to 74,460, while mid-size and small company shares slid. A US rival's results changed how investors felt about Indian IT. The change in demand card explains how news shifts the whole demand curve.$n$, false, $n$2026-10-30T17:00:00+05:30$n$, 9),
($n$2026-10-31-ramkrishna-forgings-turnaround$n$, '2026-10-31', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata's Ramkrishna Forgings swings to a ₹71-crore profit from a loss as revenue jumps 55%, and declares a ₹2 dividend$n$,
  $n$Ramkrishna Forgings, the Kolkata-based maker of forged parts for vehicles and railways, reported a consolidated profit of about ₹71 crore for July-September, against a loss of ₹9.5 crore a year earlier. Revenue from operations rose 55% to ₹1,405 crore, while total expenses rose a slower 43% to ₹1,313 crore. The board declared an interim dividend of ₹2 a share with 6 November as the record date, reported ₹673 crore of new contracts, and approved up to ₹56.76 crore more for its rail-wheel joint venture with Titagarh. Its shares closed 4% lower at ₹645.10.$n$,
  $n$The turnaround is visible line by line in the profit and loss account: sales grew faster than costs, so a loss became a profit. Reading those lines is what the reading the financial statements card teaches.$n$,
  $n$Indian Opinion; also Autocar Professional$n$, $n$https://indianopinion.org/ramkrishna-forgings-swings-to-q2-profit-declares-rs-2-dividend/$n$, $n$acct-10$n$, 'draft',
  $n$From a loss to ₹71 crore profit in a year: a Kolkata forging firm's sales rose 55%.$n$,
  $n$Ramkrishna Forgings grew revenue 55% while its costs rose 43%, turning last year's ₹9.5-crore loss into profit, and it declared a ₹2 dividend. It is also putting more money into its rail-wheel venture with Titagarh. The financial statements card shows how to spot a turnaround.$n$, false, $n$2026-10-30T18:50:00+05:30$n$, 10),
($n$2026-10-31-bel-q2-order-book$n$, '2026-10-31', $n$india$n$, $n$DEFENCE$n$,
  $n$Bharat Electronics' revenue rises 26% to ₹7,291 crore and profit 20% to ₹1,541 crore, with ₹68,717 crore of orders waiting to be delivered$n$,
  $n$State-run defence electronics maker Bharat Electronics (BEL) reported revenue of ₹7,291 crore for July-September, up 26.5% from ₹5,764 crore a year earlier. Profit after tax rose a slower 19.8% to ₹1,541 crore from ₹1,286 crore. For the first half of the year, revenue rose about 26% to ₹12,824 crore and profit about 15% to ₹2,589 crore. The company's order book stood at ₹68,717 crore on 1 October.$n$,
  $n$BEL's ₹68,717 crore of orders is not yet revenue; it is counted as revenue only as the equipment is delivered. When a company may record a sale is what the revenue recognition card explains.$n$,
  $n$Kotak Neo$n$, $n$https://www.kotakneo.com/news/stocks/bharat-electronics-q2-fy-27-results-put-share-price-in-focus/$n$, $n$acct-12$n$, 'draft',
  $n$BEL has ₹68,717 crore of orders in hand, roughly nine quarters of sales at its current pace.$n$,
  $n$The defence electronics maker grew revenue 26% to ₹7,291 crore and profit 20% to ₹1,541 crore. Its huge order book only becomes revenue as equipment is delivered. The revenue recognition card explains when a sale is really a sale.$n$, false, $n$2026-10-30T22:21:00+05:30$n$, 11),
($n$2026-10-31-forex-reserves-gold-dip$n$, '2026-10-31', $n$india$n$, $n$RBI$n$,
  $n$India's foreign exchange reserves fall $1.27 billion to $719.75 billion, a seventh weekly drop, as the value of gold holdings slips$n$,
  $n$India's foreign exchange reserves fell by $1.269 billion to $719.748 billion in the week ended 23 October, the seventh weekly decline in a row, according to RBI data released on Friday. The value of gold reserves fell $2.65 billion to $103.15 billion. Foreign currency assets, the largest part of the reserves, actually rose by $1.36 billion to $593.2 billion. Reserves are still about $28.6 billion higher than at the end of March.$n$,
  $n$The RBI's foreign currency holdings went up this week, yet total reserves fell because the gold it already owns was valued at a lower market price. Valuing assets at their current price is what the measurement bases card explains.$n$,
  $n$Asianet Newsable; also The Tribune and Business Standard$n$, $n$https://newsable.asianetnews.com/business/india-s-foreign-exchange-reserves-dip-slightly-to-usd-719-748-billion-articleshow-cex2p9z$n$, $n$acct-21$n$, 'draft',
  $n$The RBI added $1.36 billion of foreign currency this week, so why did India's reserves fall?$n$,
  $n$Reserves dropped for a seventh week to $719.75 billion because the RBI's gold was worth $2.65 billion less, even as currency holdings rose. Nothing was sold; the price changed. The measurement bases card explains how assets are valued.$n$, false, $n$2026-10-30T19:40:00+05:30$n$, 12)
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
from news_stories where publish_date = '2026-10-31' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-31' order by rank;
