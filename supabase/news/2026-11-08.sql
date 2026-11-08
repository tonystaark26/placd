-- =====================================================================
-- ChaiCase news brief for 2026-11-08: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-08.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-07 7 AM and 2026-11-08 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-08' and (slug is null or slug not in ($n$2026-11-08-tata-steel-q2-india-strength$n$, $n$2026-11-08-brent-biggest-weekly-drop-since-2020$n$, $n$2026-11-08-hindustan-coca-cola-ipo-drhp$n$, $n$2026-11-08-berkshire-buybacks-double$n$, $n$2026-11-08-divis-labs-profit-jumps-64$n$, $n$2026-11-08-bengal-policy-land-and-debt-questions$n$, $n$2026-11-08-cait-diwali-trade-7-lakh-crore$n$, $n$2026-11-08-il-jin-electronics-ipo$n$, $n$2026-11-08-softbank-sells-lenskart-stake$n$, $n$2026-11-08-tata-chemicals-q2-loss$n$, $n$2026-11-08-nse-gold-receipts-dhanteras-record$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-08-tata-steel-q2-india-strength$n$, '2026-11-08', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Tata Steel's profit rises about 18% to roughly ₹3,700 crore as India carries the quarter; auditor flags its Dutch unit and Noel Tata to retire$n$,
  $n$Tata Steel reported consolidated net profit of roughly ₹3,670-3,700 crore for the July-September quarter, up about 18% from ₹3,102 crore a year earlier and about 58% from the previous quarter, according to reports. Consolidated revenue was ₹65,436 crore and EBITDA rose 17% year on year to ₹10,665 crore. The India business earned ₹5,055 crore after tax on revenue of ₹42,653 crore, with domestic deliveries up 16% from the previous quarter to 5.98 million tonnes, while the UK unit posted an EBITDA loss of £56 million. According to the company's filing, auditor Price Waterhouse qualified its opinion on the standalone results because the value of the investment in Tata Steel Nederland was not marked down, and vice chairman Noel Tata will retire from the board on 11 November.$n$,
  $n$The auditor's objection is about caution: when a loss in an investment's value looks probable, accounting expects it to be recognised rather than waited out. That rule of prudence is what the conservatism part of the accounting conventions card explains.$n$,
  $n$Devdiscourse (ANI); also Investywise$n$, $n$https://www.devdiscourse.com/article/business/4003265-tata-steel-reports-rs-5055-crore-net-profit-in-india-business-for-q2fy27$n$, $n$acct-13$n$, 'draft',
  $n$Tata Steel's profit jumped 58% in three months, yet its own auditor still raised a red flag.$n$,
  $n$India's steel business delivered more tonnes and fatter margins, while the UK unit lost money. The auditor objected to how a Dutch investment is valued. The accounting conventions card explains why prudence matters.$n$, false, $n$2026-11-07T18:37:00+05:30$n$, 1),
($n$2026-11-08-brent-biggest-weekly-drop-since-2020$n$, '2026-11-08', $n$global$n$, $n$OIL$n$,
  $n$Brent ends the week at $98.32 after a fall of more than 16%, its steepest weekly drop since 2020, on bets of a US-Iran deal$n$,
  $n$Brent crude settled at $98.32 a barrel on Friday, almost unchanged on the day but down more than 16% from the previous week's close of $117.64, its biggest weekly fall since the start of the pandemic in 2020. US crude (WTI) settled at $90.83, down nearly 13% for the week. Traders were betting that the Democrats' win in both houses of the US Congress would push Washington towards a deal with Iran, and Iran reportedly sent a nuclear proposal to the US through Qatar, though no agreement has been announced. Attacks on tankers near the Strait of Hormuz continued, which kept prices from falling further. Traders now watch US inflation data on 10 November and OPEC's monthly report on 11 November.$n$,
  $n$Oil fell even though not one extra barrel has reached the market yet: traders priced in the chance that Iranian supply may return. Expectations of future supply are one of the forces that shift the whole supply curve, as the supply card explains.$n$,
  $n$FinanceFeeds (citing CNBC); also RTÉ, Seeking Alpha$n$, $n$https://financefeeds.com/brent-crude-oil-price-98-32-saturday-week-ahead-us-iran-deal-bets-cpi-10-november-bull-105-bear-93/$n$, $n$econ-08$n$, 'draft',
  $n$Oil just had its worst week since Covid, and not a single extra barrel has arrived yet.$n$,
  $n$Brent fell from about $118 to $98 in five days on hopes of a US-Iran deal. Markets moved on what supply might do next. The supply card shows how expectations shift the supply curve.$n$, false, $n$2026-11-07T14:39:57+05:30$n$, 2),
