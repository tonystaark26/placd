-- =====================================================================
-- ChaiCase news brief for 2026-11-02: 12 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-02.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-01 7 AM and 2026-11-02 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-02' and (slug is null or slug not in ($n$2026-11-02-gst-october-collections$n$, $n$2026-11-02-iran-hormuz-two-day-plan$n$, $n$2026-11-02-affle-perion-acquisition$n$, $n$2026-11-02-car-sales-festive-record$n$, $n$2026-11-02-fpi-october-outflow$n$, $n$2026-11-02-opec-december-targets$n$, $n$2026-11-02-upi-october-record$n$, $n$2026-11-02-coal-india-october-output$n$, $n$2026-11-02-electric-two-wheeler-record$n$, $n$2026-11-02-commercial-lpg-atf-hike$n$, $n$2026-11-02-hero-motocorp-scooters$n$, $n$2026-11-02-royal-enfield-best-month$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-02-gst-october-collections$n$, '2026-11-02', $n$india$n$, $n$GST$n$,
  $n$October GST collections jump 22.9% to ₹2.31 lakh crore, with tax on imports up 42%$n$,
  $n$India collected ₹2,31,290 crore in gross GST in October, up 22.9% from ₹1,88,125 crore a year earlier, according to provisional government data released on Sunday. GST collected from domestic transactions grew 15.8% to ₹1,59,044 crore, while GST on imports rose 42.2% to ₹72,246 crore. After refunds of ₹27,934 crore, net collections were ₹2,03,356 crore, up 25.6%. For April to October, gross collections are up 13.2% at about ₹14.78 lakh crore.$n$,
  $n$The gap between gross and net GST is mostly refunds: tax returned to businesses such as exporters, who often pay or claim more GST credit than they finally owe. How that tax credit works is what the accounting for GST card explains.$n$,
  $n$Business Today; also The Tribune$n$, $n$https://www.businesstoday.in/india/story/gross-gst-collections-hit-rs2-31-lakh-crore-in-october-marks-22-9-yoy-rise-on-robust-domestic-growth-564976-2026-11-01$n$, $n$acct-17$n$, 'draft',
  $n$₹2.31 lakh crore in one month: India's GST haul grew almost 23%, and imports grew even faster.$n$,
  $n$October's gross GST rose 22.9%, with tax on imports up 42%, and net collections rose 25.6% after ₹27,934 crore of refunds. Gross and net differ because some tax goes back to businesses. The accounting for GST card shows how input tax credit works.$n$, false, $n$2026-11-01T12:40:00+05:30$n$, 1),
($n$2026-11-02-iran-hormuz-two-day-plan$n$, '2026-11-02', $n$global$n$, $n$OIL ROUTE$n$,
  $n$Iran says it is discussing a Qatar-brokered two-day plan to reopen the Strait of Hormuz, if the US moves first on its conditions$n$,
  $n$Iran's foreign minister Abbas Araghchi told Al Jazeera that Tehran and Qatari mediators are discussing a plan to reopen the Strait of Hormuz within two days, cut down from an earlier seven-day proposal. Under the plan as described, the US would act on the first day and shipping would resume on the second. Iran's reported conditions include lifting some sanctions, reducing US forces in the region, restoring oil waivers, releasing frozen Iranian funds and recognising shipping routes agreed with Oman. US Secretary of State Marco Rubio said President Trump has not yet decided on new strikes and that the administration prefers diplomacy, and no deal has been announced.$n$,
  $n$Whether the world's busiest oil route reopens now depends on sanctions, troops and diplomacy, not on companies. Politics is part of every firm's outside environment, which the marketing environment (PESTLE) card explains.$n$,
  $n$National Herald; also Investing.com$n$, $n$https://www.nationalheraldindia.com/international/iran-says-talks-underway-on-two-day-plan-to-reopen-strait-of-hormuz$n$, $n$mkt-05$n$, 'draft',
  $n$Day one: the US acts. Day two: the ships move. Iran's plan to reopen the oil route is down to 48 hours.$n$,
  $n$Iran says Qatari mediators helped shrink its Hormuz reopening plan from seven days to two, but only if Washington meets its conditions first. Nothing is agreed yet. The marketing environment card explains how politics shapes business.$n$, false, $n$2026-11-01T08:55:00+05:30$n$, 2),
