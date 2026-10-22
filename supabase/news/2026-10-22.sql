-- =====================================================================
-- ChaiCase news brief for 2026-10-22: 12 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-22.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-21 7 AM and 2026-10-22 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-22' and (slug is null or slug not in ($n$2026-10-22-jio-ipo-day-one$n$, $n$2026-10-22-rbi-mpc-minutes$n$, $n$2026-10-22-eternal-blinkit-q2$n$, $n$2026-10-22-sensex-oil-110$n$, $n$2026-10-22-meta-q3-legal-charge$n$, $n$2026-10-22-sbi-dark-web-data$n$, $n$2026-10-22-oil-whipsaw-iran$n$, $n$2026-10-22-rubio-jamnagar-trade$n$, $n$2026-10-22-ihcl-q2-guidance$n$, $n$2026-10-22-tesla-q3-capex$n$, $n$2026-10-22-wall-street-telecom$n$, $n$2026-10-22-east-bengal-hpl-investor$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-22-jio-ipo-day-one$n$, '2026-10-22', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms IPO is booked 3 times on day one, but retail investors fill only 73% of their quota$n$,
  $n$India's biggest-ever IPO drew bids for 60.10 crore shares on its first day against 19.75 crore on offer, a subscription of 3.04 times by evening, according to exchange data compiled by Chittorgarh.com. Big institutions (QIBs) bid for 9.04 times their portion and wealthy individuals (NIIs) for 1.61 times. The retail quota, which is 31.5% of the offer, was only 0.73 times subscribed. The ₹30,213-crore issue is priced at ₹1,065–1,119 a share and stays open until Friday, 23 October.$n$,
  $n$At the same fixed price, the institutional quota faces a shortage (bids far above supply) while the retail quota still has a surplus. Where demand and supply meet at a price, and what happens when they don't, is what market equilibrium explains.$n$,
  $n$Chittorgarh.com (NSE and BSE data)$n$, $n$https://www.chittorgarh.com/news-detail/ipo/ipo-subscription/jio-platforms-ipo/13403/$n$, $n$econ-09$n$, 'draft',
  $n$Big funds wanted 9 times their share of Jio's IPO. Retail investors haven't filled theirs yet.$n$,
  $n$Day one of Jio's ₹30,213-crore IPO showed a sharp split: institutions bid heavily while small investors held back. One price, a shortage in one queue and a surplus in another. The market equilibrium card explains how that happens.$n$, false, $n$2026-10-21T17:50:00+05:30$n$, 1),
