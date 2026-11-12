-- =====================================================================
-- ChaiCase news brief for 2026-11-12: 12 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-12.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-11 7 AM and 2026-11-12 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-12' and (slug is null or slug not in ($n$2026-11-12-sensex-nine-month-high$n$, $n$2026-11-12-wall-street-ai-rebound-coreweave$n$, $n$2026-11-12-opec-output-near-prewar$n$, $n$2026-11-12-qualcomm-india-layoffs$n$, $n$2026-11-12-amul-mother-dairy-milk-prices$n$, $n$2026-11-12-bengal-bike-taxi-yellow-plate-rule$n$, $n$2026-11-12-direct-tax-collections$n$, $n$2026-11-12-singapore-airlines-air-india$n$, $n$2026-11-12-equity-mutual-fund-inflows-october$n$, $n$2026-11-12-noel-tata-retires-tata-investment$n$, $n$2026-11-12-black-mass-export-ban$n$, $n$2026-11-12-life-insurance-premium-october$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-12-sensex-nine-month-high$n$, '2026-11-12', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex jumps 773 points to its highest close since February as foreign buying, strong Q2 results and softer oil lift Indian shares$n$,
  $n$In the first session after the Diwali holiday, the Sensex rose 772.75 points (0.95%) to 81,879.40 on Wednesday, its best close since February 26, and the Nifty gained 210.40 points (0.84%) to 25,255.05. At one point during the day the Sensex was up more than 1,400 points. Mahindra & Mahindra led the gainers with a 5.25% rise, followed by InterGlobe Aviation (IndiGo) at 4.37% and Trent at 3.02%, while IT and healthcare stocks lagged. Millennium Post linked the rally to foreign fund inflows, better-than-expected September-quarter results and lower crude prices; foreign investors bought ₹7,212 crore of shares on Monday alone. The Sensex is now up almost 10% in November so far.$n$,
  $n$Foreign money, good earnings and cheaper oil all made more investors want Indian shares at every price, so demand for shares rose and prices climbed. That is a change in demand, not just a change in quantity demanded.$n$,
  $n$Millennium Post; also The Tribune$n$, $n$https://www.millenniumpost.in/business/sensex-rallies-772-points-to-hit-near-9-month-high-nifty-closes-above-25250-682917$n$, $n$econ-02$n$, 'draft',
  $n$Markets came back from Diwali in a festive mood: the Sensex hit its highest close in nearly nine months.$n$,
  $n$The Sensex rose 773 points as foreign funds kept buying and company results beat expectations. It is up almost 10% this month. The change-in-demand card explains why new reasons to buy push the whole demand curve to the right.$n$, false, $n$2026-11-12T00:14:05+05:30$n$, 1),
($n$2026-11-12-wall-street-ai-rebound-coreweave$n$, '2026-11-12', $n$global$n$, $n$MARKETS$n$,
  $n$AI stocks bounce back on Wall Street as CoreWeave soars 25% after raising its forecast, and the S&P 500 gains 1.3%$n$,
  $n$US shares rose on Wednesday, with the S&P 500 up 1.3% to 7,619.38 and the Nasdaq up 1.6%, bringing Wall Street close to where it stood before last week's AI-led sell-off, AP reported. Cloud computing firm CoreWeave jumped 24.7% after posting a smaller loss than analysts expected and raising its 2026 revenue forecast; its CEO said it expects about $9 billion in customer prepayments and deposits over the next three months. Micron rose 11.9% and Nvidia 2.9%. Last week's slide was driven by doubts over whether heavy AI spending will pay off. Brent crude rose 1.4% to $92.76 a barrel.$n$,
  $n$Money that customers pay in advance is not yet revenue: under the revenue recognition principle, CoreWeave can count it only as it delivers the computing service. Until then it sits as a liability, income received in advance.$n$,
  $n$BNN Bloomberg (AP)$n$, $n$https://www.bnnbloomberg.ca/markets/2026/11/11/rebounding-ai-stocks-lift-wall-street/$n$, $n$acct-12$n$, 'draft',
  $n$Customers are set to hand CoreWeave about $9 billion in advance. Why can't it count that as sales yet?$n$,
  $n$AI stocks recovered on Wall Street, led by a 25% jump in CoreWeave after a better forecast. But cash paid upfront is a promise to deliver, not income earned. The accrual and revenue recognition card explains when money becomes revenue.$n$, false, $n$2026-11-12T03:02:42+05:30$n$, 2),