($n$2026-11-02-affle-perion-acquisition$n$, '2026-11-02', $n$recruiter$n$, $n$M&A$n$,
  $n$Indian adtech firm Affle agrees to buy Nasdaq-listed Perion for about $420 million in cash$n$,
  $n$Affle 3i, a listed Indian technology company that runs a mobile advertising platform, said its Israel-based subsidiary has signed an agreement to buy all shares of Perion Network at $11.70 each in cash, valuing Perion at about $420 million. Perion is based in Tel Aviv, is listed on Nasdaq and the Tel Aviv Stock Exchange, and sells advertising technology for retail media, connected TV and digital billboards, mainly in North America. According to reports on the deal, the price is a 34.5% premium to Perion's last closing price, Citibank is providing debt financing, and the deal is expected to close in early 2027 after regulatory and shareholder approvals. Affle says the purchase will greatly widen the market it can serve in developed countries.$n$,
  $n$Affle justifies the deal by saying it 'materially expands' its total addressable market, the pool of demand it can realistically go after. Sizing a market like that is what the market measurement and demand estimation card explains.$n$,
  $n$PR Newswire (Affle release); also PPC Land, Equity Bulls$n$, $n$https://www.prnewswire.com/news-releases/affle-to-acquire-perion-to-scale-its-cpcu-business-across-developed-markets-302925764.html$n$, $n$mkt-10$n$, 'draft',
  $n$An Indian adtech company is buying a Nasdaq-listed rival for $420 million, paying 34.5% above its share price.$n$,
  $n$Affle will pay $11.70 a share in cash for Perion to get into retail media and connected TV in North America. Its case rests on a much bigger market to sell into. The market measurement card shows how companies size that opportunity.$n$, false, $n$2026-11-01T22:17:00+05:30$n$, 3),
($n$2026-11-02-car-sales-festive-record$n$, '2026-11-02', $n$recruiter$n$, $n$AUTO$n$,
  $n$Maruti, Mahindra, Hyundai and Kia post their best-ever month at home as festive buying lifts October car sales$n$,
  $n$Maruti Suzuki sold 2,16,789 passenger vehicles in India in October, up 20% from a year earlier and its highest monthly domestic figure, with utility vehicles up 26%. Mahindra sold a record 73,338 SUVs at home (up 2%), and Hyundai Motor India posted record domestic sales of 62,799 units (up 16.7%). Tata Motors' passenger-vehicle sales in India rose 21% to 73,894, and its electric vehicle sales jumped 75% to 16,244. Kia India's wholesales rose about 13% to a record 33,462, and Mahindra and Hyundai credited strong festive-season demand.$n$,
  $n$Car prices did not fall in October; buyers simply wanted more cars at the same prices during the festive season. A move like that, where the whole demand curve shifts, is what the change in demand versus change in quantity demanded card explains.$n$,
  $n$Business Today; also Forbes India, Autocar India$n$, $n$https://www.businesstoday.in/auto/story/festive-boom-maruti-mahindra-tata-motors-hyundai-post-record-domestic-sales-in-october-565002-2026-11-01$n$, $n$econ-02$n$, 'draft',
  $n$Four carmakers had their best month ever at home in October, and Maruti alone sold 2.17 lakh cars.$n$,
  $n$Festive buying pushed Maruti up 20%, Hyundai up 16.7% and Tata up 21%, with Mahindra and Kia also setting records. Buyers wanted more cars without a price cut. The change in demand card explains what really moved.$n$, false, $n$2026-11-01T20:43:00+05:30$n$, 4),
