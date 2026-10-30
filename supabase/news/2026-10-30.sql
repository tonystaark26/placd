-- =====================================================================
-- ChaiCase news brief for 2026-10-30: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-30.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-29 7 AM and 2026-10-30 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-30' and (slug is null or slug not in ($n$2026-10-30-ecb-holds-lagarde-exit$n$, $n$2026-10-30-coal-india-q2-profit$n$, $n$2026-10-30-amazon-q3-aws-capex$n$, $n$2026-10-30-indigo-q2-loss-fuel$n$, $n$2026-10-30-sensex-jumps-905$n$, $n$2026-10-30-us-gdp-q3-3-4$n$, $n$2026-10-30-trent-q2-zudio-999$n$, $n$2026-10-30-asian-paints-q2$n$, $n$2026-10-30-kolkata-makeover-skymax$n$, $n$2026-10-30-godrej-consumer-q2$n$, $n$2026-10-30-firstsource-q2-attrition$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-30-ecb-holds-lagarde-exit$n$, '2026-10-30', $n$global$n$, $n$ECB$n$,
  $n$European Central Bank holds its deposit rate at 2.5% as inflation hits 3.8%, and Christine Lagarde says she will leave in February$n$,
  $n$The European Central Bank kept its deposit rate at 2.5% on Thursday, after raising rates twice earlier this year, the latest in September. Inflation in the eurozone climbed to 3.8% in September from 3.2% in August, close to double the bank's 2% goal, and the ECB said rising energy prices pose upside risks to inflation and downside risks to growth. On the same day the ECB announced that its president, Christine Lagarde, will step down on 7 February 2027, about nine months before her term ends; the bank gave no reason, though reports have linked the timing to France's presidential election in April 2027. Her successor will be chosen by the European Council.$n$,
  $n$Energy that costs more to produce pushes up the price of almost everything else, which is why Europe's inflation keeps rising even without a demand boom. That is a shift in supply driven by input costs, which the law of supply card explains.$n$,
  $n$Euronews; also ECB press releases$n$, $n$https://www.euronews.com/2026/10/29/ecb-holds-rates-at-25-as-lagarde-announces-early-exit-with-inflation-near-double-the-targe$n$, $n$econ-08$n$, 'draft',
  $n$Europe's inflation is nearly double its target, and the woman steering its money is leaving early.$n$,
  $n$The ECB held its rate at 2.5% as eurozone inflation hit 3.8%, blaming rising energy prices, and Christine Lagarde announced she will quit in February. Costlier energy raises the cost of making everything. The law of supply card shows how input costs shift supply and push prices up.$n$, false, $n$2026-10-29T18:54:00+05:30$n$, 1),