($n$2026-11-08-hindustan-coca-cola-ipo-drhp$n$, '2026-11-08', $n$india$n$, $n$IPO$n$,
  $n$Coca-Cola's Indian bottler files for an IPO of nearly 100 crore shares, all sold by the parent, so the company raises nothing$n$,
  $n$Hindustan Coca-Cola Holdings, which bottles drinks such as Thums Up, Maaza and Kinley, has filed draft IPO papers with SEBI. The offer is entirely an offer for sale of up to about 99.75 crore shares by its promoter, a Coca-Cola Company subsidiary, so all the money will go to the seller and none to the bottler itself. The promoter's stake would fall from about 60% to about 45%, while Jubilant Beverages, which owns the other 40%, is not selling. The company runs 14 plants across 10 states and four union territories and sells through about 17 lakh shops. Revenue from its retained units rose about 20% to ₹4,310 crore in the June quarter, but the price band and dates are not yet set.$n$,
  $n$Because the business is treated as separate from its owners, an offer for sale moves money from new shareholders to the old owner, and the company's own bank balance does not change. That separation is the business entity concept in the accounting concepts card.$n$,
  $n$Free Press Journal; also Sunday Guardian$n$, $n$https://www.freepressjournal.in/business/coca-colas-indian-bottling-powerhouse-sets-its-sights-on-the-stock-market-hindustan-coca-cola-holdings-unveils-mega-ipo-plans-through-nearly-100-crore-share-offer$n$, $n$acct-11$n$, 'draft',
  $n$The company behind your Thums Up is going public, yet it won't get a single rupee from the IPO.$n$,
  $n$Coca-Cola's Indian bottler plans to sell almost 100 crore shares, all owned by its parent. The money goes to the seller, not the business. The accounting concepts card explains why a company and its owners are separate.$n$, false, $n$2026-11-07T15:01:00+05:30$n$, 3),
($n$2026-11-08-berkshire-buybacks-double$n$, '2026-11-08', $n$global$n$, $n$GLOBAL COMPANIES$n$,
  $n$Berkshire Hathaway more than doubles buybacks to $9.6 billion as operating earnings slip 5.8% to $12.7 billion$n$,
  $n$Berkshire Hathaway, now led by Greg Abel, bought back about $9.6 billion of its own shares in the July-September quarter, more than double the $4.5 billion of the previous quarter, taking 2026 buybacks to about $14.4 billion. Operating earnings fell 5.8% to $12.7 billion, mainly because insurance underwriting profit dropped 43% and insurance investment income fell 14%, while the railroad, energy and manufacturing businesses earned more. Total earnings fell 28% to $22.1 billion as investment gains roughly halved. Its cash pile still rose to about $377 billion, or about $352 billion on a narrower measure. Berkshire's shares are up 13% this year against 7.8% for the S&P 500.$n$,
  $n$Every dollar spent buying back shares is a dollar not spent on a new acquisition or kept for later. Choosing between those uses of scarce cash, and what you give up by choosing one, is what the opportunity cost card explains.$n$,
  $n$CNBC; also Bloomberg$n$, $n$https://www.cnbc.com/2026/11/07/berkshire-hathaway-q3-2026-earnings-buybacks.html$n$, $n$econ-06$n$, 'draft',
  $n$Sitting on $377 billion in cash, Warren Buffett's old company decided its best buy was itself.$n$,
  $n$Berkshire spent $9.6 billion buying back its own shares even as profits dipped. Every dollar has other possible uses. The opportunity cost card shows how firms weigh what they give up.$n$, false, $n$2026-11-07T19:32:00+05:30$n$, 4),
($n$2026-11-08-divis-labs-profit-jumps-64$n$, '2026-11-08', $n$india$n$, $n$RESULTS$n$,
  $n$Divi's Laboratories' quarterly profit jumps about 64% to ₹1,127 crore as revenue climbs 35%$n$,
  $n$Hyderabad-based drug ingredient maker Divi's Laboratories reported net profit of ₹1,127 crore for the July-September quarter, up 63.6% from ₹689 crore a year earlier. Revenue from operations rose 35.4% to ₹3,676 crore from ₹2,715 crore. Total expenses grew more slowly, to ₹2,265 crore from ₹1,948 crore, which is why profit grew much faster than sales. Before the results, brokerages Motilal Oswal and Prabhudas Lilladher had estimated adjusted profit of about ₹727-754 crore.$n$,
  $n$Profit rose almost twice as fast as revenue because costs grew more slowly than sales, and you can only see that by reading the income statement line by line. That skill is what the financial statements card teaches.$n$,
  $n$Daily Excelsior (PTI); also Business Standard$n$, $n$https://www.dailyexcelsior.com/divis-lab-net-profit-surges-63-pc-to-rs-1127-cr-in-q2/$n$, $n$acct-10$n$, 'draft',
  $n$Sales rose 35%, but profit rose 64%. This drugmaker shows why costs can matter more than revenue.$n$,
  $n$Divi's earned ₹1,127 crore in the quarter, far ahead of brokers' estimates. Expenses grew much more slowly than sales. The financial statements card shows how to spot that in the numbers.$n$, false, $n$2026-11-07T15:06:00+05:30$n$, 5),
($n$2026-11-08-bengal-policy-land-and-debt-questions$n$, '2026-11-08', $n$local$n$, $n$BENGAL$n$,
  $n$Bengal's new investment policy offers up to 120% assistance, but industry and economists say land and an ₹8 lakh crore debt will decide its fate$n$,
  $n$West Bengal's first investment promotion policy under Chief Minister Suvendu Adhikari offers assistance of up to 120% of eligible investment in plant and machinery for thrust sectors such as semiconductors, electronics, electric vehicles and batteries, and up to 100% for other units, paid for up to 10 years. It also promises fixed approval timelines, a designated officer for projects of ₹100 crore or more, and support for employers' provident fund costs on new jobs, with full support for women and transgender workers in small businesses. Bengal Chamber of Commerce president Abhijit Banerjee called the policy inclusive but said implementation will matter, and Bandhan Bank CEO Chandrasekhar Ghosh argued the state should buy land itself and hand it to industry. Economists pointed out that the state carries about ₹8 lakh crore of debt, and the fate of about ₹50,000 crore of incentives promised under earlier policies is unclear.$n$,
  $n$Government policy, incentives and the state's finances are outside forces that every company weighs before choosing where to build a factory. They are the political and economic parts of the macro environment in the PESTLE card.$n$,
  $n$ThePrint; also Millennium Post$n$, $n$https://theprint.in/india/governance/land-power-among-big-questions-as-bengals-new-industry-policy-makes-right-noises-on-tech-climate/3092926/$n$, $n$mkt-05$n$, 'draft',
  $n$Bengal will pay up to 120% of a factory's machinery cost. Kolkata's business leaders ask: where's the land?$n$,
  $n$The new policy rewards chip, EV and battery investors in Bengal. Industry welcomes it but worries about land and state debt. The PESTLE card shows how government shapes business decisions.$n$, false, $n$2026-11-07T10:44:00+05:30$n$, 6),
($n$2026-11-08-cait-diwali-trade-7-lakh-crore$n$, '2026-11-08', $n$india$n$, $n$FESTIVE ECONOMY$n$,
  $n$Diwali trade has crossed ₹6 lakh crore and is set to pass ₹7 lakh crore, traders' body CAIT estimates$n$,
  $n$The Confederation of All India Traders (CAIT) estimates that Diwali-related business across India has already crossed ₹6 lakh crore and expects it to pass ₹7 lakh crore. In Delhi alone, it says Diwali trade has crossed ₹1 lakh crore. CAIT said buying peaked on Dhanteras and was strong in gold and silver, phones, TVs and home appliances, clothing, sweets, cars and two-wheelers, and handmade local products. In October, CAIT had projected festive trade of over ₹7 lakh crore, 15-18% more than last year's estimated ₹6.05 lakh crore. These are the traders' body's own estimates, not official data.$n$,
  $n$CAIT's numbers are an attempt to estimate how big festive demand is across a whole country, built from what traders report. How such market size estimates are made, and why they need care, is what the market measurement card covers.$n$,
  $n$Sambad English (IANS); also Social News XYZ$n$, $n$https://sambadenglish.com/economy/indias-diwali-sales-poised-to-cross-rs-7-lakh-crore-cait-12791924$n$, $n$mkt-10$n$, 'draft',
  $n$As Kolkata lights up for Kali Puja and Diwali tonight, India's festive shopping heads past ₹7 lakh crore.$n$,
  $n$Traders say Diwali sales have topped ₹6 lakh crore, led by gold, gadgets and clothes. But who counts a whole country's shopping? The market measurement card explains how demand gets estimated.$n$, true, $n$2026-11-07T16:02:00+05:30$n$, 7),
($n$2026-11-08-il-jin-electronics-ipo$n$, '2026-11-08', $n$india$n$, $n$IPO$n$,
  $n$Amber Enterprises' electronics arm IL JIN files for a ₹2,500 crore IPO, all fresh shares, to cut debt and buy machinery$n$,
  $n$IL JIN Electronics, a subsidiary of air-conditioner maker Amber Enterprises, has filed draft papers with SEBI for an IPO of about ₹2,500 crore. The entire issue is new shares, with no sale by existing owners, so the money goes to the company. It plans to use the funds to repay borrowings of the company and its subsidiaries Ascent Circuits and Shogini Technoarts, to buy plant and machinery, and for general purposes. IL JIN makes electronics for other brands, bare printed circuit boards, power electronics and industrial automation products at 11 factories, 10 in India and one in Israel. Its revenue grew from ₹1,240 crore in FY24 to ₹3,268 crore in FY26.$n$,
  $n$When fresh shares are sold to repay loans, cash comes in as owners' capital and goes out to cut liabilities, and both sides of the balance sheet stay equal. That balancing is what the accounting equation card explains.$n$,
  $n$Daily Excelsior (PTI); also Free Press Journal$n$, $n$https://www.dailyexcelsior.com/il-jin-electronics-files-draft-papers-for-rs-2500-cr-ipo/$n$, $n$acct-09$n$, 'draft',
  $n$Its revenue nearly tripled in two years. Now this electronics maker wants ₹2,500 crore to pay off loans.$n$,
  $n$Amber's circuit-board and electronics arm plans an IPO of all new shares. Most of the money will cut debt. The accounting equation card shows how that reshapes a balance sheet.$n$, false, $n$2026-11-07T15:07:00+05:30$n$, 8),
($n$2026-11-08-softbank-sells-lenskart-stake$n$, '2026-11-08', $n$india$n$, $n$MARKETS$n$,
  $n$SoftBank sells 1.56% of Lenskart for about ₹1,896 crore, and Goldman Sachs is the biggest buyer$n$,
  $n$A SoftBank affiliate sold 2.72 crore shares of eyewear retailer Lenskart, about 1.56% of the company, at ₹697.15 each in a block deal on Friday, raising about ₹1,896 crore. Before the sale, SoftBank held about 7.27% of Lenskart. Thirteen domestic and global institutions bought all the shares, led by Goldman Sachs with about ₹640 crore and Societe Generale with about ₹624 crore, with Kotak Mahindra Mutual Fund, Norway's Norges Bank and UTI AMC among the others. Lenskart's shares still rose about 0.9% to close near ₹725 on the NSE.$n$,
  $n$A big seller offloaded a block of shares, yet the price held because enough buyers were ready at that level. The way willing buyers and sellers settle on a price is what the market equilibrium card explains.$n$,
  $n$Kotak Neo; also Business Standard$n$, $n$https://www.kotakneo.com/news/stocks/softbank-sells-lenskart-shares-and-alivus-promoter-offloads-stake/$n$, $n$econ-09$n$, 'draft',
  $n$SoftBank sold ₹1,896 crore of Lenskart shares in one go, and the stock still went up.$n$,
  $n$Thirteen institutions, led by Goldman Sachs, bought every share SoftBank sold. Strong buyers absorbed a huge sale. The market equilibrium card shows how a price finds its balance.$n$, false, $n$2026-11-07T10:32:00+05:30$n$, 9),
($n$2026-11-08-tata-chemicals-q2-loss$n$, '2026-11-08', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Tata Chemicals swings to a ₹50 crore quarterly loss as an oversupplied soda ash market and high energy costs hit overseas units$n$,
  $n$Tata Chemicals reported a consolidated loss of ₹50 crore for the July-September quarter, against a profit of ₹219 crore a year earlier, even though revenue rose 8% to ₹4,177 crore. EBITDA fell 29% to ₹381 crore. The company said the global soda ash market remains oversupplied, which hurt prices in its US business, while its UK unit was hit by high energy and logistics costs linked to the Middle East conflict and its Kenya operations remain suspended. The India business did well on higher salt volumes, and the company plans to exit some loss-making export markets and focus on cutting debt.$n$,
  $n$When more soda ash is produced than buyers want at current prices, sellers have to cut prices, and margins shrink. That surplus, and how prices fall to clear it, is what the market equilibrium card explains.$n$,
  $n$Investing.com India; also Investywise$n$, $n$https://in.investing.com/news/stock-market-news/tata-chemicals-q2-fy27-slides-revenue-rises-8-as-margins-contract-93CH-5688745$n$, $n$econ-09$n$, 'draft',
  $n$Tata Chemicals sold 8% more but slipped into a loss. Blame a world with too much soda ash.$n$,
  $n$Revenue rose, yet the company lost ₹50 crore as global oversupply dragged down prices. India held up well. The market equilibrium card shows what happens when supply outruns demand.$n$, false, $n$2026-11-07T18:30:00+05:30$n$, 10),
($n$2026-11-08-nse-gold-receipts-dhanteras-record$n$, '2026-11-08', $n$india$n$, $n$GOLD$n$,
  $n$NSE's electronic gold receipts log a record 2,27,692 units traded on Dhanteras$n$,
  $n$The National Stock Exchange said trading in its Electronic Gold Receipts (EGR) segment hit a record 2,27,692 units on Dhanteras. EGRs let investors own gold in demat form, backed by physical gold held in approved vaults, with exchange clearing and settlement. NSE said gold suppliers took active part, which led to a large creation of new receipts. NSE's chief business development officer Sriram Krishnan said converting household and recycled gold into EGRs could help put idle gold to use and reduce India's dependence on imports.$n$,
  $n$Dhanteras buyers still want the security of owning gold, and EGRs offer it in demat form, without keeping metal at home. Meeting an old need with a different bundle of benefits is what the value proposition card describes.$n$,
  $n$Devdiscourse; also ETV Bharat (ANI)$n$, $n$https://www.devdiscourse.com/article/business/4003161-nse-electronic-gold-receipts-log-record-trading-volumes-on-dhanteras$n$, $n$mkt-02$n$, 'draft',
  $n$This Dhanteras, a record amount of gold was bought without anyone touching a coin.$n$,
  $n$NSE's electronic gold receipts saw their busiest day ever on Dhanteras. The gold sits in a vault and the owner holds it in demat form. The value proposition card explains why that appeals to buyers.$n$, false, $n$2026-11-07T13:22:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-11-08' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-08' order by rank;