($n$2026-11-12-opec-output-near-prewar$n$, '2026-11-12', $n$global$n$, $n$OIL$n$,
  $n$OPEC+ oil output jumps by about 2 million barrels a day in October to 97% of pre-Iran-war levels, led by Saudi Arabia$n$,
  $n$OPEC+ countries pumped 41.23 million barrels per day in October, about 2.04 million more than in September, according to OPEC's monthly report as calculated by Reuters. That is 97% of what the group produced in February, before the US and Israeli strikes on Iran. Saudi Arabia reported output of 10.56 million barrels a day, up from 8.37 million in September, as Gulf producers reportedly find workarounds such as ship-to-ship transfers despite disruption in the Strait of Hormuz. OPEC left its demand forecasts unchanged. Indian analysts quoted by ANI said easing West Asia tensions could keep oil prices soft towards year-end, which would cut India's import bill.$n$,
  $n$When producers pump more oil at every price, the whole supply curve shifts right, which pushes prices down. The law of supply card shows how changes other than price, like reopened routes, shift supply.$n$,
  $n$BNN Bloomberg (Reuters); also The Tribune (ANI)$n$, $n$https://www.bnnbloomberg.ca/markets/oil/2026/11/11/opec-oil-output-in-october-nears-pre-iran-war-rate-led-by-saudi-arabia/$n$, $n$econ-08$n$, 'draft',
  $n$Saudi Arabia pumped 2 million more barrels a day in a month. Good news for India's oil import bill.$n$,
  $n$OPEC+ production is nearly back to where it was before the Iran war, even with Hormuz still disrupted. More barrels on the market tend to mean cheaper fuel for an importer like India. The law of supply card explains what shifts the supply curve.$n$, false, $n$2026-11-11T20:20:47+05:30$n$, 3),
($n$2026-11-12-qualcomm-india-layoffs$n$, '2026-11-12', $n$recruiter$n$, $n$JOBS$n$,
  $n$Qualcomm begins layoffs in India, with around 1,000 jobs reportedly at risk as part of a global restructuring$n$,
  $n$US chipmaker Qualcomm has started cutting jobs in India, beginning on Monday at its Bengaluru facility, The Tribune reported, citing people familiar with the matter. The sources said around 1,000 or more roles in India could be affected in phases, out of nearly 20,000 employees in the country, which is Qualcomm's biggest engineering base outside the US. The global restructuring could touch about 7% of its 52,000 staff; an October internal memo from CEO Cristiano Amon reportedly framed the cuts as performance-driven. Qualcomm's handset chip revenue fell 26% to $5.14 billion in the September quarter. The company has not confirmed the India numbers.$n$,
  $n$Layoffs are one side of labour turnover: every exit, whether planned or forced, brings costs such as severance, lost knowledge and lower morale among those who stay. The labour turnover card explains how firms measure and manage this.$n$,
  $n$The Tribune$n$, $n$https://www.tribuneindia.com/news/business/semiconductor-firm-qualcomm-begins-layoffs-in-india-around-1000-jobs-may-be-at-risk/$n$, $n$acct-07$n$, 'draft',
  $n$India is Qualcomm's biggest engineering base outside the US, and now about 1,000 jobs there may go.$n$,
  $n$The chipmaker has started performance-linked layoffs in Bengaluru, reports say, as phone-chip sales weaken. Even new recruits are reportedly affected. The labour turnover card explains the hidden costs every exit carries.$n$, false, $n$2026-11-11T21:57:23+05:30$n$, 4),
