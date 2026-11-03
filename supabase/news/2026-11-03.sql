-- =====================================================================
-- ChaiCase news brief for 2026-11-03: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-03.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-02 7 AM and 2026-11-03 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-03' and (slug is null or slug not in ($n$2026-11-03-reliance-best-day-since-2020$n$, $n$2026-11-03-oil-biggest-drop-since-july$n$, $n$2026-11-03-itc-profit-falls-cigarette-tax$n$, $n$2026-11-03-sensex-third-day-rally$n$, $n$2026-11-03-india-manufacturing-pmi-october$n$, $n$2026-11-03-apple-september-quarter-record$n$, $n$2026-11-03-marico-profit-rises$n$, $n$2026-11-03-wall-street-tech-slips$n$, $n$2026-11-03-rupee-slips-10-paise$n$, $n$2026-11-03-china-private-pmi-price-cuts$n$, $n$2026-11-03-ipo-market-quiet-week$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-03-reliance-best-day-since-2020$n$, '2026-11-03', $n$recruiter$n$, $n$RELIANCE$n$,
  $n$Reliance shares jump about 11.6%, their best day since April 2020, after record September-quarter profit$n$,
  $n$Reliance Industries shares rose about 11.6% on Monday, the biggest gain in the Nifty 50 and the stock's best single day since April 2020. Investors were reacting to the September-quarter results released on October 30, when profit attributable to shareholders rose 40.6% to a record ₹25,548 crore. The oil-to-chemicals business drove the jump, with its EBITDA up 67.9% to ₹25,203 crore on strong fuel and chemical margins. Jio's profit rose 13.7% to ₹8,387 crore, while Reliance Retail's profit fell 24.3% to ₹2,611 crore, which management linked to spending on digital commerce.$n$,
  $n$The headline profit hides three very different stories: refining booming, telecom growing steadily and retail shrinking. Reading the segment numbers behind the total is what the reading the financial statements card teaches.$n$,
  $n$Open Magazine; also Whalesbook$n$, $n$https://openthemagazine.com/business/quick-take-seven-things-to-know-about-reliance-industries-nearly-12-share-rally$n$, $n$acct-10$n$, 'draft',
  $n$India's biggest company had its best stock-market day in six years, and a refinery did most of the work.$n$,
  $n$Reliance shares rose about 11.6% after a record ₹25,548 crore quarterly profit, powered by a 67.9% jump in oil-to-chemicals earnings while retail profit fell. One total, three different businesses. The reading the financial statements card shows how to pull them apart.$n$, false, $n$2026-11-02T16:53:00+05:30$n$, 1),
($n$2026-11-03-oil-biggest-drop-since-july$n$, '2026-11-03', $n$global$n$, $n$OIL$n$,
  $n$Brent crude falls 7.6% to $104.77 as hopes grow for US-Iran talks$n$,
  $n$Brent crude fell 7.6% on Monday to settle at $104.77 a barrel, and US crude dropped 7.3% to $96.46, the biggest one-day percentage falls since July 27. Traders reacted to an IRNA report that Iran's supreme leader had given the government authority to pursue dialogue, which was read as Tehran preferring mediated talks to escalation. US President Donald Trump told reporters that oil was down $10 that day. Even after the fall, oil prices remain about 45% higher than before the Iran war began in late February, and no deal has been announced.$n$,
  $n$Not a single extra barrel reached the market on Monday; traders simply expected more supply soon if the Gulf route reopens. Expected supply is one of the things that shifts a supply curve, as the law of supply card explains.$n$,
  $n$NBC News; also Oilprice.com$n$, $n$https://www.nbcnews.com/business/energy/oil-prices-slide-trump-hope-iran-talks-rcna607107$n$, $n$econ-08$n$, 'draft',
  $n$No new oil arrived, yet crude crashed 7.6% in one day. Hope alone did it.$n$,
  $n$Brent fell to $104.77 after signs that Iran is open to talks, its biggest drop since July. Traders priced in supply that might come back, not supply that has. The law of supply card explains why expectations move prices.$n$, false, $n$2026-11-03T03:02:00+05:30$n$, 2),