($n$2026-11-02-fpi-october-outflow$n$, '2026-11-02', $n$india$n$, $n$MARKETS$n$,
  $n$Foreign investors pull ₹34,843 crore out of Indian shares in October, but turn buyers in the last week of the month$n$,
  $n$Foreign portfolio investors (FPIs) sold a net ₹34,843 crore of Indian equities in October, the second straight month of heavy selling after ₹35,861 crore in September, according to depository (CDSL) data. Their total withdrawals from Indian shares in 2026 have now reached about ₹2.95 lakh crore. In the last week of October, however, they bought a net of about ₹6,300 crore. Market experts quoted in the report linked the selling to high crude oil prices, global interest rates and attractive US yields, and cautioned that one week of buying may not mean a lasting turn.$n$,
  $n$When US bonds pay a high, safe return, keeping money in Indian shares means giving that return up. Comparing the value of the best alternative you give up is what the scarcity and opportunity cost card explains.$n$,
  $n$Business Standard; also NewsBytes$n$, $n$https://www.business-standard.com/finance/news/fpis-pull-out-34-843-cr-from-equities-in-oct-turn-net-buyers-last-week-126110100182_1.html$n$, $n$econ-06$n$, 'draft',
  $n$Foreign investors pulled ₹34,843 crore out of Indian shares in October, then came back in the final week.$n$,
  $n$FPIs have now pulled about ₹2.95 lakh crore out of Indian equities in 2026, partly because US yields look attractive. Late October brought about ₹6,300 crore of buying. The opportunity cost card explains why money moves to the best alternative.$n$, false, $n$2026-11-01T11:34:00+05:30$n$, 5),
($n$2026-11-02-opec-december-targets$n$, '2026-11-02', $n$global$n$, $n$OIL$n$,
  $n$OPEC+ keeps December oil output targets unchanged as the Iran war keeps Gulf exports below quota$n$,
  $n$Seven core OPEC+ members, including Saudi Arabia, Russia and Iraq, agreed at an online meeting on Sunday to keep December production targets at September's levels, about 31 million barrels a day in total. Most of them are already producing below target because the Strait of Hormuz, which normally carries about a fifth of the world's crude and LNG, has been largely shut since fighting between the US and Iran began on 28 February. Brent crude ended Friday up 2.4% at $117.64 a barrel for the expiring December contract. All 21 OPEC+ members meet on 29 November, when analysts expect them to set quotas for 2027.$n$,
  $n$A production target means little when oil cannot physically reach buyers, and blocked supply is why prices stay above $100. How a shortage pushes up the price is what the market equilibrium, shortage and surplus card explains.$n$,
  $n$The National; also CNBC$n$, $n$https://www.thenationalnews.com/business/energy/2026/11/01/opec-holds-december-oil-output-targets-steady-as-iran-war-disrupts-supply/$n$, $n$econ-09$n$, 'draft',
  $n$OPEC+ kept its oil targets unchanged, but most members can't even reach them.$n$,
  $n$The oil group held December output steady at about 31 million barrels a day, while the Hormuz blockage keeps Gulf exports below quota and Brent above $110. The market equilibrium card explains how a shortage sets the price.$n$, false, $n$2026-11-01T18:12:00+05:30$n$, 6),
