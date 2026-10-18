-- =====================================================================
-- PLACED news brief for 2026-10-18: 8 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-18.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- =====================================================================

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured)
values
($n$2026-10-18-oil-above-100$n$, '2026-10-18', $n$global$n$, $n$Oil$n$,
  $n$Oil crosses $100 as attacks hit ships near the Strait of Hormuz$n$,
  $n$Brent crude, the world's benchmark oil price, has been trading above $100 a barrel this month, around $108 on 16 October, up roughly $47 from a year ago. Attacks on shipping around the Strait of Hormuz, the narrow route a large share of the world's oil passes through, have raised fears of a long conflict in the Middle East. For India, which imports most of its oil, that means costlier fuel, freight and plastics.$n$,
  $n$A supply shock: when oil can't move freely, less is supplied at every price, so the supply curve shifts left and the price jumps.$n$,
  $n$Fortune$n$, $n$https://fortune.com/article/price-of-oil-10-16-2026$n$, $n$econ-08$n$, 'draft',
  $n$A narrow strip of sea, over 3,000 km away, is making India’s fuel costlier.$n$,
  $n$Attacks on ships near the Strait of Hormuz have pushed oil past $100 a barrel. India buys most of its oil from abroad, so the shock travels all the way here: into fuel, freight, even plastics. One simple economics idea explains the jump.$n$, true),
($n$2026-10-18-imf-outlook$n$, '2026-10-18', $n$global$n$, $n$IMF$n$,
  $n$IMF: the world grows 3.1% this year, and India leads the big economies$n$,
  $n$The International Monetary Fund raised its 2026 forecast for world growth to 3.1% (from 3.0% in July) and kept 2027 at 3.4%. India is again the fastest-growing major economy at about 7%. But the IMF warned that growth is uneven: high oil prices and the AI boom are helping some countries far more than others, and it expects global inflation of 4.7% this year.$n$,
  $n$Economic growth means a country's production possibility frontier moving outward: more of everything becomes possible.$n$,
  $n$CNBC$n$, $n$https://www.cnbc.com/2026/10/12/imf-world-bank-annual-meetings-october-bangkok-asia-.html$n$, $n$econ-07$n$, 'draft',
  null,
  null, false),
($n$2026-10-18-rbi-hike$n$, '2026-10-18', $n$india$n$, $n$RBI$n$,
  $n$RBI raises interest rates for the first time in about four years$n$,
  $n$On 7 October the Reserve Bank of India raised the repo rate, the rate at which it lends to banks, by 0.25 percentage points to 5.50%. It said inflation risks are building and that rate cuts are off the table for now. Loans linked to the repo rate, like many home and business loans, will get slightly costlier.$n$,
  $n$Interest is part of the cost of holding stock. When borrowing gets dearer, holding cost (H) rises and the economic order quantity falls: firms order smaller lots, more often.$n$,
  $n$CNBC$n$, $n$https://www.cnbc.com/2026/10/07/india-rbi-interest-rates-inflation.html$n$, $n$acct-02$n$, 'draft',
  null,
  null, false),
($n$2026-10-18-cpi-september$n$, '2026-10-18', $n$india$n$, $n$Inflation$n$,
  $n$Retail inflation jumps to 5.54% in September$n$,
  $n$Prices paid by Indian households rose 5.54% from a year earlier in September, up from 4.82% in August and above economists' expectations. Food prices rose even faster, by 7.74%. Higher fuel costs from the Middle East conflict are feeding into everyday prices, which is why the RBI raised rates earlier this month.$n$,
  $n$Inflation is an economic force in the macroenvironment: if pocket money stays the same while prices rise, real spending power falls, and brands feel it even though nothing changed in their shops.$n$,
  $n$CNBC$n$, $n$https://www.cnbc.com/2026/10/12/india-inflation-oil-energy-iran-war.html$n$, $n$mkt-05$n$, 'draft',
  null,
  null, false),