($n$2026-10-22-rbi-mpc-minutes$n$, '2026-10-22', $n$india$n$, $n$RBI$n$,
  $n$RBI minutes: all six MPC members backed the rate hike as price pressures spread$n$,
  $n$Minutes released on Wednesday show all six members of the RBI's Monetary Policy Committee voted to raise the repo rate by 25 basis points to 5.50% on 7 October, the first hike in nearly four years. Governor Sanjay Malhotra said 37% of items in the consumer price basket had inflation above 4% in August, up from 20% in March, a sign that price rises are spreading. He said rate cuts are off the table for now, and the next move can only be a hike or a pause. Members pointed to crude oil, food prices and a weak monsoon on the supply side, alongside strong demand and credit growth.$n$,
  $n$A higher repo rate makes loans dearer, so people and firms want to buy less at every price. That is a leftward shift of the whole demand curve, a change in demand rather than a movement along it.$n$,
  $n$ThePrint (PTI)$n$, $n$https://theprint.in/economy/higher-inflation-price-pressure-spillover-led-to-rbi-hiking-rate-mpc-minutes/3078049/$n$, $n$econ-02$n$, 'draft',
  $n$Prices of 37% of everyday items are rising above 4%. The RBI says rate cuts are off the table.$n$,
  $n$The minutes of October's policy meeting show a unanimous vote to raise rates and a warning that more hikes may follow. Costlier EMIs cool spending at every price level. The card on change in demand versus quantity demanded shows why that matters.$n$, false, $n$2026-10-21T19:46:16+05:30$n$, 2),
($n$2026-10-22-eternal-blinkit-q2$n$, '2026-10-22', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Eternal's profit nearly doubles to ₹125 crore as Blinkit revenue jumps 94%$n$,
  $n$Eternal, the parent of Zomato and Blinkit, reported July–September net profit of ₹125 crore, up 92% from ₹65 crore a year ago, on revenue up 77.6% to ₹24,138 crore. Blinkit's revenue rose 93.6% to ₹19,152 crore and its adjusted EBITDA reached ₹184 crore. Zomato's food delivery order value grew 21.5% to ₹11,445 crore, with 28 million average monthly transacting customers. Blinkit now has 2,751 dark stores, and the company expects to cross 3,500 by March 2027 and reach about 5,000 by March 2028.$n$,
  $n$Eternal's CEO said adding more products is the biggest driver of how often customers return and how much of their spending they bring. Earning more from each customer over many orders is what customer lifetime value measures.$n$,
  $n$Business Standard (also reported by Upstox)$n$, $n$https://www.business-standard.com/amp/companies/quarterly-results/eternal-q2fy27-net-profit-jumps-92-to-125-crore-revenue-rises-78-126102101130_1.html$n$, $n$mkt-03$n$, 'draft',
  $n$Your 10-minute Blinkit orders helped Eternal nearly double its profit. Over 2,000 more dark stores are coming.$n$,
  $n$Blinkit's revenue almost doubled in a year, and Eternal plans about 5,000 stores by March 2028. Its bet is simple: carry more products so customers come back more often. That is customer lifetime value at work.$n$, true, $n$2026-10-21T18:51:32+05:30$n$, 3),
($n$2026-10-22-sensex-oil-110$n$, '2026-10-22', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex and Nifty slip as Brent tops $110; auto stocks fall 2% while IT gains$n$,
  $n$The Sensex fell 143.21 points (0.19%) to 73,709.69 and the Nifty 50 lost 77.60 points (0.34%) to 22,811.35 on Wednesday, giving up early gains made on hopes for an India–US trade deal. Brent crude rose 1.31% to $110.15 a barrel, adding to worries about India's import bill and inflation, while foreign investors kept selling. Nifty Auto fell 1.99% and Nifty Metal 1.97%. Nifty IT was the only major sector index to rise, up about 2.5%.$n$,
  $n$Cars and fuel are used together, so when fuel gets costlier, demand for cars tends to weaken. That link between one product's price and another product's demand is cross elasticity, and investors marked down auto shares accordingly.$n$,
  $n$Free Press Journal (also reported by Kotak Neo)$n$, $n$https://www.freepressjournal.in/business/sensex-drops-143-points-as-nifty-slips-below-22900-at-closing-rising-crude-oil-prices-above-110-trigger-stock-market-sell-off$n$, $n$econ-05$n$, 'draft',
  $n$Oil crossed $110 and car-maker shares fell 2%. Here's why a fuel price moves a car company.$n$,
  $n$Indian markets ended lower as costly crude overshadowed trade-deal hopes, with autos and metals hit hardest. Fuel and cars are complements: when one gets dearer, demand for the other can fall. The cross elasticity card explains the link.$n$, false, $n$2026-10-21T15:57:07+05:30$n$, 4),
($n$2026-10-22-meta-q3-legal-charge$n$, '2026-10-22', $n$global$n$, $n$BIG TECH$n$,
  $n$Meta beats revenue forecasts at $64.6 billion, but a $10 billion legal charge cuts operating profit$n$,
  $n$Meta's July–September revenue rose 26% to $64.6 billion, above the $63.3 billion analysts expected, and it forecast $73–76 billion for the final quarter. A charge of about $10 billion for a settlement with US states over youth safety pushed operating income down 37% to $13 billion; excluding it, operating income would have been $22.9 billion. Capital spending, mostly on AI, reached $34.9 billion against $19.4 billion a year earlier, and free cash flow turned negative at $2.1 billion. Shares still rose as much as 5% after hours.$n$,
  $n$Meta recorded the expected settlement cost as an expense now, even though payments will be spread over years. Booking a probable, measurable obligation when it arises is how provisions work.$n$,
  $n$Fortune$n$, $n$https://fortune.com/2026/10/21/meta-q3-earnings-mark-zuckerberg-capex-muse/$n$, $n$acct-19$n$, 'draft',
  $n$Meta took a $10 billion legal hit and burned cash on AI. Investors still pushed its shares up 5%.$n$,
  $n$Revenue beat forecasts, but a youth-safety settlement and huge AI spending ate into profit and cash flow. Why book a cost today for payments spread over a decade? The provisions card explains.$n$, false, $n$2026-10-22T01:47:52+05:30$n$, 5),
($n$2026-10-22-sbi-dark-web-data$n$, '2026-10-22', $n$recruiter$n$, $n$BANKING$n$,
  $n$SBI probes suspected cyber attack after about 3,900 customers' records appear on the dark web$n$,
  $n$State Bank of India, the country's largest lender by assets, told the stock exchanges on Wednesday that it is investigating a suspected cyber attack. A first review of about 3,75,000 records found online identified 3,897 containing customers' personal details, such as names, mobile numbers, dates of birth, email and home addresses, and branch and customer ID numbers. SBI said a detailed investigation is under way and the incident has no material impact on its operations, finances or business continuity. Bank of Baroda reported a similar breach in July.$n$,
  $n$Disclosing a material risk to the exchanges promptly, and showing the board is investigating, is part of corporate governance. Investors and customers rely on that openness to judge how well a bank is run.$n$,
  $n$ThePrint (Bloomberg)$n$, $n$https://theprint.in/india/cyberattack-hits-sbi-exposes-customer-data-onto-dark-web/3077679/$n$, $n$ethics-12$n$, 'draft',
  $n$India's biggest bank says nearly 3,900 customers' details turned up on the dark web.$n$,
  $n$SBI disclosed the suspected breach to the stock exchanges and has opened an investigation. How quickly and openly a company reports bad news says a lot about how it is run. That is the heart of corporate governance.$n$, false, $n$2026-10-21T15:28:41+05:30$n$, 6),
($n$2026-10-22-oil-whipsaw-iran$n$, '2026-10-22', $n$global$n$, $n$OIL$n$,
  $n$Brent swings between a five-month high and Iran peace hopes, back near $110$n$,
  $n$Brent crude touched $111.99 a barrel on Tuesday, its highest level in five months, before settling at $108.79 after Iran's president met Pakistan's army chief in Tehran to discuss mediation. By early Wednesday it had climbed back to $109.64, and Indian reports put it at about $110 by the afternoon. Kpler counted at least 18 attacks on vessels over two weeks, and Houthi claims of strikes on Saudi energy sites remain unverified. Morgan Stanley reportedly expects Brent to average about $105 in the October–December quarter.$n$,
  $n$Attacks on tankers threaten future supply, so sellers demand more today; talk of peace eases that fear. Expectations about future supply are one of the main things that shift a supply curve.$n$,
  $n$Discovery Alert (also reported by FinanceFeeds)$n$, $n$https://discoveryalert.com/news/oil-prices-brent-iran-talks-october-2026/$n$, $n$econ-08$n$, 'draft',
  $n$Oil hit a five-month high, fell on peace talk, then climbed back. All within about a day.$n$,
  $n$Brent is swinging on every headline from the Gulf, from tanker attacks to mediation talks. A rumour about tomorrow's supply moves today's price. The law of supply card shows what shifts the curve.$n$, false, $n$2026-10-21T09:54:17+05:30$n$, 7),
($n$2026-10-22-rubio-jamnagar-trade$n$, '2026-10-22', $n$india$n$, $n$TRADE$n$,
  $n$Rubio tours Reliance's Jamnagar refinery, says only 'a small number of items' remain in trade deal$n$,
  $n$US Secretary of State Marco Rubio arrived in Jamnagar, Gujarat, on Wednesday to visit Reliance Industries' refinery and Vantara, a day after talks with External Affairs Minister S. Jaishankar in Mumbai. Rubio said only "a small number of items" were left to settle and the India–US trade agreement could be wrapped up shortly. Energy is central to the talks: Washington has objected to India's purchases of Russian oil and wants India to buy more American energy. Differences remain over last year's punitive US tariffs, immigration curbs and higher H-1B visa fees.$n$,
  $n$Tariffs, visa rules and sanctions on oil are political and legal forces outside any company's control. PESTLE analysis is the tool firms use to track such outside forces.$n$,
  $n$Business Today$n$, $n$https://www.businesstoday.in/india/story/marco-rubio-arrives-in-jamnagar-to-visit-reliance-refinery-as-india-us-trade-deal-moves-closer-to-final-agreement-562763-2026-10-21$n$, $n$mkt-05$n$, 'draft',
  $n$America's top diplomat toured the world's largest single-site refinery as a trade deal nears the finish line.$n$,
  $n$Rubio's Jamnagar stop came as both sides said the India–US deal is almost done, with oil, tariffs and H-1B fees still in play. These are forces no single company controls. PESTLE analysis is how businesses map them.$n$, false, $n$2026-10-21T13:03:17+05:30$n$, 8),
($n$2026-10-22-ihcl-q2-guidance$n$, '2026-10-22', $n$recruiter$n$, $n$HOTELS$n$,
  $n$Taj owner IHCL posts its 18th record quarter and raises its growth forecast$n$,
  $n$Indian Hotels Company (IHCL), the Tata Group firm that owns Taj, reported July–September consolidated revenue of ₹2,566 crore, up 21%, and profit after tax of ₹349 crore, up 23%. Revenue per available room at its domestic same-store hotels rose 25%. The company raised its full-year revenue growth forecast to 15–17%, from 12–14%, citing demand from weddings, social events and conferences. Its portfolio now counts 670 hotels, including 280 still in the pipeline.$n$,
  $n$Luxury hotel stays are something people spend more on as incomes rise, faster than their income grows. That is a high income elasticity of demand, which is why hotel chains thrive in a growing economy.$n$,
  $n$Travel PR News (profit also reported by Upstox)$n$, $n$https://travelprnews.com/article/ihcl-raises-revenue-outlook-after-record-quarter-as-taj-hotel-portfolio-reaches-670-properties/$n$, $n$econ-04$n$, 'draft',
  $n$Weddings and conferences are filling Taj hotels. IHCL just had its 18th record quarter in a row.$n$,
  $n$The Tata hotel company raised its growth forecast as room revenue climbed 25%. As Indians earn more, they spend even more on luxury stays. Income elasticity of demand explains why.$n$, false, $n$2026-10-21T23:40:04+05:30$n$, 9),
($n$2026-10-22-tesla-q3-capex$n$, '2026-10-22', $n$global$n$, $n$AUTO$n$,
  $n$Tesla's capital spending more than doubles to $4.7 billion as profit slips$n$,
  $n$Tesla's July–September revenue was $28.0 billion, slightly below the $28.3 billion analysts expected, while adjusted earnings of $0.48 a share beat the $0.45 forecast. Adjusted net income fell 4% to $1.7 billion and deliveries were down 2%. Capital spending rose 110% to $4.7 billion as the company pours money into AI and robotics, yet free cash flow was a positive $1.5 billion. Special committees at Tesla and SpaceX are reviewing a possible merger, and the shares were flat after hours.$n$,
  $n$Money spent on factories and AI computers is capital expenditure: it builds long-lasting assets and is spread over years, unlike day-to-day running costs. That split is why Tesla can spend heavily and still show a profit.$n$,
  $n$Yahoo Finance (also reported by Closing Look)$n$, $n$https://finance.yahoo.com/markets/stocks/articles/tsla-stock-trades-flat-hours-211308228.html$n$, $n$acct-18$n$, 'draft',
  $n$Tesla sold fewer cars but more than doubled its spending on AI and robots.$n$,
  $n$Revenue dipped and deliveries fell, but Tesla's investment jumped 110% in a year. Why doesn't all that spending wipe out its profit? The card on capital versus revenue expenditure explains.$n$, false, $n$2026-10-22T02:43:08+05:30$n$, 10),
($n$2026-10-22-wall-street-telecom$n$, '2026-10-22', $n$global$n$, $n$US MARKETS$n$,
  $n$Wall Street rises on a chip rally, while AT&T sinks on fears of a satellite rival$n$,
  $n$The Nasdaq Composite rose 1.05% to 26,702.86, the S&P 500 gained 0.58% to 7,757.17 and the Dow added 0.69% to 52,856.09 on Wednesday, led by chip and AI stocks. SpaceX shares rose 7.79% after it reported its first profit as a listed company, while IBM gained 3.94%. Communication services was the weakest sector, down 1.11%, as telecom shares fell on fears that a satellite company could enter the wireless business; AT&T dropped 6.45%.$n$,
  $n$Telecom shares fell not on their own results but on the fear of a new kind of competitor. The threat of new entrants is one of Porter's five forces that decide how profitable an industry can be.$n$,
  $n$Closing Look by Frank Cappelleri (index moves also reported by Yahoo Finance)$n$, $n$https://cappnotes.substack.com/p/closing-look-wednesday-october-21$n$, $n$mkt-06$n$, 'draft',
  $n$AT&T lost 6% in a day, not over its own results, but over fear of a rival in space.$n$,
  $n$US stocks climbed on AI optimism, but telecom shares slid on worries a satellite company could move into wireless. A new entrant can hurt an industry before it sells a single plan. Porter's Five Forces explains why.$n$, false, $n$2026-10-22T03:51:21+05:30$n$, 11),
($n$2026-10-22-east-bengal-hpl-investor$n$, '2026-10-22', $n$local$n$, $n$KOLKATA$n$,
  $n$Haldia Petrochemicals reported to be frontrunner to become East Bengal's new investor$n$,
  $n$Kolkata football club East Bengal is close to getting a new investor, with Haldia Petrochemicals (HPL) the frontrunner, according to reports cited by myKhel; the club has not confirmed it. HPL is promoted mainly by Purnendu Chatterjee's The Chatterjee Group, and the West Bengal government also holds a stake. Emami Group ended its role as the club's investor and manager on 25 August, handing its shares and voting rights back, but stayed on as a sponsor. The club is playing the 2026–27 ISL season and continental football while it looks for long-term funding.$n$,
  $n$Accounts assume a business will keep running for the foreseeable future. When a main investor leaves, the key question is whether the entity can fund itself and carry on, which is what the going concern idea is about.$n$,
  $n$myKhel$n$, $n$https://www.mykhel.com/football/east-bengal-set-to-get-new-investor-as-haldia-petrochemicals-emerges-as-frontrunner-456949.html$n$, $n$acct-11$n$, 'draft',
  $n$Kolkata's East Bengal lost its investor in August. A Haldia petrochemicals giant may now step in.$n$,
  $n$Reports say HPL is close to backing the Red and Gold after Emami stepped back to a sponsor role. A club, like any business, needs secure funding to keep running. That is the going concern idea in accounting.$n$, false, $n$2026-10-21T17:13:00+05:30$n$, 12)
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
from news_stories where publish_date = '2026-10-22' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-22' order by rank;
