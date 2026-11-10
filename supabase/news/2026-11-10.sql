-- =====================================================================
-- ChaiCase news brief for 2026-11-10: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-10.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-09 7 AM and 2026-11-10 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-10' and (slug is null or slug not in ($n$2026-11-10-brent-falls-qatar-iran-plan$n$, $n$2026-11-10-nvidia-falls-succession-questions$n$, $n$2026-11-10-cpi-seen-near-6-percent$n$, $n$2026-11-10-hsbc-upgrades-india-overweight$n$, $n$2026-11-10-wall-street-rebound-amd$n$, $n$2026-11-10-makemytrip-india-ipo-nod$n$, $n$2026-11-10-sensex-nifty-25000$n$, $n$2026-11-10-whirlpool-profit-falls-39$n$, $n$2026-11-10-budget-100-products-imports$n$, $n$2026-11-10-bengal-digha-coastal-plan$n$, $n$2026-11-10-trai-caps-port-charges$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-10-brent-falls-qatar-iran-plan$n$, '2026-11-10', $n$global$n$, $n$OIL$n$,
  $n$Brent crude slides nearly 6% to about $92.6 as Qatar reportedly carries an Iranian plan to reopen Hormuz to the White House$n$,
  $n$Oil fell sharply on Monday, with Brent settling down about 5.8% at $92.57 a barrel, according to AP and Reuters figures, after a 16% slide the week before. Brent had been above $112 at the start of November. OilPrice.com reported that Qatar's prime minister was taking an Iranian proposal for an interim deal to Washington: Iran would reopen the Strait of Hormuz and stop attacks on Gulf tankers, while the US would lift its blockade and release $8 billion of frozen Iranian funds. Neither government has confirmed those terms, and US Secretary of State Marco Rubio called Iran's demands 'outrageous and ridiculous'. Attacks on shipping near Hormuz have continued, so supply risk has not gone away.$n$,
  $n$Traders expect more oil to reach the market if Hormuz reopens, so the price at which buyers and sellers balance moves down. The market equilibrium card explains how price settles where supply meets demand, and why it shifts when expected supply changes.$n$,
  $n$OilPrice.com; also BNN Bloomberg (AP)$n$, $n$https://oilprice.com/Latest-Energy-News/World-News/Oil-Sinks-to-94-as-Irans-8-Billion-Hormuz-Deal-Heads-to-Trump.html$n$, $n$econ-09$n$, 'draft',
  $n$From above $112 to about $92 in under two weeks: oil keeps falling on hopes that Hormuz could reopen.$n$,
  $n$A reported Iranian peace plan is on its way to Washington, though neither side has confirmed it. Cheaper crude matters for India's import bill and for petrol prices. The market equilibrium card explains why the price drops when traders expect more supply.$n$, false, $n$2026-11-09T19:00:00+05:30$n$, 1),