($n$2026-10-18-durga-puja-economy$n$, '2026-10-18', $n$local$n$, $n$Durga Puja$n$,
  $n$Durga Puja week: the festival that powers Bengal's economy$n$,
  $n$Durga Puja runs this week, and it is far more than a festival: one estimate put West Bengal's festival-linked economy at about ₹65,000 crore last year, with Kolkata accounting for roughly two-thirds of it. Idol makers, decorators, caterers, retailers, transport and advertisers all earn a large share of their year's income in these few weeks.$n$,
  $n$Festive demand shifts the whole demand curve right: people buy more clothes, sweets and gifts at the same prices. That's a change in demand, not a movement along the curve.$n$,
  $n$Open Magazine$n$, $n$https://openthemagazine.com/india/faith-festivity-65000-crore-how-durga-puja-puts-bengal-to-work$n$, $n$econ-02$n$, 'draft',
  null,
  null, false),
($n$2026-10-18-reliance-bengal$n$, '2026-10-18', $n$local$n$, $n$Investment$n$,
  $n$Reliance holds talks with Bengal's new government on investments$n$,
  $n$Top Reliance Industries executives met Chief Minister Suvendu Adhikari to discuss possible projects in West Bengal, reportedly in IT, infrastructure, energy, coal-to-gas and an undersea internet cable that could land at Digha. Reports say the state has set aside about 40 acres in New Town for a hub, but no timeline has been fixed and more meetings are expected.$n$,
  $n$Land and state support are scarce. Every acre given to one project can't host another, so each choice has an opportunity cost: the best alternative given up.$n$,
  $n$The Week$n$, $n$https://www.theweek.in/news/biz-tech/2026/10/01/reliance-industries-west-bengal-investment.html$n$, $n$econ-06$n$, 'draft',
  null,
  null, false),
($n$2026-10-18-tcs-results$n$, '2026-10-18', $n$recruiter$n$, $n$TCS$n$,
  $n$TCS profit rises about 15% in the July–September quarter$n$,
  $n$Tata Consultancy Services, India's largest IT company and a big campus recruiter, reported revenue of about ₹73,200 crore for the quarter, up around 11% from a year ago, and net profit of nearly ₹13,900 crore, up about 15%. Its operating margin was about 24%, and it declared a ₹12 per share dividend. Its shares rose about 5% after the results.$n$,
  $n$Each figure comes from the statement of profit and loss: revenue at the top, operating margin after expenses, net profit and the dividend paid out of it at the bottom.$n$,
  $n$Business Today$n$, $n$https://www.businesstoday.in/markets/stocks/story/tcs-q2-fy27-results-net-profit-rises-15-to-rs-13934-crore-declares-rs-12-dividend-560435-2026-10-08$n$, $n$acct-10$n$, 'draft',
  null,
  null, false),
($n$2026-10-18-tcs-hiring$n$, '2026-10-18', $n$recruiter$n$, $n$TCS$n$,
  $n$TCS adds 4,258 people and onboards 10,000 freshers$n$,
  $n$TCS ended September with 5,98,056 employees, 4,258 more than three months earlier, and onboarded about 10,000 freshers during the quarter. Its attrition rate (the share of people leaving over the last twelve months) eased to 13.3% from 13.6%. The company says it now hires on demand, as client projects come in.$n$,
  $n$Attrition is labour turnover. At 13.3% of about 6 lakh people, tens of thousands leave each year, and each exit brings hiring, training and lost-output costs.$n$,
  $n$Storyboard18$n$, $n$https://www.storyboard18.com/brand-makers/tcs-adds-4258-employees-in-q2-as-headcount-recovery-continues-112215.htm$n$, $n$acct-07$n$, 'draft',
  null,
  null, false)
on conflict (slug) do update set
  publish_date = excluded.publish_date, lane = excluded.lane, tag = excluded.tag,
  headline = excluded.headline, summary = excluded.summary, concept_note = excluded.concept_note,
  source_name = excluded.source_name, source_url = excluded.source_url, card_id = excluded.card_id,
  -- the pick and teaser only fill in blanks, so changes made on the approval page are kept
  teaser_title = coalesce(news_stories.teaser_title, excluded.teaser_title),
  teaser = coalesce(news_stories.teaser, excluded.teaser),
  featured = news_stories.featured or (excluded.featured and not exists (
    select 1 from news_stories f where f.publish_date = excluded.publish_date and f.featured));

-- Check: this day's stories by lane
select lane, count(*) as stories, count(*) filter (where status = 'approved') as approved,
  count(*) filter (where featured) as todays_pick
from news_stories where publish_date = '2026-10-18' group by lane order by lane;
