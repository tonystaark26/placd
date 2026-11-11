-- =====================================================================
-- ChaiCase news brief for 2026-11-11: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-11.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-10 7 AM and 2026-11-11 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-11' and (slug is null or slug not in ($n$2026-11-11-us-inflation-fed-hike-fears$n$, $n$2026-11-11-oil-falls-trump-delays-iran-action$n$, $n$2026-11-11-india-unemployment-5-1-percent$n$, $n$2026-11-11-fpi-inflows-november$n$, $n$2026-11-11-anthropic-ipo-roadshow$n$, $n$2026-11-11-blackstone-iifl-finance-stake$n$, $n$2026-11-11-kalyan-jewellers-q2-profit$n$, $n$2026-11-11-tea-minimum-sustainable-price$n$, $n$2026-11-11-adani-120-billion-capex$n$, $n$2026-11-11-goyal-1-trillion-exports$n$, $n$2026-11-11-china-trade-surplus-1-trillion$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-11-us-inflation-fed-hike-fears$n$, '2026-11-11', $n$global$n$, $n$ECONOMY$n$,
  $n$US prices rise 0.4% in October, core inflation stays at 0.3% and Wall Street slips as a December Fed rate hike looks more likely$n$,
  $n$US consumer prices rose 0.4% in October after 0.6% in September, while core inflation, which leaves out food and energy, held at 0.3% for a third month, according to Labor Department data reported by ANI. AP said the reading was hotter than economists expected; Fed Governor Christopher Waller had said beforehand that a 0.3% core reading could call for a stronger move, even a half-point hike. The S&P 500 fell 0.4% to 7,520.93 and the Nasdaq lost 0.7%, while the 10-year Treasury yield rose to 4.99% from 4.88%. Homebuilders were hit hardest, with Lennar down 5.4%, on worries about higher mortgage rates. The official annual inflation rate was not published because October 2025 data was never collected during last year's US government shutdown.$n$,
  $n$Higher interest rates make home loans costlier, so fewer families can afford to buy at any given price, and the whole demand curve for houses shifts left. That is the difference between a change in demand and a change in quantity demanded.$n$,
  $n$BNN Bloomberg (AP); also The Tribune (ANI)$n$, $n$https://www.bnnbloomberg.ca/markets/dow-jones/2026/11/10/wall-street-mixed-in-early-trading-ahead-of-a-new-peek-at-inflation/$n$, $n$econ-02$n$, 'draft',
  $n$US inflation came in hotter than expected, and homebuilder shares fell up to 5% as rate-hike fears grew.$n$,
  $n$Core prices in the US rose 0.3% again in October, and a Fed governor has floated a half-point hike. Investors sold homebuilders because costlier loans mean fewer buyers. The change-in-demand card explains why a rate rise shifts the whole demand curve.$n$, false, $n$2026-11-10T17:02:00+05:30$n$, 1),
($n$2026-11-11-oil-falls-trump-delays-iran-action$n$, '2026-11-11', $n$global$n$, $n$OIL$n$,
  $n$Brent crude slips another 1% to about $91 after Trump puts new military action against Iran on hold$n$,
  $n$Oil extended its slide on Tuesday, with Brent futures down about 1.3% to $91.33 a barrel in the session and WTI down 1.5% to $85.54, The Tribune reported. Prices fell after US President Donald Trump said Washington would postpone new military action against Iran following requests from neighbouring countries including Qatar, though he said the US naval blockade in the Strait of Hormuz would stay for now. AP put Brent's close at $91.49, down from above $112 at the start of November. Analysts said doubts over shipping security and scepticism about a quick US-Iran deal could limit further falls.$n$,
  $n$When traders expect more oil to flow through Hormuz, supply is expected to rise, and the price where buyers and sellers balance moves down. The market equilibrium card shows how a supply shift changes the price.$n$,
  $n$The Tribune; also BNN Bloomberg (AP)$n$, $n$https://www.tribuneindia.com/news/business/crude-oil-prices-decline-further-amid-optimism-for-easing-tensions-in-middle-east/$n$, $n$econ-09$n$, 'draft',
  $n$Oil was above $112 on November 1. It is now near $91, and India's import bill is getting lighter.$n$,
  $n$Trump has paused new strikes on Iran, and oil keeps sliding, though the Hormuz blockade remains. Cheaper crude helps India, which imports most of its oil. The market equilibrium card explains why expected supply moves the price.$n$, false, $n$2026-11-10T15:55:00+05:30$n$, 2),