($n$2026-10-30-coal-india-q2-profit$n$, '2026-10-30', $n$local$n$, $n$KOLKATA PSU$n$,
  $n$Kolkata-based Coal India's profit rises about 53% to ₹6,516 crore and it declares a ₹10.25 dividend, as coal sales outpace output$n$,
  $n$Coal India, the Kolkata-headquartered state miner, reported a profit attributable to shareholders of ₹6,516 crore for July-September, up about 53% from ₹4,259 crore a year earlier; some outlets put total profit at ₹6,547 crore, up 57%. Revenue from operations rose about 21% to ₹44,179 crore, though profit was roughly 26% lower than in the April-June quarter, and reports say the results fell short of analysts' estimates. The company produced 151.37 million tonnes of coal, up 4%, but shipped 186.34 million tonnes to customers, up 12%. The board declared a second interim dividend of ₹10.25 a share, with November 4 as the record date.$n$,
  $n$Coal India sent out about 35 million tonnes more coal than it dug up this quarter, so the difference came from stock already lying at its mines. Selling stock faster than it is replaced is exactly what the inventory turnover card measures.$n$,
  $n$Asianet Newsable; also Upstox and Indian Masterminds$n$, $n$https://newsable.asianetnews.com/business/coal-india-net-profit-jumps-57-percent-to-rs-6547-crore-in-q2-fy27-articleshow-cfr97ug$n$, $n$acct-05$n$, 'draft',
  $n$A Kolkata company shipped 186 million tonnes of coal in three months but only dug up 151 million.$n$,
  $n$Coal India's profit rose about 53% to ₹6,516 crore and it declared a ₹10.25 dividend, as customers took far more coal than it mined. The gap came out of stockpiles at its mines. The inventory turnover card explains what it means when stock moves out faster than it comes in.$n$, false, $n$2026-10-29T20:33:00+05:30$n$, 2),
($n$2026-10-30-amazon-q3-aws-capex$n$, '2026-10-30', $n$global$n$, $n$AMAZON$n$,
  $n$Amazon's cloud business grows 39%, its fastest in nearly five years, but AI spending pushes yearly free cash flow to a $42 billion outflow$n$,
  $n$Amazon's sales rose 12% to $201.9 billion in July-September and its operating profit jumped to $28.1 billion, the highest margin in its history at 13.9%. Its cloud arm AWS grew 39% to $46 billion, the fastest in nearly five years, and CEO Andy Jassy said he expects AWS to grow more than 40% in both 2027 and 2028. But earnings per share of $1.89 missed Wall Street's estimate of about $1.97, net profit slipped to $20.7 billion because last year's figure included a $9.5 billion gain on its Anthropic investment, and free cash flow over the past year turned into a $42.4 billion outflow as spending on AI data centres soared. Amazon expects about $220 billion of capital spending in 2026, and its shares fell in after-hours trading.$n$,
  $n$Amazon's data centres will earn money for many years, so their cost is recorded as capital expenditure rather than charged against this quarter's profit, which is why profit rose while cash poured out. The capital vs revenue card explains the difference.$n$,
  $n$The Motley Fool; Amazon's results release (SEC filing)$n$, $n$https://www.fool.com/coverage/stock-market-today/2026/10/29/stock-market-today-oct-29-amazon-falls-on-q3-earnings-report-and-capex-concerns/$n$, $n$acct-18$n$, 'draft',
  $n$Amazon earned a record profit margin this quarter, yet over the past year more cash left than came in.$n$,
  $n$AWS grew 39%, its fastest in nearly five years, and Amazon's operating margin hit a record 13.9%. But it plans about $220 billion of spending this year on AI, and its yearly free cash flow is now $42 billion negative. The capital vs revenue card shows how both can be true.$n$, false, $n$2026-10-30T02:26:00+05:30$n$, 3),
($n$2026-10-30-indigo-q2-loss-fuel$n$, '2026-10-30', $n$india$n$, $n$AVIATION$n$,
  $n$IndiGo's revenue rises 26% even as it flies fewer passengers, but a 67% jump in fuel costs leaves it with a ₹1,879-crore loss$n$,
  $n$InterGlobe Aviation, which runs IndiGo, reported a net loss of about ₹1,879 crore for July-September, smaller than the ₹2,582 crore loss a year earlier. Revenue from operations rose 25.9% to ₹23,364 crore even though passenger numbers fell 4.7% to 27.5 million and capacity was cut by 1%. The main problem was fuel: its fuel bill rose 67% to ₹9,967 crore, while other costs barely moved, and a weaker rupee added pressure. CEO Willie Walsh blamed 'exceptionally elevated fuel costs and geopolitical turmoil', saying cutting capacity and managing fares only partly made up for them.$n$,
  $n$IndiGo carried fewer people but earned much more, so the average fare must have gone up sharply while most travellers still flew. When buyers keep buying despite a higher price, demand is fairly inelastic, as the price elasticity card explains.$n$,
  $n$Free Press Journal; also Business Standard and PTI$n$, $n$https://www.freepressjournal.in/business/indigo-posts-1879-crore-net-loss-in-q2-fy27-amid-high-fuel-costs-revenue-up-259$n$, $n$econ-03$n$, 'draft',
  $n$IndiGo flew 4.7% fewer passengers but earned 26% more. It still lost ₹1,879 crore.$n$,
  $n$Revenue at India's biggest airline jumped 26% as fares rose, yet a 67% surge in its fuel bill kept it deep in the red. That so many flyers kept booking at higher prices tells you something about demand. The price elasticity card explains what.$n$, false, $n$2026-10-29T17:03:00+05:30$n$, 4),
($n$2026-10-30-sensex-jumps-905$n$, '2026-10-30', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex jumps 905 points to 74,151 as realty and PSU bank shares lead a broad rally$n$,
  $n$India's main share indices rose more than 1% on Thursday: the Sensex gained 905 points, or 1.24%, to close at 74,151, and the Nifty 50 rose 238 points, or 1.05%, to 22,937. Realty shares rose 2.75% and public sector bank shares 2.2%, with Adani Ports, Adani Enterprises and Kotak Mahindra Bank among the biggest gainers, while auto stocks slipped. Market reports linked the rally to the US Fed holding rates, buying by foreign investors, hopes of a cut in long-term capital gains tax, and softer crude prices on talk of renewed US-Iran diplomacy.$n$,
  $n$Share prices rise when buyers want more shares than sellers want to sell at the old price, and foreign investors' buying added to that demand on Thursday. The market equilibrium card shows how that imbalance moves the price.$n$,
  $n$Kotak Neo; also Upstox and India TV$n$, $n$https://www.kotakneo.com/news/market-news/sensex-nifty-50-close-higher-on-positive-developments/$n$, $n$econ-09$n$, 'draft',
  $n$One day, 905 points: the Sensex roared back on Thursday as foreign money returned.$n$,
  $n$The Sensex rose 1.24% to 74,151, led by property and public sector bank shares, after the US Fed held rates and foreign investors bought. Hopes of a tax cut on long-term gains helped too. The market equilibrium card shows why more eager buyers lift prices.$n$, false, $n$2026-10-29T16:31:00+05:30$n$, 5),
($n$2026-10-30-us-gdp-q3-3-4$n$, '2026-10-30', $n$global$n$, $n$US ECONOMY$n$,
  $n$US economy grows at a 3.4% annual pace in July-September, faster than the 2.2% of the previous quarter$n$,
  $n$The US economy grew at an annual rate of 3.4% in the third quarter, up from 2.2% in April-June, according to the first official estimate from the Bureau of Economic Analysis released on Thursday. Growth came from higher investment, consumer spending and government spending, partly offset by lower exports and higher imports. Price pressures within the data eased: the PCE price index rose 2.1%, down from 5.0% in the second quarter, and core PCE, which leaves out food and energy, rose 2.5%. This is an early estimate and will be revised twice.$n$,
  $n$How fast the world's biggest economy grows affects demand for Indian exports, IT services and the flow of foreign money into India. Growth figures like this are part of the economic forces in the macro environment, which the PESTLE card covers.$n$,
  $n$US Bureau of Economic Analysis$n$, $n$https://www.bea.gov/news/2026/gdp-advance-estimate-3rd-quarter-2026$n$, $n$mkt-05$n$, 'draft',
  $n$America's economy sped up to 3.4% growth this summer, while price rises in the data cooled.$n$,
  $n$US growth beat the previous quarter's 2.2%, powered by investment and consumer spending, and the PCE price measure slowed to 2.1%. When America grows, Indian IT and exporters feel it. The PESTLE card shows how such economic forces shape a company's plans.$n$, false, $n$2026-10-29T18:00:00+05:30$n$, 6),
($n$2026-10-30-trent-q2-zudio-999$n$, '2026-10-30', $n$recruiter$n$, $n$RETAIL$n$,
  $n$Tata's Trent lifts profit 25% to ₹468 crore as Zudio reaches 999 stores$n$,
  $n$Trent, the Tata group retailer behind Zudio and Westside, reported a consolidated net profit of ₹468 crore for July-September, up 25%, according to PTI, while revenue from operations rose 22% to ₹5,873 crore and EBITDA grew 37%. Zudio, its low-price fashion chain, ended September with 999 stores, including seven in the UAE, after opening 19 in the quarter; Westside had 311. Newer categories such as beauty, innerwear and footwear now make up more than 21% of standalone revenue. Standalone profit rose only 9% to ₹490 crore, because a year earlier it had ₹96 crore of one-off gains from selling assets.$n$,
  $n$Zudio wins by offering trendy clothes at prices students can afford, a clear promise of what the customer gets for the money. That promise is the value proposition the card explains.$n$,
  $n$Free Press Journal (PTI); also Business Standard$n$, $n$https://www.freepressjournal.in/business/trent-q2-results-net-profit-rises-25-per-cetn-to-468-crore-zudio-crosses-1000-store-milestone$n$, $n$mkt-02$n$, 'draft',
  $n$The budget fashion chain in your wardrobe now has 999 stores, and its owner's profit just rose 25%.$n$,
  $n$Zudio kept opening stores and Trent's quarterly profit rose 25% to ₹468 crore, with revenue up 22%. Its growth comes from selling the latest looks at prices students can pay. The value proposition card explains why that promise is so powerful.$n$, true, $n$2026-10-29T19:16:00+05:30$n$, 7),
($n$2026-10-30-asian-paints-q2$n$, '2026-10-30', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Asian Paints' revenue rises 17% but profit grows only 7.5% to ₹1,068 crore as raw material costs bite$n$,
  $n$Asian Paints' consolidated net profit rose 7.45% to ₹1,067.6 crore in July-September from ₹993.6 crore a year earlier, while revenue from operations grew about 17% to ₹9,977 crore. Its Indian decorative paints business grew 6.4% in volume and 14.5% in value, and international sales rose 29.5%. CEO Amit Syngle pointed to sharp raw material inflation and supply shortages linked to geopolitical disruptions, saying the company raised prices in stages and absorbed part of the cost to protect demand. The board declared an interim dividend of ₹5.75 a share, and the shares traded about 1.3% lower.$n$,
  $n$Revenue at the top of Asian Paints' income statement grew more than twice as fast as profit at the bottom, because costlier raw materials ate the difference. Following the numbers from top to bottom is what the financial statements card teaches.$n$,
  $n$Business Today; also Business Standard$n$, $n$https://www.businesstoday.in/markets/stocks/story/asian-paints-q2-profit-rises-7-yoy-announces-interim-dividend-check-record-date-564520-2026-10-29$n$, $n$acct-10$n$, 'draft',
  $n$Asian Paints sold 17% more by value, but only 7.5% more of that reached its profit.$n$,
  $n$India's biggest paint maker raised prices in stages and still saw raw material costs squeeze its profit growth to 7.5%. It chose to absorb part of the cost to keep customers buying. The financial statements card shows where the missing growth went.$n$, false, $n$2026-10-29T14:46:00+05:30$n$, 8),
($n$2026-10-30-kolkata-makeover-skymax$n$, '2026-10-30', $n$local$n$, $n$KOLKATA$n$,
  $n$Bengal signs agreements for a Kolkata clean-up and parking plan, with Skymax pledging ₹3,000 crore for waste-to-biogas$n$,
  $n$West Bengal's urban development department unveiled a multi-phase plan on Thursday to tackle Kolkata's traffic jams, parking shortage, tangled overhead wires and garbage, announced by minister Agnimitra Paul in Salt Lake. Memorandums of understanding were signed with central PSU NBCC for redevelopment and multi-level parking studies, starting with a survey in Burrabazar, and with private firm Skymax Infra Power for solid waste management and compressed biogas. Skymax's chairman said the first phase would need about ₹3,000 crore, could rise to ₹6,000-7,000 crore later, may create 1,500-2,000 jobs and could take 1.5-2 years. The report notes that most details, including funding and locations, are still being studied.$n$,
  $n$An MoU records what the parties intend to do, but it often leaves out the firm terms a court would enforce, which is why funding and locations are still open here. The card on agreements vs contracts explains when a promise becomes binding.$n$,
  $n$ETV Bharat$n$, $n$https://www.etvbharat.com/en/state/wb-govt-unveils-multi-phase-makeover-plan-for-kolkata-private-firm-pledges-rs-3000-crore-initial-investment-enn26102900295$n$, $n$law-01$n$, 'draft',
  $n$Kolkata's garbage could become fuel: a firm pledges ₹3,000 crore to turn city waste into biogas.$n$,
  $n$Bengal signed agreements to tidy Kolkata's streets, build parking and bury overhead wires, with Skymax promising up to 2,000 jobs. But most details are still being studied. The agreement vs contract card explains why signing an MoU is not the same as signing a deal.$n$, false, $n$2026-10-30T00:49:00+05:30$n$, 9),
($n$2026-10-30-godrej-consumer-q2$n$, '2026-10-30', $n$recruiter$n$, $n$FMCG$n$,
  $n$Godrej Consumer's revenue rises 19% to ₹4,413 crore and profit 14% to ₹523 crore, but costlier inputs shave its margin$n$,
  $n$Godrej Consumer Products, maker of Good Knight and Cinthol, reported a net profit of ₹523 crore for July-September, up about 14% from ₹459 crore, on revenue up 19% to ₹4,413 crore. Operating profit rose nearly 12% to about ₹820 crore, but its EBITDA margin fell to 18.58% from 19.77% as raw material costs rose. The company reported high-single-digit underlying volume growth, kept its full-year outlook of double-digit revenue and profit growth, and declared an interim dividend of ₹5 a share.$n$,
  $n$When the inputs that go into soaps and repellents cost more, every unit becomes costlier to make and margins shrink unless prices rise. How input costs shift what firms are willing to supply is explained in the law of supply card.$n$,
  $n$Upstox; also Zee Business$n$, $n$https://upstox.com/news/market-news/earnings/godrej-consumer-products-q2-results-profit-rises-14-to-523-crore-5-share-dividend-declared-margins-under-pressure/article-202647/$n$, $n$econ-08$n$, 'draft',
  $n$The maker of Good Knight sold 19% more, yet its profit margin got thinner. Here's why.$n$,
  $n$Godrej Consumer's revenue rose 19% and profit 14%, but its margin slipped more than a point as raw materials got costlier. It is the same squeeze Asian Paints felt. The law of supply card shows how input costs change what it pays to produce.$n$, false, $n$2026-10-29T17:45:00+05:30$n$, 10),
($n$2026-10-30-firstsource-q2-attrition$n$, '2026-10-30', $n$recruiter$n$, $n$HIRING$n$,
  $n$Firstsource adds 3,062 employees and lifts profit 30%, but nearly 3 in 10 staff leave each year$n$,
  $n$Firstsource Solutions, the business process management company that is part of Kolkata's RP-Sanjiv Goenka Group, reported a 29.7% rise in profit to about ₹232 crore for July-September, with revenue up about 22% to roughly ₹2,830 crore. It won four large deals, its seventh straight quarter of such wins, and raised the lower end of its full-year revenue growth forecast to 10.5%, for a range of 10.5% to 13%. Headcount rose by a net 3,062 to 39,937, but voluntary attrition stood at 28.4%.$n$,
  $n$With 28.4% of staff leaving voluntarily, Firstsource must keep hiring just to stand still, which raises recruitment and training costs. Measuring and managing that churn is what the labour turnover card covers.$n$,
  $n$Whalesbook; also Upstox and Investing.com$n$, $n$https://www.whalesbook.com/corporate-news/English/technology/Firstsource-Solutions-Q2-PAT-Jumps-297percent-YoY-Raises-FY27-Revenue-Guidance/6ae3266fc6c6dccbb90b363f$n$, $n$acct-07$n$, 'draft',
  $n$A Goenka-group firm hired 3,062 people in one quarter, while nearly 3 in 10 of its staff leave each year.$n$,
  $n$Firstsource's profit rose about 30% and it raised its growth forecast after four big deal wins. But voluntary attrition of 28.4% means it must keep hiring to grow. The labour turnover card explains why that churn is costly.$n$, false, $n$2026-10-29T16:27:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-10-30' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-30' order by rank;
