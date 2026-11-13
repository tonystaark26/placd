-- =====================================================================
-- ChaiCase news brief for 2026-11-13: 12 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-13.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-12 7 AM and 2026-11-13 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-13' and (slug is null or slug not in ($n$2026-11-13-cpi-inflation-6-09$n$, $n$2026-11-13-nvidia-huang-resigns$n$, $n$2026-11-13-wall-street-oil-yields$n$, $n$2026-11-13-rupee-94-12$n$, $n$2026-11-13-msci-lic-meesho-added$n$, $n$2026-11-13-reliance-coal-to-gas$n$, $n$2026-11-13-hindustan-copper-profit$n$, $n$2026-11-13-nbcc-college-street-chinatown$n$, $n$2026-11-13-india-russian-fuel-record$n$, $n$2026-11-13-page-industries-shares-fall$n$, $n$2026-11-13-acc-battery-pli-bids$n$, $n$2026-11-13-car-rental-fleet-rule$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-13-cpi-inflation-6-09$n$, '2026-11-13', $n$india$n$, $n$INFLATION$n$,
  $n$Retail inflation jumps to 6.09% in October, crossing the RBI's 6% upper limit as onion prices more than double$n$,
  $n$India's consumer price inflation rose to 6.09% in October from 5.54% in September, according to provisional government data released on Thursday, taking it above the top of the RBI's 2-6% tolerance band. Food inflation climbed to 8.94% from 7.74%. Rural inflation was 6.63% and urban inflation 5.41%. Onion prices were 116% higher than a year ago, while potato prices fell about 14%. ICRA's Aditi Nayar called a 25 basis point rate hike in December "almost certain", and Bank of Baroda's Madan Sabnavis said the RBI could raise rates by 25 or 50 basis points.$n$,
  $n$People keep buying onions even when prices soar because there is no easy substitute in Indian cooking, so demand is price-inelastic. With inelastic demand, even a modest shortfall in supply sends the price up sharply, which is how one vegetable can push up the whole inflation number.$n$,
  $n$Forbes India; also Indian Television Dot Com$n$, $n$https://www.forbesindia.com/business/economy/october-retail-inflation-climbs-to-6-09-percent-breaching-rbis-tolerance-ceiling-article/3000453$n$, $n$econ-03$n$, 'draft',
  $n$Onions cost more than double what they did a year ago, and that pushed India's inflation past the RBI's limit.$n$,
  $n$Retail inflation hit 6.09% in October, with food prices rising almost 9%. Economists now expect the RBI to raise interest rates in December. The price elasticity card explains why onion prices can jump so far when supply dips.$n$, false, $n$2026-11-12T18:50:31+05:30$n$, 1),