($n$2026-11-12-amul-mother-dairy-milk-prices$n$, '2026-11-12', $n$india$n$, $n$PRICES$n$,
  $n$Milk gets costlier from today: Amul raises pouch milk prices by up to 5% nationwide and Mother Dairy by ₹2-4 a litre in Delhi-NCR$n$,
  $n$Amul is raising the price of fresh pouch milk by about 4-5% across its markets from November 12, with Amul Taaza up ₹2 a litre and Amul Gold up ₹4 a litre, ANI reported. The cooperative blamed higher costs of fodder, cattle feed, packaging film and fuel, plus weak and uneven rainfall, and said it had already raised what it pays farmers by 4-5% over the past year. Mother Dairy is also raising prices in Delhi-NCR from the same day, taking full cream milk to ₹76 a litre from ₹72 and toned milk to ₹62 from ₹60. Mother Dairy said fodder prices had risen up to 20% and cattle feed about 10%.$n$,
  $n$Milk is a daily necessity with few substitutes, so demand is price inelastic: households keep buying almost the same amount even when the price rises. That is why dairies can pass higher costs on to buyers.$n$,
  $n$The Tribune (ANI)$n$, $n$https://www.tribuneindia.com/news/business/amul-to-hike-fresh-milk-pouch-prices-by-up-to-5-across-india-from-tomorrow/$n$, $n$econ-03$n$, 'draft',
  $n$Your morning chai just got costlier: Amul milk is up to ₹4 a litre dearer from today.$n$,
  $n$Amul and Mother Dairy have both raised milk prices, blaming costlier fodder, feed and fuel. Most families will still buy the same amount. The price elasticity card explains why necessities can absorb a price rise.$n$, false, $n$2026-11-11T19:22:31+05:30$n$, 5),
