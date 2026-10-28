-- =====================================================================
-- ChaiCase news brief for 2026-10-28: 12 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-28.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-27 7 AM and 2026-10-28 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-28' and (slug is null or slug not in ($n$2026-10-28-jio-platforms-listing-day$n$, $n$2026-10-28-maruti-q2-profit-falls$n$, $n$2026-10-28-lt-q2-orders$n$, $n$2026-10-28-oil-falls-peace-talks$n$, $n$2026-10-28-sensex-flat-fed-oil$n$, $n$2026-10-28-bajaj-auto-q2-exports$n$, $n$2026-10-28-boeing-q3-loss$n$, $n$2026-10-28-cipla-q2-profit-falls$n$, $n$2026-10-28-visa-q4-results$n$, $n$2026-10-28-ups-q3-results$n$, $n$2026-10-28-jindal-india-howrah-line$n$, $n$2026-10-28-ecl-geotechnical-lab$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-28-jio-platforms-listing-day$n$, '2026-10-28', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms makes its stock market debut on BSE and NSE today after its ₹30,213-crore IPO drew 22 times the bids$n$,
  $n$Shares of Reliance's Jio Platforms are due to start trading on the BSE and NSE on Wednesday, 28 October, after allotment was completed and shares were credited to successful applicants' demat accounts on 27 October. The issue of about ₹30,213 crore was a fresh issue of 27 crore shares, priced at ₹1,065-1,119 each, with a minimum bid of 12 shares, or ₹13,428 at the top of the band. It was subscribed 22.19 times overall: institutional buyers bid 70.55 times their quota, non-institutional investors 14 times and retail investors 2.72 times. HDFC Sky noted that heavy subscription does not guarantee a gain on listing day, since the opening price depends on demand and market conditions on the day.$n$,
  $n$The IPO price was fixed in advance, but bids far exceeded the shares on offer, so most applicants got few or none. Listing day is when the market finds its own price where buyers and sellers meet, the equilibrium the card explains.$n$,
  $n$HDFC Sky; also reported by Kotak Neo and Upstox$n$, $n$https://hdfcsky.com/news/jio-platforms-ipo-shares-allotted-to-list-on-bse-nse-on-october-28-check-key-details$n$, $n$econ-09$n$, 'draft',
  $n$Did your friends get Jio shares? Today India's biggest IPO starts trading, and the market sets the price.$n$,
  $n$Bids came in for 22 times the shares on offer at ₹1,065-1,119, so most applicants missed out. From this morning, buyers and sellers on the exchange decide what a Jio share is really worth. The market equilibrium card explains how that price is found.$n$, true, $n$2026-10-27T09:17:00+05:30$n$, 1),
($n$2026-10-28-maruti-q2-profit-falls$n$, '2026-10-28', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Maruti Suzuki sells a record 6.97 lakh cars in a quarter, yet its profit falls 26% to ₹2,466 crore$n$,
  $n$Maruti Suzuki's consolidated net profit fell 26% to ₹2,466 crore in the July-September quarter from ₹3,349 crore a year earlier, even as revenue from operations rose 26% to ₹53,356 crore. It sold 6,96,654 vehicles, up 26.5% and its best quarter ever; domestic sales rose 33.6% to 5,88,535 units, helped by last September's GST cut, while exports slipped 2.1%. Forbes India reported that a jump in commodity costs linked to the West Asia conflict squeezed the consolidated EBITDA margin to 9.4% from 12.7%. Other income also fell to ₹414 crore from ₹946 crore, which the company put down to mark-to-market losses on its invested surplus.$n$,
  $n$Revenue at the top of the income statement grew 26%, but higher material costs and lower other income meant profit at the bottom fell by about the same amount. Reading the whole statement, not just sales, is the skill the card teaches.$n$,
  $n$Forbes India; also reported by Storyboard18 and Kotak Neo$n$, $n$https://www.forbesindia.com/article/business/automobile/maruti-suzuki-q2-profit-falls-26-percent-despite-record-sales/2999886/1$n$, $n$acct-10$n$, 'draft',
  $n$India's biggest carmaker just had its best-selling quarter ever. Its profit still fell by a quarter.$n$,
  $n$Maruti sold almost 7 lakh cars, up 26.5%, but costlier raw materials linked to the West Asia conflict ate into its margins. Revenue and profit moved in opposite directions. The reading financial statements card shows how that happens.$n$, false, $n$2026-10-27T20:41:00+05:30$n$, 2),