($n$2026-11-03-itc-profit-falls-cigarette-tax$n$, '2026-11-03', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata-headquartered ITC's quarterly profit falls 18.45% to ₹4,229 crore as cigarette taxes and costs bite$n$,
  $n$ITC, which is headquartered in Kolkata, reported consolidated profit of ₹4,229.33 crore for the July-September quarter, down 18.45% from ₹5,186.55 crore a year earlier. Revenue from operations rose 43.85% to ₹30,578.4 crore, but reports say much of that jump reflects a change in how excise duty is recorded rather than higher sales, and total expenses rose 69.6%. Reports link the profit fall mainly to higher taxes on cigarettes, ITC's biggest profit source. ITC said its non-cigarette FMCG business posted a fourth straight quarter of double-digit revenue growth, and pointed to costly crude-linked inputs and higher freight amid West Asia tensions.$n$,
  $n$When tax pushes up the price of a pack, ITC's profit depends on how many smokers keep buying at the higher price. How strongly buyers react to a price change is what the price elasticity of demand card measures.$n$,
  $n$ETV Bharat (PTI); also The Week, Whalesbook$n$, $n$https://www.etvbharat.com/en/business/itc-second-quarter-results-net-profit-down-and-revenue-climbs-enn26110206164$n$, $n$econ-03$n$, 'draft',
  $n$Revenue up 44%, profit down 18%: Kolkata's own ITC had a quarter that looks upside down.$n$,
  $n$ITC's profit fell to ₹4,229 crore as higher cigarette taxes hit its biggest business, even as its biscuits-to-notebooks FMCG arm kept growing. The odd revenue jump is mostly accounting. What matters is how smokers react to higher prices, which is what the price elasticity card explains.$n$, true, $n$2026-11-02T19:50:00+05:30$n$, 3),
($n$2026-11-03-sensex-third-day-rally$n$, '2026-11-03', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex jumps 1,233 points to 75,693 as the rally stretches to a third day, led by oil and metal stocks$n$,
  $n$The Sensex rose 1.66% (1,233 points) to close at 75,692.78 on Monday and the Nifty 50 gained 1.68% (388 points) to 23,440.80, the third straight day of gains. The Nifty Oil and Gas index jumped 5.95%, with Reliance Industries, Tata Steel, JSW Steel, Coal India and Shriram Finance among the top gainers. Infosys, ICICI Bank, Dr Reddy's, Kotak Mahindra Bank and Axis Bank were among the losers. Crude oil fell more than 2% in early trade as Iran and Qatar held diplomatic talks, though some profit-taking appeared late in the session.$n$,
  $n$Indian shares moved on news from talks in the Gulf, not on anything Indian companies did that day. Political and global events are part of the outside environment every business faces, which the marketing environment (PESTLE) card explains.$n$,
  $n$Kotak Neo; also HDFC Sky (PTI)$n$, $n$https://www.kotakneo.com/news/market-news/markets-extend-rally-and-end-higher/$n$, $n$mkt-05$n$, 'draft',
  $n$Diplomacy in the Gulf, gains on Dalal Street: the Sensex added 1,233 points in a single day.$n$,
  $n$The Sensex rose for a third straight day to 75,693, with oil and gas shares up almost 6% as crude cooled on Iran-Qatar talks. Indian markets reacted to events far away. The marketing environment card shows how outside forces shape business.$n$, false, $n$2026-11-02T16:34:00+05:30$n$, 4),
($n$2026-11-03-india-manufacturing-pmi-october$n$, '2026-11-03', $n$india$n$, $n$ECONOMY$n$,
  $n$India's factory PMI eases to 54.7 in October, but export orders grow at the fastest pace in six months$n$,
  $n$The HSBC India Manufacturing PMI, compiled by S&P Global, slipped to 54.7 in October from 55.1 in September, and was revised down from an early flash estimate of 54.9. Any reading above 50 means activity is growing. New export orders rose at their fastest pace in six months, which HSBC's chief India economist Pranjul Bhandari said supported a robust rise in output. Input cost inflation eased to its lowest since February and selling-price increases were the weakest in nearly four years, but hiring stayed modest and only about 18% of manufacturers expect output to rise over the next year.$n$,
  $n$The PMI is not counted from factory output; it comes from a monthly survey asking purchasing managers whether orders, output and prices went up or down. Turning survey answers like these into decisions is what the marketing research card explains.$n$,
  $n$The Tribune (ANI); also TradingView, Whalesbook$n$, $n$https://www.tribuneindia.com/news/business/indias-manufacturing-pmi-eases-to-54-7-in-october-export-orders-hit-six-month-high/amp$n$, $n$mkt-11$n$, 'draft',
  $n$Indian factories are still growing, and foreign buyers are ordering more than they have in six months.$n$,
  $n$October's manufacturing PMI dipped to 54.7, but export orders hit a six-month high while price rises slowed to a near four-year low. The number comes from asking purchasing managers simple questions. The marketing research card shows how surveys become insight.$n$, false, $n$2026-11-02T11:12:00+05:30$n$, 5),
($n$2026-11-03-apple-september-quarter-record$n$, '2026-11-03', $n$global$n$, $n$BIG TECH$n$,
  $n$Apple posts record September-quarter revenue of $114.5 billion in John Ternus's first results as CEO$n$,
  $n$Apple's revenue for the quarter ended September 26 rose 12% to $114.5 billion, and earnings per share rose 14% to $2.10, including about 5 cents from tariff refunds. iPhone revenue grew 17% to $57.6 billion and services such as the App Store and iCloud reached a record $31.6 billion, up 10%. It was the first earnings call for John Ternus, who took over from Tim Cook as CEO on September 1. Apple expects revenue to grow 7% to 10% in the December quarter, but forecast a lower gross margin of 45% to 46% because of rising memory chip costs.$n$,
  $n$Every iPhone sold keeps earning for Apple through app, storage and subscription spending for years, which is why services hit a record again. Valuing a customer over that whole relationship is what the customer lifetime value card explains.$n$,
  $n$MacRumors; also Apple Newsroom$n$, $n$https://www.macrumors.com/2026/11/02/apple-4q-2026-earnings/$n$, $n$mkt-03$n$, 'draft',
  $n$New CEO, record quarter: Apple's iPhone sales grew 17%, and the money after the sale grew too.$n$,
  $n$Apple made $114.5 billion in the quarter, with services alone at a record $31.6 billion in John Ternus's first results as CEO. A phone sale is just the start of the spending. The customer lifetime value card explains why that matters.$n$, false, $n$2026-11-03T03:08:00+05:30$n$, 6),
($n$2026-11-03-marico-profit-rises$n$, '2026-11-03', $n$recruiter$n$, $n$FMCG$n$,
  $n$Parachute maker Marico's quarterly profit rises 29% to ₹558 crore on 13% revenue growth$n$,
  $n$Marico, the consumer goods company behind Parachute and Saffola, reported consolidated net profit of ₹558 crore for the July-September quarter, up about 29% from a year earlier, according to the PTI report; some outlets put the figure at ₹550 crore. Revenue from operations rose 13% to ₹3,897 crore from ₹3,450 crore. Profit before tax rose to ₹674 crore from ₹550 crore, and earnings per share rose to ₹4.24 from ₹3.24.$n$,
  $n$Marico's numbers are judged against the same quarter a year ago, which only works because every company reports over fixed, comparable periods. That rule is the periodicity concept on the accounting concepts I card.$n$,
  $n$HDFC Sky; also Business Standard (PTI)$n$, $n$https://hdfcsky.com/news/marico-q2-results-net-profit-rises-29-percent-to-rs-558-crore-revenue-grows-13-percent$n$, $n$acct-11$n$, 'draft',
  $n$The company behind Parachute hair oil just grew its quarterly profit 29% in a year.$n$,
  $n$Marico earned ₹558 crore in the quarter as revenue rose 13% to ₹3,897 crore, so profit grew more than twice as fast as sales. Results like this only make sense quarter against quarter. The accounting concepts card explains periodicity.$n$, false, $n$2026-11-02T17:01:00+05:30$n$, 7),
($n$2026-11-03-wall-street-tech-slips$n$, '2026-11-03', $n$global$n$, $n$WALL STREET$n$,
  $n$S&P 500 and Nasdaq slip as tech stocks fall again, while the Dow gains ahead of US midterm elections$n$,
  $n$The S&P 500 fell 0.5% to 7,541.40 on Monday after being up as much as 1.1% early in the day, and the Nasdaq dropped 1.1% to 25,164.32. The Dow Jones Industrial Average rose 0.4% to 51,983.98. According to AP, technology and AI stocks stayed shaky after last week's sell-off, with Nvidia swinging from a gain to a loss, even though most stocks on Wall Street rose. US voters go to the polls in midterm elections on Tuesday.$n$,
  $n$Money that leaves tech shares does not vanish; investors move it into other stocks they now think offer more for the same risk. Choosing one use of money means giving up the next best one, which the opportunity cost card explains.$n$,
  $n$Yahoo Finance (AP); also Yahoo Finance live blog$n$, $n$https://finance.yahoo.com/markets/world-indices/articles/major-us-stock-indexes-fared-212103580.html$n$, $n$econ-06$n$, 'draft',
  $n$Most US stocks rose on Monday, yet the Nasdaq still fell 1.1%. A few tech giants made the difference.$n$,
  $n$The Dow gained while the S&P 500 and Nasdaq slipped as investors kept selling tech and AI names before Tuesday's midterm vote. Every shift of money has a cost. The opportunity cost card explains the trade-off.$n$, false, $n$2026-11-03T02:51:00+05:30$n$, 8),
($n$2026-11-03-rupee-slips-10-paise$n$, '2026-11-03', $n$india$n$, $n$RUPEE$n$,
  $n$Rupee slips 10 paise to 94.86 per dollar after Friday's sharp rally$n$,
  $n$The rupee closed 10 paise weaker at 94.86 (provisional) against the US dollar on Monday, after gaining 50 paise on Friday. It opened at 94.90 and touched a low of 95.04 during the day. Forex traders said a firm dollar overseas weighed on the rupee, while gains in Indian shares and softer crude prices limited the fall. India's foreign exchange reserves fell $1.269 billion to $719.748 billion in the week to October 30, and Lemonn's head of research Gaurav Garg expects the rupee to trade between 94.70 and 95.30 in the near term.$n$,
  $n$The rupee's rate is set where the demand for dollars meets their supply each day, and oil imports and foreign money flows push on both sides. Where those forces balance is what the market equilibrium card explains.$n$,
  $n$HDFC Sky (PTI); also Deccan Herald$n$, $n$https://hdfcsky.com/news/rupee-falls-10-paise-to-close-at-94-86-against-us-dollar$n$, $n$econ-09$n$, 'draft',
  $n$Up 50 paise on Friday, down 10 on Monday: the rupee is still searching for its footing near 95.$n$,
  $n$The rupee closed at 94.86 per dollar as a firm dollar outweighed cheaper oil and rising shares. Each day's rate is a tug of war between buyers and sellers of dollars. The market equilibrium card shows where that settles.$n$, false, $n$2026-11-02T16:21:00+05:30$n$, 9),
($n$2026-11-03-china-private-pmi-price-cuts$n$, '2026-11-03', $n$global$n$, $n$CHINA$n$,
  $n$China's private factory PMI holds at 52.0, but fierce competition pushes firms to cut prices$n$,
  $n$The RatingDog China General Manufacturing PMI, compiled by S&P Global, came in at 52.0 for October, slightly below September's 52.1 but above the 51.6 expected in a Reuters poll. It was the 11th straight month of expansion, and output grew at its fastest pace in six months. However, export order growth slowed to a three-month low, factories cut selling prices as competition intensified, and export prices fell for the first time in nearly a year. Business confidence dropped to a nine-month low, while the official government PMI released on Saturday showed factory activity shrinking, at 49.3.$n$,
  $n$Chinese factories are making more but charging less, because too many rivals are chasing the same buyers. The pressure that rivalry puts on prices and profits is one of the forces in the Porter's Five Forces card.$n$,
  $n$investingLive; also Investing.com (Reuters)$n$, $n$https://investinglive.com/news/china-private-factory-pmi-at-52-0-beats-forecasts-output-growth-fastest-since-april/$n$, $n$mkt-06$n$, 'draft',
  $n$China's factories made more in October and charged less for it. Competition is that fierce.$n$,
  $n$China's private PMI held at 52.0 as output rose at a six-month high, yet firms cut prices and confidence hit a nine-month low. Too many sellers squeeze everyone's margins. The Porter's Five Forces card explains rivalry.$n$, false, $n$2026-11-02T07:21:00+05:30$n$, 10),
($n$2026-11-03-ipo-market-quiet-week$n$, '2026-11-03', $n$india$n$, $n$IPO$n$,
  $n$IPO market slows: only one small SME issue opens this week, while four mainboard companies list$n$,
  $n$Just one new public issue opens in the week of November 2 to 6: Vedant Poly Fabs, a flexible packaging maker, is raising ₹56.68 crore on the NSE's SME platform at ₹88 to ₹94 a share, with bidding from November 2 to 4. No new mainboard IPO opens during the week. Instead, attention shifts to listings: BLS Polymers and SFC Environmental Technologies list on November 3, M K Sons Fine Jewels on November 4, and Bombay Coated & Special Steels, whose ₹183 crore IPO closed on November 2, on November 5.$n$,
  $n$The number of IPOs is the supply of new shares, and companies decide when to sell depending on market conditions and expected prices. What drives the amount sellers bring to market is what the law of supply card explains.$n$,
  $n$Kotak Neo; also Angel One$n$, $n$https://www.kotakneo.com/news/ipos/primary-market-to-slow-down-in-first-week-of-november/$n$, $n$econ-08$n$, 'draft',
  $n$Just one small IPO opens for bids this week, and it is raising under ₹57 crore.$n$,
  $n$Only Vedant Poly Fabs opens for bids this week, while four bigger companies make their stock market debut. Companies pick their moment to sell shares. The law of supply card explains what decides how much comes to market.$n$, false, $n$2026-11-02T10:49:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-11-03' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-03' order by rank;
