-- =====================================================================
-- ChaiCase news brief for 2026-11-01: 10 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-01.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-31 7 AM and 2026-11-01 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-01' and (slug is null or slug not in ($n$2026-11-01-ntpc-q2-profit-dividend$n$, $n$2026-11-01-iran-hormuz-conditions-talks$n$, $n$2026-11-01-muthoot-finance-gold-loans$n$, $n$2026-11-01-windfall-tax-diesel-atf$n$, $n$2026-11-01-shyam-metalics-depreciation$n$, $n$2026-11-01-china-pmi-contraction$n$, $n$2026-11-01-abfrl-profit-doubles$n$, $n$2026-11-01-birla-corp-cement-costs$n$, $n$2026-11-01-cotton-duty-exemption$n$, $n$2026-11-01-zen-technologies-order-book$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-01-ntpc-q2-profit-dividend$n$, '2026-11-01', $n$india$n$, $n$POWER PSU$n$,
  $n$NTPC's group profit rises about 39% to ₹7,030 crore as revenue grows 21%, and the power giant declares a ₹3 interim dividend$n$,
  $n$State-run NTPC, India's largest power producer, reported a consolidated profit attributable to shareholders of about ₹7,030 crore for July-September, up 38.7% from ₹5,067 crore a year earlier. Counting the share that belongs to minority partners in its subsidiaries, group profit was about ₹7,351 crore, up roughly 41%. Consolidated revenue from operations rose 21.2% to ₹54,270 crore, while fuel costs climbed to ₹28,628 crore from ₹23,062 crore. The parent company on its own (standalone) earned ₹5,320 crore, up 14.3%, and the board declared a first interim dividend of ₹3 a share, with 6 November as the record date.$n$,
  $n$NTPC's results show three different profit numbers: the parent alone, the whole group, and the group's share after minority partners. Knowing which statement and which line you are reading is what the reading the financial statements card explains.$n$,
  $n$Whalesbook; also ANI via Daily Prabhat, Indian PSU$n$, $n$https://www.whalesbook.com/news/English/energy/NTPC-Q2-Profit-Rises-39percent-to-indian-rupee7030-Crore-Dividend-Set/6ae5d3ab4fc30694db55756a$n$, $n$acct-10$n$, 'draft',
  $n$₹5,320 crore, ₹7,030 crore or ₹7,351 crore? NTPC's profit depends on which line you read.$n$,
  $n$NTPC's group profit rose about 39% on 21% higher revenue, and shareholders get a ₹3 interim dividend. But the parent company alone earned much less than the whole group. The reading the financial statements card shows how to tell these numbers apart.$n$, false, $n$2026-10-31T17:10:00+05:30$n$, 1),