($n$2026-10-28-lt-q2-orders$n$, '2026-10-28', $n$recruiter$n$, $n$RESULTS$n$,
  $n$L&T's quarterly profit rises 32.5% to ₹5,202 crore as orders jump 28% to ₹1.48 lakh crore$n$,
  $n$Larsen & Toubro reported consolidated net profit of ₹5,202 crore for the July-September quarter, up 32.5% from ₹3,926 crore a year earlier, while revenue rose about 16% to ₹78,750 crore. The engineering and construction group won orders worth ₹1,47,665 crore in the quarter, up 28%, and about 63% of them, or ₹92,375 crore, came from outside India. Its order book stood at ₹8,53,514 crore on 30 September.$n$,
  $n$L&T sells to governments, oil companies and other large organisations, where big contracts are decided by many people over long tender processes. That is business-to-business buying, which the card on the buying centre explains.$n$,
  $n$The Daily Jagran; also reported by Upstox and Zee Business$n$, $n$https://www.thedailyjagran.com/business/news/lt-q2-results-net-profit-surges-32-5pc-to-rs-5202-crore-on-strong-revenue-growth-10334194$n$, $n$mkt-09$n$, 'draft',
  $n$L&T won ₹1.48 lakh crore of new orders in three months, and almost two-thirds came from abroad.$n$,
  $n$Its order book now stands above ₹8.5 lakh crore as profit rises 32.5%. Those orders come from governments and giant companies, not shoppers. The B2B buying card shows how such deals get decided.$n$, false, $n$2026-10-27T18:37:00+05:30$n$, 3),
($n$2026-10-28-oil-falls-peace-talks$n$, '2026-10-28', $n$global$n$, $n$OIL$n$,
  $n$Brent oil slips 1.7% to $113.88 as Iran, Saudi Arabia, Pakistan and Turkey agree to keep talking$n$,
  $n$Brent crude for December settled 1.7% lower at $113.88 a barrel on Tuesday, and US WTI fell 1.8% to $99.90, slipping back under $100. Prices eased after Iran, Saudi Arabia, Pakistan and Turkey agreed to continue talks on regional peace and security following a meeting in Tehran, and Oman said its talks with Iran had produced an outline for a temporary arrangement to reopen shipping through the Strait of Hormuz, though obstacles remain. Analysts at Mizuho said hopes of a peace deal, along with profit-taking by speculators, were pushing prices down. Supply worries have not gone away: the Houthis said they struck Saudi Arabia's Ras Tanura refinery with a missile, and UBS expects Brent to stay near $110 until the end of the year.$n$,
  $n$Oil prices move on what traders expect will happen to supply: peace talks raise hopes that more oil will flow, while attacks on refineries threaten to cut it. Shifts in supply and what causes them are what the card explains.$n$,
  $n$Yahoo Finance; also reported by MarineLink (Reuters)$n$, $n$https://finance.yahoo.com/energy/articles/oil-prices-fall-traders-assess-073300098.html$n$, $n$econ-08$n$, 'draft',
  $n$Talk of peace in West Asia pulled oil below $114. For India's import bill, every dollar counts.$n$,
  $n$Brent fell 1.7% as Iran and its neighbours agreed to keep talking, even as the Houthis claimed a strike on a giant Saudi refinery. Prices swing on what traders expect supply to do next. The law of supply card explains why.$n$, false, $n$2026-10-28T00:53:00+05:30$n$, 4),