($n$2026-11-13-nvidia-huang-resigns$n$, '2026-11-13', $n$global$n$, $n$LEADERSHIP$n$,
  $n$Nvidia CEO Jensen Huang resigns after 33 years; finance chief Colette Kress named interim CEO$n$,
  $n$Nvidia said on Thursday that co-founder Jensen Huang has stepped down as president and CEO and left the board, with chief financial officer Colette Kress taking over as interim CEO while the board searches for a permanent replacement from inside or outside the company. Nvidia did not give a reason. His exit followed reports that he had a relationship with a woman reportedly suspected of being a Chinese government agent; Nvidia had earlier said Huang was the target of a foreign intelligence effort and launched an independent investigation, and Beijing called the allegations baseless. Nvidia shares fell about 14% at one point on Thursday before closing about 4.3% lower, according to AP.$n$,
  $n$Corporate governance is about the board holding even a founder-CEO to account. Here the board investigated, accepted the resignation and put a succession plan in place quickly to protect shareholders.$n$,
  $n$ABC News; also Al Jazeera, AP$n$, $n$https://abcnews.com/Business/nvidia-ceo-jensen-huang-resigns-amid-alleged-affair/story?id=138076256$n$, $n$ethics-12$n$, 'draft',
  $n$The founder who built the world's most famous AI chip company is out, and the CFO is now running Nvidia.$n$,
  $n$Jensen Huang resigned after reports about his personal conduct raised security worries, and Nvidia's board moved fast to name an interim chief. Its shares fell as much as 14% before recovering part of the loss. The corporate governance card explains why boards exist for moments like this.$n$, false, $n$2026-11-12T20:22:34+05:30$n$, 2),
($n$2026-11-13-wall-street-oil-yields$n$, '2026-11-13', $n$global$n$, $n$MARKETS$n$,
  $n$Brent crude jumps 3.3% to nearly $96 after Trump says the US doesn't need an Iran deal; US 10-year yield climbs to 5.12%$n$,
  $n$Brent crude rose 3.3% to $95.82 a barrel on Thursday after President Trump said he was no longer interested in a deal with Iran to end the war, AP reported. The 10-year US Treasury yield rose to 5.12% from 4.98% on Tuesday. Wall Street ended slightly lower, with the S&P 500 down about 0.4% at 7,592.40 after recovering most of an early drop of nearly 1% that came with the Nvidia news. AMD and Broadcom rose more than 5% each, while oil companies like ExxonMobil also gained. Since the war began in late February, Brent has swung between roughly $70 and nearly $120.$n$,
  $n$Oil prices react to what traders expect will happen to supply. When the chance of a peace deal falls, fears of future supply disruption shift the supply curve left, and the price rises even before any barrel is actually lost.$n$,
  $n$Southern Farm Network (AP)$n$, $n$https://www.sfntoday.com/2026/11/12/wall-street-shakes-with-swings-for-nvidia-and-oil-prices-but-recovers-most-of-its-early-losses/$n$, $n$econ-08$n$, 'draft',
  $n$One social media post sent oil up 3% in a day. India, which imports most of its crude, will feel it.$n$,
  $n$Brent crude rose to nearly $96 after Trump said the US doesn't need a deal with Iran, and US bond yields climbed above 5%. Costlier oil means a bigger import bill for India. The law of supply card explains how fears about future supply move prices today.$n$, false, $n$2026-11-13T03:19:55+05:30$n$, 3),
($n$2026-11-13-rupee-94-12$n$, '2026-11-13', $n$india$n$, $n$CURRENCY$n$,
  $n$Rupee falls 41 paise to close at 94.12 per dollar as a strong US currency and rising Fed rate-hike bets weigh$n$,
  $n$The rupee weakened 41 paise to settle at 94.12 against the US dollar on Thursday, after opening at 93.73 and moving between 93.62 and 94.12 during the day. It had closed at 93.71 on Wednesday. Forex traders linked the fall to a stronger dollar after a hawkish speech by a US Federal Reserve official and rising expectations of a US rate hike in December. Mirae Asset Sharekhan analyst Anuj Choudhary said elevated US Treasury yields could keep the rupee under pressure, though foreign inflows may offer support. On the same day the Sensex ended almost flat at 81,911.01.$n$,
  $n$An exchange rate is just the price of one currency in terms of another, set where demand meets supply. When higher US interest rates make more people want dollars, the dollar's price in rupees rises until the market finds a new equilibrium.$n$,
  $n$Millennium Post; also The Tribune (ANI)$n$, $n$https://www.millenniumpost.in/business/rupee-falls-41-paise-to-9412-against-us-dollar-683001$n$, $n$econ-09$n$, 'draft',
  $n$A dollar now costs over ₹94. That makes foreign degrees, iPhones and imported oil a little dearer.$n$,
  $n$The rupee lost 41 paise in a single day as the US dollar strengthened on talk of higher US interest rates. A weaker rupee raises the cost of everything India buys from abroad. The market equilibrium card shows how a currency's price is set.$n$, false, $n$2026-11-13T00:23:34+05:30$n$, 4),
($n$2026-11-13-msci-lic-meesho-added$n$, '2026-11-13', $n$india$n$, $n$MARKETS$n$,
  $n$LIC, Meesho, Coforge and Adani Green to join MSCI's global standard index, lifting India's weight to 13.1%$n$,
  $n$Index provider MSCI said Life Insurance Corporation of India, Coforge, Adani Green Energy and Meesho will be added to its Global Standard Index in the November 2026 review, with the changes taking effect at the close of November 30. India's weight in the index will rise to 13.1% from 12.9%. LIC is one of the three largest additions to the MSCI Emerging Markets Index by full market value, alongside China's Zhongji Innolight and Taiwan's Nan Ya Printed Circuit Board. Globally, 13 stocks will be added to and 100 removed from the MSCI All Country World Index.$n$,
  $n$Index funds that track MSCI must buy every stock that enters the index, whatever its price. That is a new source of buyers, so the whole demand curve for these shares shifts right, which is a change in demand rather than a move along the curve.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/business/lic-coforge-adani-green-meesho-enter-msci-global-standard-index-683009$n$, $n$econ-02$n$, 'draft',
  $n$Meesho, the app many students shop on, is joining one of the world's most-watched stock indices.$n$,
  $n$LIC, Meesho, Coforge and Adani Green enter MSCI's main index on November 30, which means global index funds will have to buy their shares. India's share of the index rises to 13.1%. The change-in-demand card explains why index entry can lift a stock.$n$, false, $n$2026-11-13T00:26:48+05:30$n$, 5),
($n$2026-11-13-reliance-coal-to-gas$n$, '2026-11-13', $n$recruiter$n$, $n$INVESTMENT$n$,
  $n$Reliance plans a ₹43,000 crore coal-to-gas plant in Andhra Pradesh, Reuters reports, with up to 40,000 jobs possible$n$,
  $n$Reliance Industries plans to invest about ₹430 billion (₹43,000 crore, or roughly $4.6 billion) in a plant in Andhra Pradesh that turns underground coal into gas, according to a government document seen by Reuters. A draft agreement dated November 12 with the Andhra Pradesh Economic Development Board says the two-phase project could eventually draw up to ₹2.7 trillion of investment and create about 5,000 direct and 35,000 indirect jobs. It would be one of India's largest coal gasification projects. India wants 100 million tonnes a year of coal gasification capacity by 2030 to cut imports of fuel and chemicals.$n$,
  $n$Building a plant is capital expenditure: the money creates an asset that will earn for many years, so it goes on the balance sheet and is spread over time through depreciation, unlike day-to-day running costs.$n$,
  $n$Millennium Post (Reuters)$n$, $n$https://www.millenniumpost.in/business/reliance-plans-46-billion-coal-to-gas-project-683006$n$, $n$acct-18$n$, 'draft',
  $n$Reliance wants to turn coal that never leaves the ground into gas, a ₹43,000 crore bet on cutting imports.$n$,
  $n$A draft agreement with Andhra Pradesh shows Reliance planning a giant coal gasification plant that could support 40,000 jobs. Spending on a plant like this is treated very differently from paying salaries. The capital vs revenue card explains why.$n$, false, $n$2026-11-13T00:25:56+05:30$n$, 6),
($n$2026-11-13-hindustan-copper-profit$n$, '2026-11-13', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata-based Hindustan Copper's profit nearly triples to ₹518 crore in the September quarter; shares jump up to 7%$n$,
  $n$State-run Hindustan Copper, headquartered in Kolkata, reported consolidated net profit of ₹518.13 crore for July-September, up 181.9% from ₹183.79 crore a year earlier and 47% higher than in the April-June quarter. Revenue from operations rose 63.7% year on year to ₹1,175 crore, and was up about 26% from the previous quarter. The copper miner's shares rose as much as 6.98% to ₹466.80 on the NSE on Thursday, the day after the results.$n$,
  $n$Results only make sense when compared across equal periods. The periodicity concept splits a company's life into quarters and years, so Hindustan Copper can be judged both against the same quarter last year and against the quarter just before.$n$,
  $n$Upstox$n$, $n$https://upstox.com/news/market-news/stocks/hindustan-copper-shares-soar-7-as-profit-surges-nearly-threefold-yo-y-to-518-crore-ebitda-margin-expands/article-203345/$n$, $n$acct-11$n$, 'draft',
  $n$A Kolkata company nearly tripled its quarterly profit in a year: meet Hindustan Copper.$n$,
  $n$The state-run miner's quarterly profit rose to ₹518 crore and its sales grew 64%. Investors sent the shares up as much as 7%. The accounting concepts card explains why we compare quarter with quarter and year with year.$n$, false, $n$2026-11-12T10:56:55+05:30$n$, 7),
($n$2026-11-13-nbcc-college-street-chinatown$n$, '2026-11-13', $n$local$n$, $n$KOLKATA$n$,
  $n$NBCC signs six agreements with West Bengal to redevelop Kolkata's College Street area and Tangra's Chinatown, plus Howrah and Nabadwip ghats$n$,
  $n$State-owned construction company NBCC said on Thursday it has signed six memoranda of understanding with West Bengal's urban development department and its agencies. The projects include redeveloping the College Street area and Chinatown in Tangra with the Kolkata Metropolitan Development Authority, riverfront work in Chandernagore, river ghats in Howrah and Nabadwip, public toilets, and a feasibility study for redeveloping government housing. NBCC will carry out the work on a deposit basis: it will be paid the actual project cost plus a 5% agency charge, excluding GST. Project values were not disclosed.$n$,
  $n$On deposit work, NBCC builds on the state's behalf and the state pays the cost plus a fee. That is an agency relationship: NBCC is the agent acting for the government as principal, and earns a commission for doing so.$n$,
  $n$ThePrint (PTI)$n$, $n$https://theprint.in/economy/nbcc-inks-mous-to-undertake-govt-projects-in-west-bengal/3097147$n$, $n$law-14$n$, 'draft',
  $n$College Street, Kolkata's book bazaar, and Tangra's Chinatown are getting a makeover plan.$n$,
  $n$NBCC has signed six deals with the Bengal government covering College Street, Chinatown, riverfronts and ghats, and will earn a 5% fee on the cost. It builds for the state, not for itself. The agency card explains who is principal and who is agent.$n$, true, $n$2026-11-12T17:49:03+05:30$n$, 8),
($n$2026-11-13-india-russian-fuel-record$n$, '2026-11-13', $n$india$n$, $n$ENERGY$n$,
  $n$India's imports of Russian fossil fuels hit a record €6.4 billion in October, says energy think tank CREA$n$,
  $n$India bought €6.4 billion of Russian fossil fuels in October, its highest monthly total since at least January 2022, according to the Centre for Research on Energy and Clean Air (CREA). Crude oil made up 91% of the total at €5.8 billion, with coal and oil products making up the rest. CREA said India's Russian crude imports rose 10% from September, with increases at Reliance's Jamnagar, Nayara's Vadinar and Indian Oil's Paradip refineries; Jamnagar again became the largest importer of seaborne Russian crude. India was the second-largest buyer after China.$n$,
  $n$For a refiner, Russian crude and Gulf crude are substitutes. Cross elasticity of demand measures how buying of one changes when the price or availability of the other changes, which is why India's crude mix shifts with discounts and disruptions.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/business/indias-imports-of-russian-fossil-fuels-touch-record-64-bn-in-oct-683011$n$, $n$econ-05$n$, 'draft',
  $n$India spent a record €6.4 billion on Russian fuel in one month, and Jamnagar was the biggest buyer.$n$,
  $n$Indian refiners bought more Russian crude in October than in any month on record, CREA says. Where India buys its oil shapes its import bill. The cross elasticity card explains how buyers switch between substitutes.$n$, false, $n$2026-11-13T00:27:47+05:30$n$, 9),
($n$2026-11-13-page-industries-shares-fall$n$, '2026-11-13', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Jockey maker Page Industries' shares sink 13% after profit grows just 4% and margins shrink$n$,
  $n$Shares of Page Industries, which makes and sells Jockey and Speedo innerwear, loungewear and socks in India, closed 12.91% lower at ₹31,850 on the NSE on Thursday after its September-quarter results disappointed investors. Revenue rose 11.5% to ₹1,440 crore, but net profit grew only 4% to ₹203 crore. Operating profit (EBITDA) rose 7.4% to ₹300 crore, and the EBITDA margin slipped to 20.85% from 21.65%. The board declared an interim dividend of ₹150 per share.$n$,
  $n$The income statement shows that sales grew faster than profit, which means costs rose faster than revenue and the margin shrank. Reading margins, not just headline profit, is what investors did here.$n$,
  $n$Upstox$n$, $n$https://upstox.com/news/market-news/earnings/page-industries-shares-decline-10-as-earnings-fail-to-interest-investors-check-q2-numbers/article-203366/$n$, $n$acct-10$n$, 'draft',
  $n$Profit went up, yet the Jockey maker's shares fell 13%. Investors were reading the margins.$n$,
  $n$Page Industries grew sales by 11.5% but profit by only 4%, and its operating margin shrank. The market punished the stock in a single day. The financial statements card shows how to read a profit and loss account like an analyst.$n$, false, $n$2026-11-12T14:51:19+05:30$n$, 10),
($n$2026-11-13-acc-battery-pli-bids$n$, '2026-11-13', $n$india$n$, $n$MANUFACTURING$n$,
  $n$Reliance, Kolkata's Vikram Solar and 20 others bid for 10 GWh of grid battery-cell manufacturing under the PLI scheme$n$,
  $n$The Ministry of Heavy Industries has received 22 bids for 10 GWh of advanced chemistry cell (ACC) battery manufacturing capacity meant for grid-scale energy storage under the production-linked incentive scheme. Bidders include Reliance Industries, Kolkata-based Vikram Solar, Amara Raja, Exide Energy Solutions, JSW Neo Energy and Waaree Energy Storage. The capacity is part of a 50 GWh national ACC target. Technical bids were opened on November 11, and winners will be chosen through a two-stage quality and cost-based selection process.$n$,
  $n$A government tender like this is a B2B purchase run by a buying centre that weighs both quality and cost. For a large, first-of-its-kind purchase it is a new-task buying situation, which is why the process has several stages.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/business/ril-vikram-solar-among-22-bidders-for-10-gwh-acc-mfg-capacity-under-pli-683007$n$, $n$mkt-09$n$, 'draft',
  $n$A Kolkata solar company is competing with Reliance to build India's grid batteries.$n$,
  $n$Vikram Solar is one of 22 bidders for government-backed battery-cell factories that will store power for the grid. The winners are picked on both quality and price. The B2B buying card explains how big organisations and governments buy.$n$, false, $n$2026-11-13T00:26:14+05:30$n$, 11),
($n$2026-11-13-car-rental-fleet-rule$n$, '2026-11-13', $n$india$n$, $n$POLICY$n$,
  $n$Government proposes cutting the minimum fleet for car-rental businesses from 50 vehicles to just five$n$,
  $n$The road transport ministry has proposed that a company need only five cars, instead of 50, to start a self-drive or chauffeur-driven car rental business, under a draft Rent-a-Cab Scheme 2026. Operators would need at least two cabs at each place of operation. The draft, which would replace the 1989 rules, is planned to take effect from January. Vehicles would need comprehensive insurance covering the renter, driver and passengers, and must have no pending traffic challans.$n$,
  $n$Cutting the minimum fleet from 50 to five lowers the cost of entering the market. In Porter's Five Forces, lower entry barriers raise the threat of new entrants, which usually means more competition and better prices for customers.$n$,
  $n$Millennium Post$n$, $n$https://www.millenniumpost.in/business/govt-proposes-to-cut-minimum-fleet-size-for-car-rentals-biz-to-five-683000$n$, $n$mkt-06$n$, 'draft',
  $n$Starting a car rental business could soon need five cars instead of 50. A start-up idea in the making?$n$,
  $n$A draft government scheme would slash the minimum fleet for rental companies, opening the field to small players. More entrants usually means more competition. Porter's Five Forces card explains the threat of new entrants.$n$, false, $n$2026-11-13T00:23:17+05:30$n$, 12)
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
from news_stories where publish_date = '2026-11-13' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-13' order by rank;