($n$2026-11-11-india-unemployment-5-1-percent$n$, '2026-11-11', $n$india$n$, $n$JOBS$n$,
  $n$India's unemployment rate eases to 5.1% in July-September as rural joblessness falls, but urban unemployment edges up to 6.8%$n$,
  $n$India's unemployment rate fell to 5.1% in July-September from 5.4% in April-June, according to the Periodic Labour Force Survey released by the statistics ministry on Tuesday. Rural unemployment dropped to 4.3% from 4.8%, while urban unemployment rose slightly to 6.8% from 6.7%. Labour force participation for people aged 15 and above rose to 55.5%, and women's participation climbed to 34.7% from 33.2%. The share of rural workers in agriculture rose to 56.7% from 52.9%, and the survey estimates about 57.9 crore people were employed on average during the quarter.$n$,
  $n$Unemployed people are idle resources, so an economy with joblessness produces inside its production possibility frontier. Putting more people to work moves output closer to the curve.$n$,
  $n$The Tribune (ANI); also Millennium Post$n$, $n$https://www.tribuneindia.com/news/business/indias-unemployment-rate-falls-to-5-1-in-july-september-as-rural-joblessness-declines-govt/$n$, $n$econ-07$n$, 'draft',
  $n$More Indians found work this quarter, but joblessness in cities edged up to 6.8%.$n$,
  $n$Overall unemployment fell to 5.1%, led by villages and farm work, while urban joblessness rose to 6.8%. More women joined the workforce too. The PPF card explains why idle workers mean an economy is producing below its potential.$n$, false, $n$2026-11-10T16:37:00+05:30$n$, 3),
($n$2026-11-11-fpi-inflows-november$n$, '2026-11-11', $n$india$n$, $n$MARKETS$n$,
  $n$Foreign investors pour ₹53,739 crore into Indian shares in early November as an AI sell-off elsewhere makes India look like a safe 'non-AI' bet$n$,
  $n$Foreign portfolio investors bought a net ₹53,739 crore of Indian equities between November 2 and 9, reversing outflows of about ₹35,861 crore in September and ₹34,843 crore in October, Millennium Post reported. Analysts linked the shift to a sell-off in AI-heavy markets such as the US, South Korea, Taiwan and Japan, along with strong Indian earnings and reasonable large-cap valuations. Geojit's V K Vijayakumar said India is widely seen as a 'non-AI trade'. Foreign investors mainly bought financial, IT, auto and telecom heavyweights. Even after this buying, net foreign outflows from Indian equities in 2026 stand at about ₹2.41 lakh crore.$n$,
  $n$When AI-heavy markets became riskier, global funds switched to India as an alternative, the way canteen buyers switch from coffee to tea when coffee gets costlier. Cross elasticity of demand describes this pull between substitutes.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/business/fpis-invest-rs-53739-crore-in-indian-equities-in-first-9-days-of-november-682729$n$, $n$econ-05$n$, 'draft',
  $n$When AI stocks crashed abroad, foreign money rushed into India: ₹53,739 crore in just six trading days.$n$,
  $n$After two months of selling, foreign funds turned buyers because India is seen as a market not tied to the AI boom. Banks, IT and auto stocks got most of the money. The cross elasticity card explains why investors switch between substitutes.$n$, false, $n$2026-11-10T23:01:00+05:30$n$, 4),
($n$2026-11-11-anthropic-ipo-roadshow$n$, '2026-11-11', $n$global$n$, $n$IPO$n$,
  $n$Anthropic launches its IPO roadshow, aiming to raise up to $64.35 billion on Nasdaq at $70-78 a share$n$,
  $n$AI company Anthropic began marketing its initial public offering on Tuesday, offering 825 million shares at $70 to $78 each, which could raise up to $64.35 billion, ANI reported. Most shares are new, so the company would get about $62.5 billion at the top of the range, and underwriters can buy 123.75 million more. AP said the price implies a valuation of roughly $1.3 trillion. According to the filing, revenue for the first half of 2026 was $16.29 billion against about $1.2 billion a year earlier, while the net loss was $80.75 billion, mostly from non-cash accounting charges, and the operating loss was about $693 million. The shares are due to list on Nasdaq under the ticker 'ANT' once the registration becomes effective.$n$,
  $n$A huge net loss next to a small operating loss shows why analysts read every line of the profit and loss statement, not just the bottom line. The financial statements card explains how revenue, operating profit and net profit differ.$n$,
  $n$The Tribune (ANI); also BNN Bloomberg (AP)$n$, $n$https://www.tribuneindia.com/news/business/anthropic-launches-ipo-roadshow-targets-up-to-usd-64-35-billion-through-share-sale/$n$, $n$acct-10$n$, 'draft',
  $n$Revenue up more than 13 times in a year, yet an $80 billion net loss: inside Anthropic's giant IPO.$n$,
  $n$Anthropic wants to raise up to $64 billion at a valuation AP puts at roughly $1.3 trillion. Its filing shows how far headline profit can differ from operating performance. The financial statements card shows how to read those lines.$n$, false, $n$2026-11-10T18:42:00+05:30$n$, 5),