($n$2026-10-28-sensex-flat-fed-oil$n$, '2026-10-28', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex and Nifty end flat ahead of the US Fed decision, while small-cap shares rise 2.7%$n$,
  $n$The Sensex closed 8.08 points lower at 73,598.67 and the Nifty 50 slipped 3.45 points to 22,749.75 on Tuesday, as costly oil and caution before the US Federal Reserve's decision on Wednesday held back the main indices. Smaller shares did much better: the Nifty Midcap index rose about 1% and the Smallcap index about 2.7%, and 2,807 stocks rose against 1,334 that fell. Media, realty, pharma and auto shares gained, while IT, oil and gas and private banks lost about 0.5% each; Tata Consumer Products, Bharti Airtel and Trent led the Nifty gainers. Foreign portfolio investors sold ₹1,462 crore of Indian shares on Monday, taking their selling this year to a record of about $32.56 billion, according to provisional data.$n$,
  $n$An interest-rate decision in Washington, oil prices in West Asia and foreign money leaving India are forces no Indian company controls, yet they decide how the market moves. These outside forces make up the macro environment the PESTLE card maps.$n$,
  $n$HDFC Sky; also reported by ThePrint (PTI)$n$, $n$https://hdfcsky.com/news/stock-market-close-report-today-october-27-2026-sensex-nifty-flatline-as-fed-looms-oil-boils$n$, $n$mkt-05$n$, 'draft',
  $n$The Sensex barely moved, but two out of three shares rose. Big money is waiting for the US Fed.$n$,
  $n$Small-company shares jumped 2.7% while the main indices ended flat, as foreign investors kept selling and oil stayed near $116. A US rate decision is due on Wednesday. The PESTLE card explains the outside forces at work.$n$, false, $n$2026-10-27T17:00:00+05:30$n$, 5),