($n$2026-11-10-nvidia-falls-succession-questions$n$, '2026-11-10', $n$global$n$, $n$GOVERNANCE$n$,
  $n$Nvidia shares drop about 4% on a rising market as the board probe into Jensen Huang raises succession questions$n$,
  $n$Nvidia shares fell more than 4% on Monday even as the wider US market rallied, after CEO Jensen Huang admitted an affair with a woman whom, according to The New York Times, US intelligence believes was working for China; China calls the claim a smear. The board has opened an independent investigation, says it has confidence in Huang, and says he will keep running the company. CNBC reported that Huang owns just over 3% of the shares, the 11-member board has no official chair, and Nvidia's filings do not name him as a key person. Melius Research said the company has no clear successor, while Rothschild & Co Redburn said Huang would likely be forced out only if the probe finds something more serious.$n$,
  $n$Investors are asking whether the board has a plan if the founder-CEO has to step back. Overseeing the CEO and planning for succession are core jobs of a board under the corporate governance card.$n$,
  $n$CNBC; also BNN Bloomberg (AP)$n$, $n$https://www.cnbc.com/2026/11/09/jensen-huang-affair-nvidia-succession.html$n$, $n$ethics-12$n$, 'draft',
  $n$The whole market rose, but Nvidia fell: investors are asking who could ever replace Jensen Huang.$n$,
  $n$The board's probe into its CEO has turned attention to a question many founder-led companies avoid: who is next? Analysts say there is no clear successor. The corporate governance card explains why boards must plan for this.$n$, false, $n$2026-11-10T01:03:00+05:30$n$, 2),
($n$2026-11-10-cpi-seen-near-6-percent$n$, '2026-11-10', $n$india$n$, $n$ECONOMY$n$,
  $n$India's retail inflation may hit about 6% in October as onion prices nearly double, says Bank of Baroda$n$,
  $n$Bank of Baroda's economists expect consumer price inflation to rise to around 6% in October from 5.54% in September, with risks on the upside, according to a research report reported by ANI. Food inflation has been broad-based since July, led by edible oils, tomatoes and pulses, and onion prices were up 99.6% from a year earlier. The bank's essential commodities index rose 11.1% year-on-year, partly because of a low base. Core inflation, which leaves out food and fuel, is expected at 4.6-4.8%. The October figure will be a key input for the RBI's monetary policy meeting in December.$n$,
  $n$Families keep buying onions, oil and pulses even when prices jump, because they are daily essentials with few substitutes. That low sensitivity of demand to price is what the price elasticity of demand card calls inelastic demand.$n$,
  $n$The Tribune (ANI)$n$, $n$https://www.tribuneindia.com/news/business/cpi-expected-around-6-in-october-amid-food-price-pressures-bank-of-baroda/$n$, $n$econ-03$n$, 'draft',
  $n$Onions up almost 100% in a year: food is pushing India's inflation towards 6%.$n$,
  $n$Bank of Baroda expects October inflation near 6%, driven by food. The RBI will watch the number before its December meeting. The price elasticity card explains why people keep buying essentials even when prices soar.$n$, false, $n$2026-11-09T17:32:00+05:30$n$, 3),
($n$2026-11-10-hsbc-upgrades-india-overweight$n$, '2026-11-10', $n$india$n$, $n$MARKETS$n$,
  $n$HSBC upgrades Indian shares to 'overweight' and cuts China to 'neutral' as India's earnings outlook improves$n$,
  $n$HSBC raised its view on Indian equities to 'overweight' from 'neutral' in its Asia-Pacific strategy report, and lowered Chinese equities to 'neutral' from 'overweight', ANI reported. It noted that only 22% of global emerging-market funds are currently overweight on India, which suggests room for more buying. HSBC favours Indian banks, capital goods, cement, ports and electronics manufacturing, and prefers retailers and carmakers over consumer staples. It flagged high crude prices and a possible El Niño as risks for India, and pointed to weak consumer confidence and property stress in China.$n$,
  $n$A fund that puts more money in India has less left for China, so every allocation choice gives something up. Weighing what you give up for what you gain is the idea behind the opportunity cost card.$n$,
  $n$The Tribune (ANI); also Millennium Post$n$, $n$https://www.tribuneindia.com/news/business/hsbc-upgrades-india-to-overweight-downgrades-china-to-neutral-amid-improving-earnings-outlook/$n$, $n$econ-06$n$, 'draft',
  $n$A big global bank now likes India more than China, and only 22% of emerging-market funds have caught up.$n$,
  $n$HSBC moved India up to overweight and China down to neutral. It likes banks, cement, ports and electronics makers. The opportunity cost card explains the trade-off behind every such switch.$n$, false, $n$2026-11-09T14:47:00+05:30$n$, 4),
($n$2026-11-10-wall-street-rebound-amd$n$, '2026-11-10', $n$global$n$, $n$MARKETS$n$,
  $n$Wall Street rebounds as the Dow jumps 1,104 points and AMD gains 13%, a day before US inflation data$n$,
  $n$US stocks recovered on Monday after a bruising week, AP reported: the S&P 500 rose 2.3% to 7,549.94, the Dow gained 1,104 points to 52,389.75 and the Nasdaq climbed 2.7%. AMD rose 13.3% and Constellation Energy 10.5% after strong results, while falling oil prices also helped. The prior sell-off had been driven by worries that Democratic midterm wins could bring curbs on power-hungry data centres. October's US consumer price index is due on Tuesday, and economists expect it to show inflation easing from September.$n$,
  $n$An election result and voter anger over power bills moved the entire AI sector, which shows how political and social forces shape business. Scanning those outside forces is what the PESTLE part of the marketing environment card teaches.$n$,
  $n$BNN Bloomberg (AP); also CNBC$n$, $n$https://bnnbloomberg.ca/markets/dow-jones/2026/11/09/world-markets-bounce-back-after-a-recovery-for-ai-stocks-on-wall-street$n$, $n$mkt-05$n$, 'draft',
  $n$After a bruising week for AI stocks, Wall Street rose 2.3% in a single day.$n$,
  $n$Chip and AI stocks bounced back, with AMD up 13%, as oil fell. Fears that politics could slow data centre building had driven last week's slump. The marketing environment card shows how political forces move whole industries.$n$, false, $n$2026-11-09T16:52:00+05:30$n$, 5),
($n$2026-11-10-makemytrip-india-ipo-nod$n$, '2026-11-10', $n$india$n$, $n$IPO$n$,
  $n$MakeMyTrip's Indian arm gets SEBI's go-ahead for an IPO in which only the parent sells shares$n$,
  $n$MakeMyTrip (India) Ltd, the Indian subsidiary of Nasdaq-listed MakeMyTrip, has received SEBI's approval for an initial public offering, PTI reported. It filed its draft papers confidentially in July, and SEBI issued its final observations on 6 November. The IPO will be entirely an offer for sale by the parent and its subsidiary ibibo Group Holdings (Singapore), so the money raised goes to the sellers, not to the Indian company. MMT India will remain a subsidiary, with its results still consolidated into the parent's accounts. The issue size and price band have not yet been disclosed.$n$,
  $n$MMT India is a separate business entity with its own books, even though its parent will keep control and add its results to the group accounts. That separation is what the business entity concept in the accounting concepts card describes.$n$,
  $n$Millennium Post (PTI); also The Tribune$n$, $n$https://www.millenniumpost.in/business/makemytrips-india-arm-gets-sebi-nod-for-ipo-682660$n$, $n$acct-11$n$, 'draft',
  $n$The app you use to book trips home for Puja could soon be listed on Indian stock exchanges.$n$,
  $n$SEBI has approved an IPO for MakeMyTrip's India business, but the parent is selling, so no fresh money goes into the Indian company. It will remain a subsidiary. The accounting concepts card explains why a subsidiary still counts as its own entity.$n$, false, $n$2026-11-10T00:11:00+05:30$n$, 6),
($n$2026-11-10-sensex-nifty-25000$n$, '2026-11-10', $n$india$n$, $n$MARKETS$n$,
  $n$Nifty closes back above 25,000 as cheaper oil and buying in banks lift markets; Sensex gains 107 points$n$,
  $n$The Sensex rose 107.25 points to 81,106.65 and the Nifty gained 58.25 points to 25,044.65 on Monday, PTI reported, helped by lower crude prices and buying in bank stocks. SBI, Trent, Larsen & Toubro, NTPC and HDFC Bank led the gains, while HCL Tech, Tata Steel and UltraTech Cement lagged, and the Nifty PSU Bank index rose over 3%. Religare Broking's Ajit Mishra said foreign investors have put more than $4.1 billion into Indian shares so far in November. Analysts described the day as consolidation after a rally of about 10% over the previous seven sessions, with weak global tech stocks keeping them cautious.$n$,
  $n$Foreign buyers are adding money to India because conditions elsewhere have changed, not because Indian share prices fell first. A move like that, driven by outside factors, is a change in demand, a shift of the whole demand curve.$n$,
  $n$The Tribune (PTI); also The Tribune (ANI)$n$, $n$https://www.tribuneindia.com/news/business/stock-markets-end-higher-amid-easing-crude-oil-prices-buying-in-banks/$n$, $n$econ-02$n$, 'draft',
  $n$Over $4 billion of foreign money in November so far, and the Nifty is back above 25,000.$n$,
  $n$Indian shares edged higher as oil fell and public sector banks rallied. Foreign investors keep buying after selling in October. The change-in-demand card explains what it means when the whole demand curve shifts.$n$, false, $n$2026-11-09T16:39:00+05:30$n$, 7),
($n$2026-11-10-whirlpool-profit-falls-39$n$, '2026-11-10', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Whirlpool of India's profit falls 39% to ₹25 crore as rising costs squeeze margins, even as revenue grows 14%$n$,
  $n$Whirlpool of India's consolidated net profit fell 39% to ₹25 crore in the July-September quarter from ₹41 crore a year earlier, while revenue rose 14% to ₹1,873 crore, Upstox reported. EBITDA dropped 31% to ₹40 crore and the margin narrowed to about 2.1% from 3.5%. The company blamed commodity inflation, higher crude prices, a weaker rupee and the cost of new energy rules. Separately, appliance makers told PTI that the industry raised prices by up to 8% in October, and that sales grew more in value than in volume during the festive season as some entry-level buyers held back.$n$,
  $n$When appliance prices went up, some budget buyers put off their purchases, so fewer units were sold. That link between a higher price and a lower quantity bought is the law of demand.$n$,
  $n$Upstox; also Millennium Post (PTI)$n$, $n$https://upstox.com/news/market-news/earnings/q2-results-live-updates-whirlpool-of-india-olectra-greentech-rm-drip-sprinklers-systems-nicco-park-others-to-declare-earnings-on-nov-9/liveblog-203198/$n$, $n$econ-01$n$, 'draft',
  $n$Sales rose 14%, yet profit fell 39%: the hidden cost behind your new fridge.$n$,
  $n$Whirlpool sold more, but rising raw material costs and a weaker rupee ate into its profit. Price hikes of up to 8% made some buyers wait. The law of demand card explains why higher prices mean fewer units sold.$n$, false, $n$2026-11-09T18:51:00+05:30$n$, 8),
($n$2026-11-10-budget-100-products-imports$n$, '2026-11-10', $n$india$n$, $n$POLICY$n$,
  $n$Centre may offer Budget support to make 100 heavily imported products in India, from auto parts to chemicals and machinery$n$,
  $n$The government is likely to announce measures in the 2027-28 Union Budget to boost domestic manufacturing of 100 products that India depends heavily on imports for, an official told PTI. DPIIT has finished drawing up the list, which includes intermediates and capital goods in sectors such as auto components, chemicals and machinery. Possible support includes fiscal incentives, R&D help, trade and tariff measures and better testing infrastructure. In April-September, machinery imports rose 15.5% to $34.1 billion and chemical imports rose 10.5% to $16.1 billion. The Budget is likely to be presented on 1 February 2027.$n$,
  $n$Incentives and R&D support lower the cost of making these goods in India, encouraging firms to produce more at every price. A change in costs like that shifts the supply curve, as the law of supply card explains.$n$,
  $n$Millennium Post (PTI); also The Tribune$n$, $n$https://www.millenniumpost.in/business/govt-may-extend-support-to-boost-mfg-of-100-products-in-fy28-budget-682592$n$, $n$econ-08$n$, 'draft',
  $n$India imports $34 billion of machinery in six months; the next Budget may try to make more of it at home.$n$,
  $n$DPIIT has listed 100 products, from auto parts to chemicals, that India relies on imports for. Support for local makers is likely in the 2027-28 Budget. The law of supply card explains how lower costs push supply up.$n$, false, $n$2026-11-09T22:49:00+05:30$n$, 9),
($n$2026-11-10-bengal-digha-coastal-plan$n$, '2026-11-10', $n$local$n$, $n$BENGAL$n$,
  $n$Bengal clears ₹1,600 crore for the Digha-Mandarmani coast and offers ₹5 lakh to people building new homestays$n$,
  $n$Chief Minister Suvendu Adhikari on Monday announced ₹1,600 crore for coastal development and erosion control along a 27 km stretch of the East Midnapore coast from Udaypur to Talpati, covering Digha, Mandarmani, Shankarpur and Tajpur, Millennium Post reported. Individuals who build new four-room homestays in designated coastal zones will get a ₹5 lakh subsidy. The plan includes anti-erosion works at Shankarpur and Chandpur, regular helicopter services to Digha, special tourist buses, CNG and EV charging points, and mangrove and casuarina planting. The Digha Shankarpur Development Authority's area will be widened, and it has been asked to draw up a roadmap with several state departments.$n$,
  $n$Sea walls, roads and charging points will serve the coast for many years, so the ₹1,600 crore is capital spending that builds lasting assets, not a one-time running cost. The capital vs revenue card explains the difference.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/bengal/suvendu-clears-over-rs-1k-cr-coastal-revamp-rs-5l-homestay-subsidy-682663$n$, $n$acct-18$n$, 'draft',
  $n$Every Kolkata student's favourite weekend escape is getting ₹1,600 crore, plus ₹5 lakh for new homestays.$n$,
  $n$Bengal's plan for Digha, Mandarmani and Tajpur covers sea defences, helicopters, buses and EV charging. Locals who open homestays can get a subsidy too. The capital vs revenue card explains why this counts as long-term investment.$n$, true, $n$2026-11-10T00:25:00+05:30$n$, 10),
($n$2026-11-10-trai-caps-port-charges$n$, '2026-11-10', $n$india$n$, $n$TELECOM$n$,
  $n$TRAI caps the charges telecom operators can levy for connecting each other's networks, from January 2027$n$,
  $n$The telecom regulator TRAI has set ceilings on the annual charges for IP ports used to connect operators' networks: ₹5.6 lakh for a 1 Gbps port and ₹42.3 lakh for a 10 Gbps port, effective 1 January 2027, PTI reported. Operators can agree on lower charges and negotiate other capacities using the same method. The charges apply uniformly across fixed-line, mobile, long-distance and international services, and penalties for breaking the rules are capped at ₹15 lakh per service area for each violation. The old rules dated from 2001 and were last revised in 2012; TRAI said the change aims to bring transparency, non-discrimination and fair competition.$n$,
  $n$An operator that controls the connection a rival needs has strong bargaining power, and a price cap limits how far it can use that power. The Porter's Five Forces card explains how such power shapes competition in an industry.$n$,
  $n$Millennium Post (PTI)$n$, $n$https://www.millenniumpost.in/business/trai-caps-annual-ip-port-charges-at-rs-56l-for-1-gbps-rs-423l-for-10-gbps-effective-jan-2027-682591$n$, $n$mkt-06$n$, 'draft',
  $n$Your phone call travels across rival networks, and now TRAI has capped what operators can charge each other.$n$,
  $n$New ceilings on interconnection port charges start in January 2027, replacing rules last revised in 2012. TRAI says the aim is fair competition. Porter's Five Forces card explains why who controls access matters.$n$, false, $n$2026-11-09T22:49:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-11-10' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-10' order by rank;