($n$2026-11-02-upi-october-record$n$, '2026-11-02', $n$india$n$, $n$PAYMENTS$n$,
  $n$UPI processes a record 25.47 billion payments worth ₹31.53 lakh crore in October, averaging over ₹1 lakh crore a day$n$,
  $n$India's UPI payment network handled a record 25.47 billion transactions in October, worth ₹31.53 lakh crore, according to NPCI data. Volume rose 5.8% from September and 23% from a year earlier, while value grew 7.4% month on month and 16% year on year. On average, UPI handled 822 million payments a day worth about ₹1,01,707 crore. Because the number of payments grew faster than their total value, the average payment was smaller than a year ago, by roughly 6% on these figures.$n$,
  $n$The headline is a record, but comparing volume growth (23%) with value growth (16%) reveals something extra: people are using UPI for smaller everyday payments. Turning raw data into an insight like this is what the marketing research card explains.$n$,
  $n$Entrackr; also NewsBytes$n$, $n$https://entrackr.com/news/upi-hits-record-2547-bn-transactions-in-october-daily-value-crosses-rs-1-lakh-crore-12772871$n$, $n$mkt-11$n$, 'draft',
  $n$Every phuchka and auto ride adds up: UPI crossed ₹1 lakh crore a day in October.$n$,
  $n$UPI set a record of 25.47 billion payments in October, but the count grew faster than the money, so the typical payment got smaller. Two numbers together tell a story one number can't. The marketing research card shows how data becomes insight.$n$, true, $n$2026-11-01T11:36:00+05:30$n$, 7),
($n$2026-11-02-coal-india-october-output$n$, '2026-11-02', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata-headquartered Coal India raises October output 19% to 67.2 million tonnes, and ships out even more than it mines$n$,
  $n$State-run Coal India, which is headquartered in Kolkata, produced 67.2 million tonnes of coal in October, up 19.3% from 56.4 million tonnes a year earlier, according to its provisional monthly data. Its offtake, the coal dispatched to customers such as power plants, rose 18.7% to 70.3 million tonnes, more than it produced in the month. For April to October, production is up only 0.7% at 388.2 million tonnes, while offtake is up 9.2% at 454.6 million tonnes.$n$,
  $n$When a company dispatches more coal than it mines, the difference comes out of its stockpiles. Keeping stocks between safe minimum and maximum levels is what the stock levels card explains.$n$,
  $n$Whalesbook; also Indian PSU$n$, $n$https://www.whalesbook.com/corporate-news/English/energy/Coal-India-Production-Up-19percent-in-October-Offtake-Rises-187percent/6ae6d98fc6c6dccbb90e1e3d$n$, $n$acct-01$n$, 'draft',
  $n$Kolkata's Coal India shipped out 70.3 million tonnes in October, 3 million more than it dug up.$n$,
  $n$Coal India's output rose 19% to 67.2 million tonnes, but dispatches rose even higher, so stockpiles had to fill the gap. Year-to-date output is almost flat. The stock levels card explains how much inventory a business should keep.$n$, false, $n$2026-11-01T11:48:00+05:30$n$, 8),
($n$2026-11-02-electric-two-wheeler-record$n$, '2026-11-02', $n$india$n$, $n$EV$n$,
  $n$Electric two-wheeler sales hit a record 2.23 lakh in October, up 48%, as TVS leads and Ola Electric slips$n$,
  $n$Indians registered a record of about 2.23 lakh electric two-wheelers in October, up 48% from a year earlier and about 7% from September, according to Vahan registration data. TVS Motor led with 60,429 units, nearly double last year, followed by Bajaj Auto (49,067), Ather Energy (31,796) and Hero's Vida (29,901, up 81%). Ola Electric, once the market leader, sold 12,096 units, down 26%, and was the only top-10 maker to decline. From January to October, about 17.9 lakh electric two-wheelers have been sold.$n$,
  $n$Established bike makers like TVS, Bajaj and Hero used their brands, dealer networks and scale to overtake the start-up that once led the market. How rivalry and those strengths decide who wins is what the Porter's five forces and competitive advantage card explains.$n$,
  $n$Auto India Daily; also Autocar India$n$, $n$https://autoindiadaily.in/auto-news/october-2026-electric-two-wheeler-sales/$n$, $n$mkt-06$n$, 'draft',
  $n$India's e-scooter market grew 48% in a year, but the start-up that once led it went backwards.$n$,
  $n$A record 2.23 lakh electric two-wheelers were sold in October, with TVS, Bajaj and Hero surging while Ola Electric fell 26%. A growing market doesn't lift everyone. The Porter's five forces card explains where competitive advantage comes from.$n$, false, $n$2026-11-01T22:48:00+05:30$n$, 9),
($n$2026-11-02-commercial-lpg-atf-hike$n$, '2026-11-02', $n$india$n$, $n$FUEL PRICES$n$,
  $n$Commercial LPG goes up ₹10 to ₹2,820 a cylinder and jet fuel rises for a fourth straight month$n$,
  $n$State oil companies raised the price of a 19-kg commercial LPG cylinder by ₹10 to ₹2,820 in Delhi from 1 November, and lifted the price of aviation turbine fuel (ATF) by ₹1.37 to ₹138.50 a litre. The household 14.2-kg cylinder was left unchanged at ₹942 in Delhi. These prices are revised every month based on international benchmark prices and the rupee-dollar exchange rate, and ATF had already risen by ₹16 a litre on 1 October. Jet fuel can make up as much as 40% of an airline's operating costs.$n$,
  $n$Costlier cooking gas and jet fuel raise the cost for restaurants and airlines of serving each customer, which pushes them to supply less at the same price. Input costs are a key force that shifts supply, which the law of supply card explains.$n$,
  $n$IBTimes India; also BW Businessworld, The Statesman$n$, $n$https://www.ibtimes.co.in/commercial-lpg-cylinder-price-hiked-by-rs-10-rs-2820-atf-rates-by-rs-1-37-per-litre-november-1-908008$n$, $n$econ-08$n$, 'draft',
  $n$Restaurants pay ₹10 more for a gas cylinder, and airlines pay more for jet fuel for a fourth month running.$n$,
  $n$Commercial LPG rose ₹10 and jet fuel rose for a fourth month in a row, while home cylinders stayed unchanged. When inputs cost more, sellers' costs rise. The law of supply card explains how input costs shift supply.$n$, false, $n$2026-11-01T12:35:00+05:30$n$, 10),
($n$2026-11-02-hero-motocorp-scooters$n$, '2026-11-02', $n$recruiter$n$, $n$TWO-WHEELERS$n$,
  $n$Hero MotoCorp's October dispatches rise 15.5% to 7.34 lakh as scooter shipments jump 61%$n$,
  $n$Hero MotoCorp, which describes itself as the world's largest maker of motorcycles and scooters, dispatched 7,34,403 motorcycles and scooters in October, up 15.5% from 6,35,808 a year earlier. Motorcycle dispatches rose 10.3% to 6,29,800, while scooter dispatches surged 60.8% to 1,04,603. Domestic dispatches grew 16.6%, but exports fell 5.4% to 29,319. The company said retail registrations on the government's Vahan portal reached 5,89,665 for the month (excluding Telangana), and its electric brand Vida dispatched 30,143 units.$n$,
  $n$Hero's 7.34 lakh 'sales' are dispatches to its dealers, which is typically when a manufacturer books the sale; the 5.9 lakh registrations are bikes actually bought by riders. When a business counts its revenue is what the revenue recognition card explains.$n$,
  $n$Equity Bulls (Hero MotoCorp release)$n$, $n$https://www.equitybulls.com/news/378267/hero-motocorp-s-october-dispatches-rise-15-5-scooter-sales-surge-60-8$n$, $n$acct-12$n$, 'draft',
  $n$Hero shipped 7.34 lakh two-wheelers to dealers in October; riders registered 5.9 lakh. Which is the sale?$n$,
  $n$Hero's dispatches rose 15.5%, led by a 61% jump in scooters. But a dispatch to a dealer is not the same as a customer buying. The revenue recognition card explains when a company can count a sale.$n$, false, $n$2026-11-02T00:34:00+05:30$n$, 11),
($n$2026-11-02-royal-enfield-best-month$n$, '2026-11-02', $n$recruiter$n$, $n$AUTO$n$,
  $n$Royal Enfield sells a record 1.33 lakh motorcycles in October, with its bigger bikes growing fastest$n$,
  $n$Royal Enfield, part of Eicher Motors, sold 1,33,442 motorcycles in October, up 7% from a year earlier and its highest-ever monthly figure. Domestic sales rose 4% to 1,21,527, while exports jumped 47% to 11,915. Bikes above 350cc grew 18% to 16,626 units, faster than the 5% growth for models up to 350cc. The company said its festive-season sales across September and October reached 2,67,400, already above last year's full festive total.$n$,
  $n$Royal Enfield's pricier bikes above 350cc grew faster than its smaller ones in October. Products whose demand rises faster as people have more to spend are what the income elasticity of demand card explains.$n$,
  $n$Equity Bulls (Royal Enfield release); also Whalesbook$n$, $n$https://www.equitybulls.com/news/378261/royal-enfield-posts-best-ever-festive-season-with-1-33-lakh-motorcycles-sold-in$n$, $n$econ-04$n$, 'draft',
  $n$Royal Enfield just had its biggest month ever, and its bigger, pricier bikes grew the fastest.$n$,
  $n$Royal Enfield sold 1.33 lakh motorcycles in October, with exports up 47% and bikes above 350cc up 18%. Its festive season already beats last year's. The income elasticity card explains why some products grow faster than others.$n$, false, $n$2026-11-02T00:13:00+05:30$n$, 12)
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
from news_stories where publish_date = '2026-11-02' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-02' order by rank;