($n$2026-11-01-iran-hormuz-conditions-talks$n$, '2026-11-01', $n$global$n$, $n$OIL ROUTE$n$,
  $n$Iran says reopening the Strait of Hormuz on its terms could open the way to talks with the US, calls a letter from JD Vance a 'positive step'$n$,
  $n$Iran's foreign minister Abbas Araghchi told Al Jazeera that reopening the Strait of Hormuz, a key route for the world's oil, on Tehran's conditions would pave the way for renewed talks with Washington. According to Al Jazeera, those conditions include lifting sanctions, cutting US forces in the region, restoring oil waivers and releasing frozen Iranian funds, and Iran says talks with Qatari mediators have shortened its proposed reopening period to two days. Araghchi called a letter from US Vice President JD Vance a positive step but said there was no need to meet American officials at this stage. US Secretary of State Marco Rubio said President Trump has not decided whether to resume military action against Iran.$n$,
  $n$Whether oil can flow through Hormuz now depends on governments, sanctions and military decisions, not on companies. That is the political side of a business's outside environment, which the marketing environment (PESTLE) card explains.$n$,
  $n$Al Jazeera; also The Jerusalem Post$n$, $n$https://www.aljazeera.com/news/2026/10/31/iran-fm-says-us-outreach-a-positive-step-as-delegation-in-qatar-for-talks$n$, $n$mkt-05$n$, 'draft',
  $n$The world's oil route could reopen in two days, says Iran, but only on Iran's terms.$n$,
  $n$Iran's foreign minister tied reopening the Strait of Hormuz to sanctions relief, fewer US troops and released funds, and called a US letter a positive step. Washington has not decided its next move. The marketing environment card explains how politics shapes business.$n$, false, $n$2026-10-31T20:01:00+05:30$n$, 2),
($n$2026-11-01-muthoot-finance-gold-loans$n$, '2026-11-01', $n$recruiter$n$, $n$NBFC$n$,
  $n$Muthoot Finance's profit rises 27% to ₹2,977 crore as its gold-loan book grows 46% and the lender raises its growth guidance$n$,
  $n$Gold-loan company Muthoot Finance reported a standalone profit of ₹2,977 crore for July-September, up 27% from ₹2,345 crore a year earlier, as total income rose to ₹8,842 crore from ₹6,442 crore. Its consolidated gold-loan assets under management grew 46% from a year earlier to over ₹1.93 lakh crore. According to reports, the company raised its gold-loan growth guidance for this year by an additional 10%, and its management said the RBI's new gold-lending rules, in force since 1 April 2026, involve a learning curve for the company and customers that should settle within a few quarters.$n$,
  $n$Muthoot is growing fast while also adapting to new RBI rules on how gold loans must be made. Regulation and demand for credit are both forces outside the company, which the marketing environment (PESTLE) card explains.$n$,
  $n$Business Standard (PTI); also 10BM News$n$, $n$https://www.business-standard.com/companies/quarterly-results/muthoot-finance-q2-profit-rises-27-to-2-977-crore-income-up-37-126103101162_1.html$n$, $n$mkt-05$n$, 'draft',
  $n$More Indians are borrowing against their gold: Muthoot's gold-loan book just grew 46% in a year.$n$,
  $n$Muthoot Finance's profit rose 27% to ₹2,977 crore and it raised its growth target, even while learning to work under new RBI gold-lending rules. Demand and regulation are pulling at the same time. The marketing environment card explains both forces.$n$, false, $n$2026-10-31T19:32:00+05:30$n$, 3),
($n$2026-11-01-windfall-tax-diesel-atf$n$, '2026-11-01', $n$india$n$, $n$FUEL TAX$n$,
  $n$Government raises the windfall tax on diesel exports to ₹11.5 a litre and on jet fuel to ₹11, while scrapping the levy on petrol exports$n$,
  $n$The finance ministry raised the special export levy on diesel to ₹11.5 a litre from ₹8.5 and on aviation turbine fuel (ATF) to ₹11 from ₹10.5, for the fortnight starting 31 October. The ₹2.5-a-litre levy on petrol exports was cut to zero. The rates are reviewed every two weeks; the diesel and ATF levies were first imposed on 27 March and the petrol levy on 16 May, after crude prices rose with the West Asia conflict. The levies are meant to keep fuel supplies at home and stop exporters cashing in on high global prices, and duties on fuel sold within India were left unchanged.$n$,
  $n$When world prices are far above home prices, refiners would rather sell abroad, which could leave India short. A tax on exports changes that choice, and how prices balance supply and demand, with or without a shortage, is what the market equilibrium card explains.$n$,
  $n$The Tribune (PTI)$n$, $n$https://www.tribuneindia.com/news/business/govt-raises-windfall-tax-on-diesel-atf-exports-petrol-levy-scrapped/$n$, $n$econ-09$n$, 'draft',
  $n$Selling diesel abroad just got ₹3 a litre costlier, and selling petrol abroad got cheaper.$n$,
  $n$The government raised the export levy on diesel to ₹11.5 a litre and on jet fuel to ₹11, and scrapped the one on petrol, to keep fuel at home while world prices stay high. The market equilibrium card explains why a gap between prices can cause shortages.$n$, false, $n$2026-10-31T19:59:00+05:30$n$, 4),
($n$2026-11-01-shyam-metalics-depreciation$n$, '2026-11-01', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata's Shyam Metalics nearly doubles profit to about ₹493 crore, helped partly by a switch in how it depreciates its plants$n$,
  $n$Kolkata-based metals maker Shyam Metalics reported a consolidated profit of about ₹493 crore for July-September, up roughly 88% from about ₹262 crore a year earlier, on revenue of ₹5,960 crore, up 33.4%. Part of the jump came from an accounting change: the company moved some plant and equipment from the written-down value method of depreciation to the straight-line method, which cut its depreciation charge for the quarter by ₹171.77 crore. Its depreciation for the quarter fell to about ₹110 crore from ₹211 crore a year earlier. The company also announced it will take a 51% stake in Alom Solar, which holds rights to a coal block in Chhattisgarh, to secure its own coal supply.$n$,
  $n$Shyam Metalics' sales grew strongly, but switching from written-down value to straight-line depreciation also lowered this quarter's expense and raised profit. That difference between the two methods is exactly what the depreciation card explains.$n$,
  $n$Whalesbook; also CNBC-TV18, Multibagg$n$, $n$https://www.whalesbook.com/corporate-news/English/industrial-goodsservices/Shyam-Metalics-Q2-Net-Profit-Jumps-to-indian-rupee493-Cr-Announces-Coal-Acquisition/6ae59900c6c6dccbb90d8a2e$n$, $n$acct-22$n$, 'draft',
  $n$A Kolkata steelmaker's profit nearly doubled, and ₹172 crore of it came from changing one accounting rule.$n$,
  $n$Shyam Metalics grew revenue 33% to ₹5,960 crore, and profit rose about 88% to roughly ₹493 crore. But moving to straight-line depreciation cut this quarter's charge by ₹171.77 crore. The depreciation card shows how the choice of method moves profit.$n$, true, $n$2026-10-31T13:00:00+05:30$n$, 5),
($n$2026-11-01-china-pmi-contraction$n$, '2026-11-01', $n$global$n$, $n$CHINA$n$,
  $n$China's factory activity slips back into contraction in October, with the official manufacturing PMI falling to 49.3 from 50.1$n$,
  $n$China's official manufacturing purchasing managers' index (PMI) fell to 49.3 in October from 50.1 in September, below the 50 mark that separates growth from shrinking, the National Bureau of Statistics said on Saturday. The production index dropped to 49.8 and new orders to 49.4, though high-tech manufacturing stayed in growth at 51.3. The non-manufacturing index, covering services and construction, also slipped to 49.7 from 50.2. An NBS statistician partly blamed demand that was pulled forward before the National Day holiday and a volatile global environment.$n$,
  $n$The PMI is built from a monthly survey of purchasing managers, turning their answers into one number that signals where an economy is heading. Turning survey data into a useful insight is what the marketing research card explains.$n$,
  $n$China Daily; also Xinhua, The China-Global South Project$n$, $n$https://global.chinadaily.com.cn/a/202610/31/WS6ae561fbe4b06d4aa05663b0.html$n$, $n$mkt-11$n$, 'draft',
  $n$One survey number, 49.3, says the world's factory floor shrank in October.$n$,
  $n$China's official manufacturing PMI slipped below 50 from September's 50.1 as new orders and output weakened, though high-tech factories kept growing. A survey of buying managers can move global markets. The marketing research card shows how survey data becomes insight.$n$, false, $n$2026-10-31T09:05:00+05:30$n$, 6),
($n$2026-11-01-abfrl-profit-doubles$n$, '2026-11-01', $n$recruiter$n$, $n$RETAIL$n$,
  $n$Aditya Birla Fashion and Retail, owner of Pantaloons, more than doubles its quarterly profit to ₹53 crore as revenue rises 11%$n$,
  $n$Aditya Birla Fashion and Retail (ABFRL) reported a consolidated profit of ₹53.05 crore for July-September, up from ₹23.44 crore a year earlier. Revenue from operations rose about 11% to ₹2,265.6 crore from ₹2,037.9 crore, while total expenses grew 9.71% to ₹2,225 crore. ABFRL runs Pantaloons and Style Up stores and owns ethnic and designer labels such as Sabyasachi, House of Masaba, Tarun Tahiliani, Jaypore and TCNS. Its former Madura arm, with brands like Louis Philippe, Van Heusen, Allen Solly and Peter England, was split off into a separately listed company, Aditya Birla Lifestyle Brands, from 1 May 2025.$n$,
  $n$Since the demerger, Louis Philippe and Van Heusen belong to a different listed company, so their sales no longer appear in ABFRL's accounts. Treating each business as its own accounting unit is the entity concept in the accounting concepts card.$n$,
  $n$Daily Excelsior (PTI)$n$, $n$https://www.dailyexcelsior.com/aditya-birla-fashion-and-retail-q2-profit-more-than-doubles-to-rs-53-cr/$n$, $n$acct-11$n$, 'draft',
  $n$Pantaloons' owner more than doubled its profit, without Louis Philippe or Van Heusen on its books.$n$,
  $n$ABFRL's profit rose to ₹53 crore from ₹23 crore as revenue grew faster than costs. Its best-known office-wear brands now sit in a separate company after a 2025 demerger. The accounting concepts card explains why each company keeps its own books.$n$, false, $n$2026-10-31T17:40:00+05:30$n$, 7),
($n$2026-11-01-birla-corp-cement-costs$n$, '2026-11-01', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata's Birla Corporation sells 7% more cement but its profit falls 59% to ₹37 crore as fuel costs jump and prices stay weak$n$,
  $n$Birla Corporation, the cement and jute maker based in Kolkata, reported a consolidated profit of ₹37 crore for July-September, down 58.9% from ₹90 crore a year earlier, even as revenue rose 9% to ₹2,441 crore. It sold 4.54 million tonnes of cement, up 7%, but its earnings per tonne before interest, tax and depreciation fell to ₹482 from ₹712. Costs rose sharply, with power and fuel costs up 15% and pet coke prices up 64%, while cement prices weakened in its main markets in July and August. Its jute division's revenue rose 17% to ₹155 crore, and the company said cement prices have started to improve from October but cost pressure is likely to continue.$n$,
  $n$Birla Corp's fuel suppliers could push their prices up, but the company could not pass that on to cement buyers in a crowded market. How much power suppliers, buyers and rivals hold over an industry's profit is what Porter's Five Forces card explains.$n$,
  $n$ThePrint (PTI)$n$, $n$https://theprint.in/economy/birla-corp-q2fy27-moderates-to-rs-37cr-on-higher-input-costs-and-weak-cement-prices/3087102/$n$, $n$mkt-06$n$, 'draft',
  $n$This Kolkata cement maker sold 7% more cement this quarter, yet kept 59% less profit.$n$,
  $n$Birla Corporation sold 7% more cement, but pet coke prices jumped 64% and cement prices stayed weak, so profit fell to ₹37 crore. Squeezed between suppliers and buyers, margins shrank. Porter's Five Forces card explains who captures an industry's profit.$n$, false, $n$2026-10-31T18:48:00+05:30$n$, 8),
($n$2026-11-01-cotton-duty-exemption$n$, '2026-11-01', $n$india$n$, $n$TEXTILES$n$,
  $n$Government extends duty-free cotton imports by two months to 31 December to ease raw-material costs for textile makers$n$,
  $n$The government has extended the exemption from customs duty on cotton imports by two more months, to 31 December 2026. Cotton imports were first made duty-free in May for five months, until 31 October. The finance ministry said the extension should lower input costs across the textile and apparel industry and help small and medium textile firms by improving cotton supply. The textiles ministry said it would also help meet demand for specialised cotton and support value addition along the textile chain.$n$,
  $n$Removing the import duty makes foreign cotton cheaper to bring in, which adds to the supply available to Indian mills at any price. What shifts a supply curve is what the law of supply card explains.$n$,
  $n$ETV Bharat (PTI); also Daijiworld$n$, $n$https://www.etvbharat.com/en/business/govt-extends-duty-free-cotton-imports-till-dec-31-enn26103100763$n$, $n$econ-08$n$, 'draft',
  $n$The cotton in your next kurta can keep entering India duty-free, at least until New Year's Eve.$n$,
  $n$The government extended duty-free cotton imports to 31 December so textile makers, especially small ones, can get more cotton at lower cost. Cheaper imports add to supply. The law of supply card explains what shifts the supply curve.$n$, false, $n$2026-10-31T08:22:00+05:30$n$, 9),
($n$2026-11-01-zen-technologies-order-book$n$, '2026-11-01', $n$recruiter$n$, $n$DEFENCE$n$,
  $n$Defence simulator maker Zen Technologies nearly doubles revenue to ₹345 crore and lifts profit 64% to ₹102 crore$n$,
  $n$Zen Technologies, which makes training simulators for the armed forces, reported a profit of ₹101.88 crore for July-September, up about 64.6% from ₹61.90 crore a year earlier. Revenue from operations nearly doubled to ₹345.13 crore from ₹173.57 crore. Its order book, the value of contracted work still to be delivered, stood at ₹1,375.70 crore on 30 September. The board has also approved buying a 51.98% stake in Cogknit Semantics for ₹135.15 crore, and the company reported an insured fire loss of about ₹4 crore at a subsidiary.$n$,
  $n$Zen's ₹1,376-crore order book is not revenue yet; it becomes revenue only as simulators are delivered, which is why sales can jump in one quarter. When income is recorded is what the revenue recognition part of the accounting concepts card explains.$n$,
  $n$Whalesbook$n$, $n$https://www.whalesbook.com/corporate-news/English/technology/Zen-Technologies-Q2-Net-Profit-Jumps-64percent-to-Rs-10188-Crore/6ae61154c6c6dccbb90e09d1$n$, $n$acct-12$n$, 'draft',
  $n$Revenue nearly doubled in a quarter: how a ₹1,376-crore order book turns into sales.$n$,
  $n$Zen Technologies' revenue rose to ₹345 crore from ₹174 crore and profit rose 64%, with ₹1,376 crore of orders still to deliver. Orders count as revenue only when delivered. The accounting concepts card on accrual and revenue recognition explains why.$n$, false, $n$2026-10-31T21:34:00+05:30$n$, 10)
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
from news_stories where publish_date = '2026-11-01' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-01' order by rank;