($n$2026-10-28-bajaj-auto-q2-exports$n$, '2026-10-28', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Bajaj Auto's quarterly revenue crosses ₹20,000 crore for the first time as exports jump 41%$n$,
  $n$Bajaj Auto's standalone net profit rose 35% to ₹3,354 crore in the July-September quarter from ₹2,480 crore, and revenue from operations grew 34% to ₹20,003 crore, its first quarter above ₹20,000 crore. EBITDA rose 37% to ₹4,172 crore, with the margin at 20.9%. Total vehicle sales rose about 20% to 15,48,884 units, with exports up 41% and domestic sales up 16%. The results beat the expectations of 20 analysts surveyed by Informist, who had forecast revenue of ₹19,085 crore and profit of ₹3,178 crore. Autocar Professional reported that electric Chetak scooters and electric three-wheelers sold nearly 2 lakh units, about a third of domestic sales revenue.$n$,
  $n$Before results, analysts estimate how many vehicles a company will sell and what it will earn; Bajaj's revenue came in almost 5% above that forecast. Estimating demand and market size, and checking it against reality, is what the card covers.$n$,
  $n$Free Press Journal; also reported by Autocar Professional$n$, $n$https://www.freepressjournal.in/business/bajaj-auto-q2-results-net-profit-jumps-35-to-3354-crore-as-revenue-beats-street-estimates$n$, $n$mkt-10$n$, 'draft',
  $n$The Pune bikemaker sold more abroad than analysts guessed, and crossed ₹20,000 crore for the first time.$n$,
  $n$Bajaj Auto's exports rose 41% and electric vehicles now bring in about a third of its domestic revenue. Twenty analysts had forecast lower numbers. The market measurement card explains how such demand estimates are made.$n$, false, $n$2026-10-27T16:22:00+05:30$n$, 6),
($n$2026-10-28-boeing-q3-loss$n$, '2026-10-28', $n$global$n$, $n$RESULTS$n$,
  $n$Boeing's loss shrinks to $116 million and its order backlog hits a record $745 billion, but shares fall on slower 737 output$n$,
  $n$Boeing reported a third-quarter net loss of $116 million, far smaller than the $5.34 billion loss a year earlier, as revenue rose 4% to $24.2 billion on higher defence and services sales. It delivered 161 commercial jets, and its total order backlog reached a record $745 billion, including more than 6,300 commercial aircraft. But its adjusted loss of 34 cents a share was wider than the 21 cents analysts expected, and chief executive Kelly Ortberg said it would take into early next year to reach a production rate of 47 737 jets a month, a target it had planned to hit this summer. Its cash-flow forecasts for 2027 and 2028 also came in below analysts' estimates, and the shares fell in early New York trading.$n$,
  $n$Boeing holds orders worth $745 billion, but it counts revenue only when it delivers a finished plane, so slow production delays income. Recording revenue when it is earned, not when an order is signed, is the rule the card explains.$n$,
  $n$BNN Bloomberg; also reported by RTTNews and Boeing$n$, $n$https://www.bnnbloomberg.ca/business/company-news/2026/10/27/boeing-jetliner-production-challenges-weigh-on-third-quarter-results/$n$, $n$acct-12$n$, 'draft',
  $n$Boeing has $745 billion of orders waiting. It still lost money, because it can't build planes fast enough.$n$,
  $n$The planemaker's loss shrank sharply, but a slower 737 build rate pushed its shares down. Orders on paper only become revenue when jets are delivered. The revenue recognition card explains why.$n$, false, $n$2026-10-27T18:03:00+05:30$n$, 7),
($n$2026-10-28-cipla-q2-profit-falls$n$, '2026-10-28', $n$india$n$, $n$PHARMA$n$,
  $n$Cipla's quarterly profit falls 35% to ₹878 crore as North America sales drop 19%$n$,
  $n$Cipla's consolidated net profit fell 35% to ₹878 crore in the July-September quarter, and total income from operations slipped about 2% to ₹7,404 crore. EBITDA dropped to ₹1,388 crore from ₹1,895 crore, cutting the operating margin to 18.7% from 25%. Sales in India rose 12% to ₹3,516 crore, but North America revenue fell 19% to ₹1,643 crore; other reports linked that fall to lower sales of its generic version of the cancer drug Revlimid as competition grew. The company pointed to new products for the US, including approval for a generic Advair Diskus inhaler and a partnership with Qilu Pharmaceutical on a biosimilar of Keytruda.$n$,
  $n$When more drugmakers sell the same generic medicine, prices and profits fall for everyone. How the number of rivals and the threat of substitutes shape an industry's profits is what the Five Forces card explains.$n$,
  $n$5paisa; also reported by Upstox$n$, $n$https://www.5paisa.com/blog/cipla-q2-results-profit-falls-35-percent-878-crore$n$, $n$mkt-06$n$, 'draft',
  $n$Cipla's India business grew 12%, but its US sales fell 19%. Profit dropped by more than a third.$n$,
  $n$As more rivals launched the same generic cancer drug, Cipla's US earnings shrank, pulling profit down to ₹878 crore. When everyone sells the same product, margins thin out. Porter's Five Forces card explains why.$n$, false, $n$2026-10-27T18:34:00+05:30$n$, 8),
($n$2026-10-28-visa-q4-results$n$, '2026-10-28', $n$global$n$, $n$RESULTS$n$,
  $n$Visa's quarterly revenue rises 13% to $12.1 billion, and it earns about half of that as profit$n$,
  $n$Visa reported net revenue of $12.14 billion for its July-September quarter, up about 13% from $10.72 billion a year earlier, and net income of $6.0 billion, up from $5.09 billion. Earnings per share were $3.19, or $3.48 on an adjusted basis, slightly above the $3.44 analysts expected according to FactSet. For the full year to September, revenue was $45.9 billion and net income $23.5 billion, up about 17%. The company said growth came from higher payment volumes, cross-border spending and the number of transactions it processed.$n$,
  $n$Visa does not lend money; it earns a small fee each time a card on its network is used, and its huge network of shops and banks is very hard for a newcomer to copy. That kind of lasting edge is the competitive advantage the card describes.$n$,
  $n$MarketScreener (Visa results); also filed with the US SEC$n$, $n$https://www.marketscreener.com/news/visa-inc-reports-earnings-results-for-the-fourth-quarter-ended-september-30-2026-ce785cddd08bf625$n$, $n$mkt-06$n$, 'draft',
  $n$Every time you tap a card, Visa earns a tiny fee. Those fees added up to $6 billion of profit in 3 months.$n$,
  $n$Revenue rose 13% to $12.1 billion, and about half of it ended up as profit. Few businesses keep that much of every dollar. Porter's Five Forces card explains why a network like Visa's is so hard to challenge.$n$, false, $n$2026-10-28T04:05:00+05:30$n$, 9),
($n$2026-10-28-ups-q3-results$n$, '2026-10-28', $n$global$n$, $n$RESULTS$n$,
  $n$UPS grows revenue 6.7% to $22.9 billion and lifts US profit 50% after cutting low-margin Amazon parcels$n$,
  $n$UPS reported third-quarter revenue of $22.9 billion, up 6.7% from $21.4 billion, and beat analysts' expectations, with reports saying it raised its outlook. Operating profit in its US domestic business rose 50.3% to $906 million on revenue up 4.5%, after the company deliberately cut back on low-margin Amazon deliveries under a network reorganisation it completed in July. Net income dipped to $1.16 billion from $1.31 billion, as its supply-chain business saw operating profit fall 82.5%. Chief executive Carol Tomé said US consumers remain resilient and holiday demand looks strong; its biggest customers expect daily volumes to rise 25% into the peak season.$n$,
  $n$UPS chose to carry fewer parcels for its largest customer because those parcels earned little, and its US profit rose. Judging customers by the profit they bring over time, not just their volume, is the idea behind customer lifetime value.$n$,
  $n$Transport Topics; also reported by CNBC$n$, $n$https://www.ttnews.com/articles/ups-earnings-q3-2026$n$, $n$mkt-03$n$, 'draft',
  $n$UPS shrank its biggest customer's business on purpose. Its US profit then jumped 50%.$n$,
  $n$The delivery giant cut low-paying Amazon parcels and focused on better-paying shipments ahead of the holiday rush. Fewer parcels, more profit. The customer lifetime value card explains why not every customer is worth keeping at any price.$n$, false, $n$2026-10-27T17:51:00+05:30$n$, 10),
($n$2026-10-28-jindal-india-howrah-line$n$, '2026-10-28', $n$local$n$, $n$BENGAL$n$,
  $n$Jindal (India) spends ₹50 crore to lift a Howrah steel coating line's capacity by 51%$n$,
  $n$Jindal (India) Ltd, part of the BC Jindal Group, said it has commissioned its revamped continuous galvanising line, CGL-5, at its Ranihati plant in Howrah district, West Bengal, after investing ₹50 crore. The upgrade raises the line's output by 51%, from 590 tonnes a day to 889 tonnes a day, and more than doubles its furnace capacity, all inside the existing shed. The company now has about 1.2 million tonnes a year of coated sheet capacity and 1.6 million tonnes of downstream steel capacity in total across its Jangalpur and Ranihati plants. A group spokesperson said the upgrade helps it meet growing demand for value-added coated steel.$n$,
  $n$The ₹50 crore went into equipment that will produce steel for years, so it is capital expenditure recorded as an asset, not a cost charged against one year's profit. The card explains the difference between capital and revenue spending.$n$,
  $n$ThePrint (PTI)$n$, $n$https://theprint.in/economy/jindal-india-commissions-revamped-galvanising-line-at-bengal-plant/3083247/$n$, $n$acct-18$n$, 'draft',
  $n$Just across the Hooghly, a ₹50 crore upgrade lets one Howrah steel line make 51% more each day.$n$,
  $n$Jindal (India) rebuilt its galvanising line at Ranihati without adding a new building, raising output to 889 tonnes a day. Spending that lasts for years is treated differently in the accounts. The capital vs revenue card explains how.$n$, false, $n$2026-10-27T19:47:00+05:30$n$, 11),
($n$2026-10-28-ecl-geotechnical-lab$n$, '2026-10-28', $n$local$n$, $n$BENGAL$n$,
  $n$Eastern Coalfields sets up its own geotechnical lab in West Bengal to test mine safety in-house$n$,
  $n$Eastern Coalfields Ltd, a Coal India subsidiary, has set up a geotechnical laboratory at its headquarters in Sanctoria, West Bengal, which it describes as the first of its kind among Coal India's producing subsidiaries. The lab will carry out rock and soil tests used to check slope stability in open-cast mines and roof and floor stability in underground mines. ECL expects it to cut testing time and cost, reduce its reliance on outside agencies and ease the load on CMPDI, Coal India's planning and design arm. It plans to offer the service to other Coal India companies and possibly to mining and construction firms, and will seek NABL accreditation.$n$,
  $n$By doing tests itself instead of paying outsiders and waiting, ECL is choosing where to spend its money and time; each choice means giving up the alternative. Weighing what you give up is the idea of opportunity cost in the card.$n$,
  $n$ThePrint (PTI)$n$, $n$https://theprint.in/economy/ecl-sets-up-geotechnical-lab/3083246/$n$, $n$econ-06$n$, 'draft',
  $n$A Bengal coal miner stopped waiting on outside labs and built its own. It may even sell the service.$n$,
  $n$Eastern Coalfields' new lab in Sanctoria will test rock and soil for mine safety faster and more cheaply. Making a choice to do it in-house means giving up something else. The opportunity cost card explains the trade-off.$n$, false, $n$2026-10-27T19:47:00+05:30$n$, 12)
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
from news_stories where publish_date = '2026-10-28' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-28' order by rank;