($n$2026-11-11-blackstone-iifl-finance-stake$n$, '2026-11-11', $n$india$n$, $n$DEALS$n$,
  $n$Blackstone to invest ₹5,000 crore for nearly 16% of IIFL Finance as the lender raises ₹6,414 crore to grow gold loans$n$,
  $n$Funds managed by Blackstone will invest ₹5,000 crore in IIFL Finance for a stake of nearly 16% on a fully diluted basis, as part of a ₹6,414 crore fundraise approved by the board on Tuesday, ANI reported. Blackstone will get compulsorily convertible preference shares that turn into equity at ₹602 a share within 18 months. Promoters Nirmal Jain and R Venkataraman will put in ₹1,264 crore through warrants, and Anchorage Capital ₹150 crore. The company expects its capital adequacy ratio to rise from about 17% to 30%, and plans to use the money to expand lending, especially gold loans. Blackstone gets a board seat, but control does not change, and the deal needs regulatory and shareholder approval.$n$,
  $n$Fresh money from shareholders raises capital and cash on the balance sheet together, giving the lender a bigger base to lend from. The accounting equation card shows how both sides move by the same amount.$n$,
  $n$The Tribune (ANI); also Millennium Post$n$, $n$https://www.tribuneindia.com/news/business/blackstone-to-acquire-nearly-16-stake-in-iifl-finance-for-rs-5000-crore/$n$, $n$acct-09$n$, 'draft',
  $n$Gold loans are booming, and a global giant just bet ₹5,000 crore that IIFL Finance can lend much more.$n$,
  $n$Blackstone is buying nearly 16% of IIFL Finance, pushing its capital cushion from about 17% to 30%. More capital means room to lend more. The accounting equation card shows what new equity does to a balance sheet.$n$, false, $n$2026-11-10T17:52:00+05:30$n$, 6),
($n$2026-11-11-kalyan-jewellers-q2-profit$n$, '2026-11-11', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Kalyan Jewellers' quarterly profit jumps 64% to ₹427 crore on 31% revenue growth, helped by a one-time land sale gain$n$,
  $n$Kalyan Jewellers reported consolidated net profit of ₹427.1 crore for July-September, up 63.9% from ₹260.5 crore a year earlier, as revenue from operations rose 31.4% to ₹10,322.6 crore, according to Free Press Journal. The profit includes an exceptional gain of about ₹73.5 crore from selling part of an investment property, which the company showed separately because it will not repeat. NiftyTrader calculated that profit before exceptional items and tax grew about 39%, and noted the revenue figure includes bullion sales. The company had 546 showrooms at the end of September.$n$,
  $n$Showing the land-sale gain as a separate exceptional item lets investors see how much profit came from the jewellery business itself. That is the full disclosure and materiality conventions at work.$n$,
  $n$Free Press Journal; also NiftyTrader$n$, $n$https://www.freepressjournal.in/business/kalyan-jewellers-q2-profit-surges-64-to-427-crore-revenue-climbs-31-to-10323-crore$n$, $n$acct-13$n$, 'draft',
  $n$Kalyan Jewellers' profit is up 64%, but ₹73 crore of it came from selling land, not gold.$n$,
  $n$Revenue grew 31% to over ₹10,000 crore, and the core business still grew strongly. A one-time property sale flattered the headline number, so it is disclosed separately. The accounting conventions card explains why that matters.$n$, false, $n$2026-11-10T18:49:00+05:30$n$, 7),
($n$2026-11-11-tea-minimum-sustainable-price$n$, '2026-11-11', $n$local$n$, $n$BENGAL$n$,
  $n$Tea industry bodies in Kolkata back a proposed minimum sustainable price as costs rise far faster than tea prices$n$,
  $n$Five tea industry associations, including the Indian Tea Association and the small growers' body CISTA, welcomed a Tea Board committee's proposal for a Minimum Sustainable Price for tea at a press conference in Kolkata on Tuesday, Millennium Post reported. They say tea prices have grown only about 2-3% a year while input costs have risen an estimated 10-14%. The proposed benchmark would be linked to an index of wages and consumer prices and reviewed periodically. Wages make up about 60% of production costs and are expected to rise once floor wages under the Code on Wages are notified. The associations asked the Commerce Ministry to notify the price soon, saying it would help small growers, who produce nearly 55% of India's tea.$n$,
  $n$When wages and other inputs rise faster than selling prices, making tea becomes less profitable and growers cut back, which shifts the supply curve left. The law of supply card explains how production costs shift supply.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/bengal/tea-industry-bodies-back-proposed-minimum-sustainable-price-682773$n$, $n$econ-08$n$, 'draft',
  $n$Bengal's tea growers say their costs rise up to 14% a year while tea prices grow just 2-3%.$n$,
  $n$Bengal's tea industry wants a minimum sustainable price linked to wages and inflation, and small growers who make 55% of India's tea back it. The industry says costs have outrun prices for years. The law of supply card explains what rising costs do to supply.$n$, true, $n$2026-11-11T00:07:00+05:30$n$, 8),