($n$2026-11-12-bengal-bike-taxi-yellow-plate-rule$n$, '2026-11-12', $n$local$n$, $n$KOLKATA$n$,
  $n$Bengal orders ride-hailing apps to drop privately registered vehicles, putting Kolkata's app bike taxis on notice$n$,
  $n$West Bengal's transport department has told on-demand ride aggregators not to onboard or allow non-transport (privately registered) vehicles on their platforms, Millennium Post reported. Apps must find such vehicles already on their platforms and remove them within a set deadline, and only vehicles registered in the transport category with yellow number plates may offer paid rides. The order hits app-based bike taxis in Kolkata hardest, since many run on private motorcycles. The government said a large number of private vehicles were operating through these apps, which it said lets them avoid taxes and fees and costs the state revenue.$n$,
  $n$A new government rule is a political and legal force in the marketing environment that ride-hailing firms cannot control, only respond to. The same rule that hurts private bike riders may help yellow-plate operators.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/bengal/bengal-bars-non-transport-vehicles-from-app-based-commercial-services-682897$n$, $n$mkt-05$n$, 'draft',
  $n$That cheap bike taxi to class may get harder to find: Bengal wants private bikes off ride apps.$n$,
  $n$The state has ordered ride-hailing apps to remove vehicles without yellow commercial plates, which covers many of Kolkata's bike taxis. It says untaxed private vehicles are costing it revenue. The PESTLE card explains how a government rule reshapes a whole market.$n$, true, $n$2026-11-12T00:04:03+05:30$n$, 6),
($n$2026-11-12-direct-tax-collections$n$, '2026-11-12', $n$india$n$, $n$ECONOMY$n$,
  $n$India's net direct tax collections rise 11.8% to ₹14.42 lakh crore so far this year, led by corporate tax and a 52% jump in STT$n$,
  $n$India's net direct tax collections reached ₹14.42 lakh crore between April 1 and November 10, up 11.76% from ₹12.90 lakh crore a year earlier, according to provisional government data reported by ANI. Net corporate tax rose about 17.8% to ₹6.32 lakh crore, while tax from individuals, firms and others grew a slower 5.3% to ₹7.56 lakh crore. Securities Transaction Tax, paid on share trades, jumped about 52% to ₹54,078 crore. Refunds rose nearly 26% to ₹3.08 lakh crore, and gross collections before refunds were ₹17.50 lakh crore.$n$,
  $n$Taxes are revenue receipts for the government because they come from its regular, recurring operations, unlike borrowing or selling assets, which are capital receipts. The capital vs revenue card explains the difference.$n$,
  $n$The Tribune (ANI)$n$, $n$https://www.tribuneindia.com/news/business/indias-net-direct-tax-collections-rise-11-76-to-rs-14-42-lakh-crore-corporate-tax-grows-17-84/$n$, $n$acct-18$n$, 'draft',
  $n$Companies' tax payments are rising three times as fast as individuals'. Here's what that says about India Inc.$n$,
  $n$Corporate tax is up nearly 18% this year while tax from individuals grew about 5%, and tax on share trading jumped 52%. All of it is regular income for the government. The capital vs revenue card explains why taxes count as revenue receipts.$n$, false, $n$2026-11-11T20:22:38+05:30$n$, 7),
($n$2026-11-12-singapore-airlines-air-india$n$, '2026-11-12', $n$recruiter$n$, $n$AVIATION$n$,
  $n$Singapore Airlines says Air India's turnaround is making real progress but will take time, as fuel costs halve SIA's half-year profit$n$,
  $n$Singapore Airlines Group, which owns 25.1% of Air India, said on Wednesday that Air India is making tangible progress in its multi-year transformation, while it and partner Tata Sons accept that a change of this scale will take time. Smaller losses at Air India helped SIA's numbers. Even so, SIA's net profit for April-September fell 43.9% to S$134 million despite record revenue of S$11.3 billion, because net fuel costs rose 56% as jet fuel averaged $171 a barrel during the Middle East conflict. In the July-September quarter alone, profit rose to S$210 million from S$52 million.$n$,
  $n$Record revenue and falling profit can sit side by side: the profit and loss statement shows that when expenses like fuel grow faster than sales, profit shrinks. Reading the financial statements means looking past the top line.$n$,
  $n$The Tribune (ANI)$n$, $n$https://www.tribuneindia.com/news/business/air-india-makes-tangible-progress-in-transformation-but-turnaround-will-take-time-singapore-airlines/$n$, $n$acct-10$n$, 'draft',
  $n$Singapore Airlines earned record revenue, yet its half-year profit fell 44%. Blame the fuel bill.$n$,
  $n$Jet fuel averaged $171 a barrel, eating into SIA's profits, even as its Air India partnership showed progress. Sales and profit told two very different stories. The financial statements card explains how to read both.$n$, false, $n$2026-11-11T17:32:27+05:30$n$, 8),
($n$2026-11-12-equity-mutual-fund-inflows-october$n$, '2026-11-12', $n$india$n$, $n$MUTUAL FUNDS$n$,
  $n$Equity mutual fund inflows fall 14% to about ₹33,000 crore in October, but SIPs hold above ₹32,000 crore a month$n$,
  $n$Net inflows into equity mutual funds dropped about 14% to ₹32,994 crore in October from ₹38,306 crore in September, data from the Association of Mutual Funds in India (AMFI) showed. It was still the 60th straight month of net inflows. Monthly SIP contributions slipped slightly to ₹32,160 crore from ₹32,490 crore, though AMFI's CEO said they were about 10% higher than a year earlier. Total industry assets rose to ₹83.38 lakh crore. HDFC AMC's Navneet Munot noted that monthly SIP flows were about ₹3,000 crore a decade ago, calling today's level a structural shift in how households save.$n$,
  $n$An SIP turns investing into a habit: money goes out automatically every month without a fresh decision. That is habitual buying behaviour, which keeps flowing even when markets are choppy.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/business/equity-mf-bets-drop-14to-rs-33000-crore-in-oct-682959$n$, $n$mkt-07$n$, 'draft',
  $n$Ten years ago Indians put about ₹3,000 crore a month into SIPs. Now it's over ₹32,000 crore.$n$,
  $n$Equity fund inflows dipped in October, but monthly SIPs barely moved, marking five straight years of inflows. Automatic monthly investing has become a habit. The buying behaviour card explains why habits are so sticky.$n$, false, $n$2026-11-12T01:43:05+05:30$n$, 9),
($n$2026-11-12-noel-tata-retires-tata-investment$n$, '2026-11-12', $n$recruiter$n$, $n$LEADERSHIP$n$,
  $n$Noel Tata retires as Tata Investment Corporation chairman after 16 years under group governance rules; Bahram Vakil takes over$n$,
  $n$Noel Tata retired as chairman and director of Tata Investment Corporation at the close of business on November 11, and Bahram Vakil becomes chairman from November 12, the company said after a board meeting. The company said the retirement follows the Tata Group Governance Guidelines, which set rules on board make-up, committees and director retirement. Noel Tata joined the board in 2004 and had been chairman since June 2010; the board named him Chairman Emeritus. It also appointed Abizer Diwanji, a former head of financial services practices at KPMG and EY, as an independent director for five years, subject to shareholder approval.$n$,
  $n$Written retirement rules and independent directors are corporate governance tools: they make board changes predictable and keep leaders accountable, whoever they are.$n$,
  $n$The Tribune$n$, $n$https://www.tribuneindia.com/news/business/noel-tata-retires-as-tata-investment-chairman-after-16-years-bahram-vakil-to-succeed-him/$n$, $n$ethics-12$n$, 'draft',
  $n$Even a Tata follows the rulebook: Noel Tata retires as Tata Investment chairman under group rules.$n$,
  $n$After 16 years as chairman, Noel Tata has retired in line with the Tata Group's governance guidelines, and an independent director joins the board. Clear rules apply even at the top. The corporate governance card explains why that matters.$n$, false, $n$2026-11-11T21:02:33+05:30$n$, 10),
($n$2026-11-12-black-mass-export-ban$n$, '2026-11-12', $n$india$n$, $n$TRADE$n$,
  $n$India bans exports of lithium-ion battery 'black mass' to keep critical minerals at home for recycling$n$,
  $n$India has prohibited exports of lithium-ion battery black mass, the Commerce Ministry said on Wednesday, after the Directorate General of Foreign Trade issued a notification. Black mass is the powder left after shredding used batteries and battery factory waste, and it contains lithium, cobalt, nickel and manganese that can be recovered. The ministry said India depends heavily on imports for several critical minerals needed for electric vehicles, energy storage and electronics. It added that domestic recycling plants are underused because they cannot get enough of this feedstock.$n$,
  $n$Critical minerals are scarce, so India has chosen to keep black mass for its own recyclers. The opportunity cost of that choice is the export income that sellers of black mass now give up.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/business/india-prohibits-lithium-ionbattery-black-mass-exports-682915$n$, $n$econ-06$n$, 'draft',
  $n$The dust from your old phone battery is now too valuable to export, says India.$n$,
  $n$India has banned exports of black mass, the mineral-rich powder from shredded batteries, so its recyclers get enough material. It is a bet on scarce lithium and cobalt. The scarcity and opportunity cost card explains the trade-off.$n$, false, $n$2026-11-12T00:13:24+05:30$n$, 11),
($n$2026-11-12-life-insurance-premium-october$n$, '2026-11-12', $n$india$n$, $n$INSURANCE$n$,
  $n$Life insurers' new-business premium rises 26% to ₹42,914 crore in October as group policies surge, even as policy numbers fall$n$,
  $n$New-business premium for life insurers rose 26.2% to ₹42,914 crore in October from a year earlier, according to provisional Life Insurance Council data reported by ANI, while the number of policies issued fell 3.7% to 18.82 lakh. Group business, policies bought by employers and other organisations for their members, drove the growth, rising 37.3% to ₹29,068 crore, about 68% of the total. Individual premiums grew a slower 7.9%. LIC's premium rose 31.3% to ₹25,316 crore, while private insurers together grew 19.5%.$n$,
  $n$Group insurance is a business-to-business sale: a company's HR, finance and leadership decide together which insurer covers all employees. The B2B buying card explains how such buying centres work.$n$,
  $n$The Tribune (ANI)$n$, $n$https://www.tribuneindia.com/news/business/life-insurers-new-business-premium-surges-26-2-to-rs-42914-crore-in-october-policy-issuances-decline/$n$, $n$mkt-09$n$, 'draft',
  $n$Insurers sold fewer policies in October but collected 26% more money. Companies are the reason.$n$,
  $n$Group policies bought by employers grew 37% and now make up about two-thirds of new life insurance premium. One corporate deal can cover thousands of people. The B2B buying card explains how organisations make such purchases.$n$, false, $n$2026-11-11T18:42:36+05:30$n$, 12)
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
from news_stories where publish_date = '2026-11-12' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-12' order by rank;