($n$2026-11-11-adani-120-billion-capex$n$, '2026-11-11', $n$recruiter$n$, $n$STRATEGY$n$,
  $n$Adani Group plans to invest over $120 billion in five years, with about 70% going to energy$n$,
  $n$Adani Group plans to spend more than $120 billion on capital projects over the next five years, or over $20 billion a year, director Pranav Adani told Fortune India, according to a Reuters report carried by Millennium Post. Roughly 70% will go to energy, about 20% to transport and logistics, and about 10% to businesses such as cement, copper and aluminium. The group expects the spending to double its asset base to ₹18 trillion and to lift core earnings (EBITDA) to ₹2.6-3 trillion within five years. The group had not responded to Reuters' request for comment.$n$,
  $n$Building power plants, ports and smelters gives benefits for decades, so the spending is recorded as assets, not as yearly expenses. The capital vs revenue expenditure card explains the difference.$n$,
  $n$Millennium Post (Reuters)$n$, $n$https://www.millenniumpost.in/business/adani-group-plans-to-invest-over-120-billion-in-capex-over-5-yrs-across-core-infra-businesses-682789$n$, $n$acct-18$n$, 'draft',
  $n$Over $20 billion a year for five years: Adani plans to double its assets, mostly in energy.$n$,
  $n$The group says 70% of its $120 billion plan will go to energy and 20% to ports and logistics. Spending like this builds assets that last decades. The capital vs revenue card explains why it is not treated as a yearly cost.$n$, false, $n$2026-11-11T00:15:00+05:30$n$, 9),
($n$2026-11-11-goyal-1-trillion-exports$n$, '2026-11-11', $n$india$n$, $n$TRADE$n$,
  $n$Piyush Goyal says India is on track for $1 trillion in exports this year after about $476 billion in April-September$n$,
  $n$Commerce Minister Piyush Goyal said India is on track to meet its $1 trillion export target for 2026-27 and called the target 'sacrosanct', speaking at the curtain-raiser for the Bharat Mobility Global Expo 2027, Millennium Post reported. Commerce ministry data put combined goods and services exports for April-September at $476.20 billion, up 13.84% from a year earlier. Goyal said October's export figures, due on November 15, should surprise on the upside. He said trade deals, including the one with the European Union, would give India preferential access to markets covering almost 75% of world GDP.$n$,
  $n$Trade agreements are political and legal forces that open new markets for Indian firms without any single company controlling them. The marketing environment card explains how firms scan and respond to such macro forces.$n$,
  $n$Millennium Post; also The Tribune (ANI)$n$, $n$https://www.millenniumpost.in/business/india-on-track-to-achieve-1-trillion-export-target-for-fy27-682787$n$, $n$mkt-05$n$, 'draft',
  $n$India sold about $476 billion abroad in six months, nearly half of a $1 trillion goal.$n$,
  $n$Exports grew almost 14% in the first half of the year, and the minister expects October to beat expectations. Trade deals are opening markets worth most of world GDP. The marketing environment card shows how such forces create opportunities.$n$, false, $n$2026-11-11T00:13:00+05:30$n$, 10),
($n$2026-11-11-china-trade-surplus-1-trillion$n$, '2026-11-11', $n$global$n$, $n$TRADE$n$,
  $n$China's trade surplus tops $1 trillion for a second year as October exports jump 35%$n$,
  $n$China's trade surplus for January-October reached $1.04 trillion, crossing $1 trillion for the second year running, according to customs data released on Tuesday and reported by Millennium Post. October exports rose 35.2% from a year earlier and imports rose 41.6%, so the monthly surplus narrowed to $105.3 billion from $133.5 billion in September. Semiconductors, cars and other high-tech goods drove exports. Moody's Analytics expects exports to stay strong for the rest of the year, while Natixis economist Alicia García-Herrero blamed overcapacity, high savings and weak demand at home and called the situation unsustainable.$n$,
  $n$A flood of cheap Chinese goods is an economic force no single company controls: a threat to rival manufacturers and an opportunity for firms that buy Chinese parts. The marketing environment card explains how one change can cut both ways.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/business/chinas-trade-surplus-crosses-1-trillion-for-2nd-straight-year-682786$n$, $n$mkt-05$n$, 'draft',
  $n$China sells the world over $1 trillion more than it buys, for the second year in a row.$n$,
  $n$October exports jumped 35%, led by chips and cars, and some economists warn that China is making far more than its own people buy. That pressure lands on factories everywhere, including India. The marketing environment card explains why it is both a threat and an opportunity.$n$, false, $n$2026-11-11T00:13:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-11-11' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-11' order by rank;
