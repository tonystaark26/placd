-- =====================================================================
-- ChaiCase news brief for 2026-10-27: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-27.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-26 7 AM and 2026-10-27 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-27' and (slug is null or slug not in ($n$2026-10-27-tata-iveco-crosses-80$n$, $n$2026-10-27-anthropic-ipo-filing$n$, $n$2026-10-27-jio-ipo-allotment$n$, $n$2026-10-27-sensex-snaps-losing-streak$n$, $n$2026-10-27-microsoft-voluntary-exits$n$, $n$2026-10-27-paytm-q2-profit$n$, $n$2026-10-27-itc-hotels-q2$n$, $n$2026-10-27-shriram-finance-guidance-cut$n$, $n$2026-10-27-tata-consumer-q2$n$, $n$2026-10-27-ather-first-profit$n$, $n$2026-10-27-dr-reddys-rally$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-27-tata-iveco-crosses-80$n$, '2026-10-27', $n$recruiter$n$, $n$M&A$n$,
  $n$Tata Motors' Iveco takeover clears the 80% bar, with about 89% of shares tendered on provisional count$n$,
  $n$Tata Motors' Dutch subsidiary TML CV Holdings says about 238.16 million Iveco shares, roughly 89.42% of the Italian truckmaker's share capital net of treasury shares, were tendered in its offer, according to provisional figures from intermediary BNP Paribas. That comfortably beats the 80% acceptance condition, even though only about 35% had been tendered a few days before the deadline. Reuters separately reported an 87.8% level from an Italian stock market filing on Monday, the last day of the offer. At €14.40 a share, the tendered stake is worth about €3.43 billion; payment is due on 30 October, and the offer reopens for five trading days from 2 November for shareholders who held out.$n$,
  $n$Buying a large European truckmaker gives Tata Motors scale, plants and customers it could not build quickly on its own. Gaining scale and reach that rivals find hard to copy is one route to the competitive advantage the card describes.$n$,
  $n$TaxGuru (Tata Motors filing); also reported by Reuters$n$, $n$https://taxguru.in/finance/business/tata-motors-subsidiary-secures-89-42-stake-in-iveco-group-through-tender-offer.html$n$, $n$mkt-06$n$, 'draft',
  $n$Last week Tata had 35% of Iveco's shares. By the final day, almost 9 in 10 had come in.$n$,
  $n$Investors waited until the deadline, then tendered about 89% of the Italian truckmaker, worth roughly €3.43 billion to Tata Motors. An Indian company now controls a big European rival. Porter's Five Forces card explains what that scale is worth.$n$, false, $n$2026-10-27T00:00:00+05:30$n$, 1),
($n$2026-10-27-anthropic-ipo-filing$n$, '2026-10-27', $n$global$n$, $n$IPO$n$,
  $n$AI company Anthropic files publicly for a US IPO, showing $16.3 billion of first-half revenue and an $80.7 billion loss$n$,
  $n$Anthropic, the maker of the Claude AI models, publicly filed its S-1 registration statement with the US Securities and Exchange Commission on 26 October and plans to list on the Nasdaq Global Select Market under the symbol ANT. The share count and price range have not been set; Goldman Sachs and Morgan Stanley are named on the prospectus. CBS News reported that the filing shows revenue of $16.3 billion in the first half of 2026, up from $1.2 billion a year earlier, with a net loss of $80.7 billion and $8.9 billion spent on chips and other infrastructure. The company was last valued at $965 billion in a May funding round, and reports say the IPO could value it at $1.5 trillion or more. The news lifted US technology shares on Monday.$n$,
  $n$The filing lets outsiders read Anthropic's income statement for the first time: revenue has grown more than tenfold, yet costs are far larger, so the bottom line is a big loss. Reading revenue, expenses and profit together is the skill the card teaches.$n$,
  $n$CBS News; also announced by Anthropic$n$, $n$https://www.cbsnews.com/news/anthropic-ipo-plans-ai-safety/$n$, $n$acct-10$n$, 'draft',
  $n$Anthropic's sales jumped from $1.2 billion to $16.3 billion in a year. It still lost $80.7 billion.$n$,
  $n$The AI company behind Claude has opened its books ahead of a planned Nasdaq listing under the ticker ANT. Fast-rising sales and an even bigger loss sit on the same page. The reading financial statements card shows how to make sense of both.$n$, false, $n$2026-10-26T22:13:00+05:30$n$, 2),
($n$2026-10-27-jio-ipo-allotment$n$, '2026-10-27', $n$india$n$, $n$IPO$n$,
  $n$Jio Platforms' ₹30,188-crore IPO, subscribed 22 times, moves to allotment ahead of 28 October listing$n$,
  $n$Allotment of shares in Reliance's Jio Platforms IPO was expected to be finalised on 26 October, ahead of listing on the BSE and NSE on Wednesday, 28 October. The roughly ₹30,188-crore issue, described as the largest public offer in Indian corporate history, was priced at ₹1,065-1,119 a share and drew bids for 22.19 times the shares on offer. Institutional buyers bid 70.55 times their quota, non-institutional investors 14 times and retail investors 2.72 times. At the offer price the company's implied market value is about ₹10.3 lakh crore, and ₹8,109.85 crore of shares went to 212 anchor investors before the issue opened.$n$,
  $n$At a fixed price, investors wanted about 22 times more shares than were available, so most applicants will get few or none. When demand far exceeds supply at a set price, the result is a shortage, which is why listing-day prices often jump.$n$,
  $n$The Hans India$n$, $n$https://www.thehansindia.com/business/jio-platforms-ipo-allotment-likely-today-check-status-online-subscription-details-and-listing-date-1136029$n$, $n$econ-09$n$, 'draft',
  $n$India's biggest-ever IPO drew bids for 22 times the shares on offer. Most applicants will get nothing.$n$,
  $n$Institutions alone asked for 70 times their share of Jio Platforms' ₹30,188-crore issue before Wednesday's listing. A fixed price meets runaway demand. The market equilibrium and shortage card explains what happens next.$n$, false, $n$2026-10-26T16:07:00+05:30$n$, 3),
($n$2026-10-27-sensex-snaps-losing-streak$n$, '2026-10-27', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex rises 483 points to end a four-day fall, while the rupee slips to 95.19 a dollar on costly oil$n$,
  $n$The Sensex closed 482.92 points (0.66%) higher at 73,606.75 and the Nifty gained 153.20 points (0.68%) to 22,753.20 on Monday, ending a four-session losing streak. Metal, pharma and oil and gas stocks led, with Dr Reddy's and JSW Steel up more than 6% each, while Shriram Finance and Tata Consumer Products were the biggest Nifty losers. The rupee weakened 25 paise to 95.19 per US dollar as Brent crude traded near $114.50 after Houthi attacks on Saudi Arabia, and importers bought dollars. Investors are now watching the US Federal Reserve's decision on Wednesday, the oil price and foreign investor flows.$n$,
  $n$Oil prices in West Asia, a US interest-rate decision and the rupee are outside forces no Indian company controls, yet they move the whole market in a day. These economic and political forces are the macro environment the PESTLE card maps out.$n$,
  $n$HDFC Sky$n$, $n$https://hdfcsky.com/news/market-close-report-today-october-26-2026-sensex-nifty-rise-as-markets-snap-four-day-losing-streak$n$, $n$mkt-05$n$, 'draft',
  $n$Indian shares finally rose after four losing days, but the rupee kept sliding past 95 to the dollar.$n$,
  $n$Pharma and metal stocks pulled the Sensex up 483 points, while oil near $114 and month-end dollar buying weighed on the rupee. All eyes are now on the Fed on Wednesday. The PESTLE card explains the outside forces at work.$n$, false, $n$2026-10-26T17:09:00+05:30$n$, 4),
($n$2026-10-27-microsoft-voluntary-exits$n$, '2026-10-27', $n$global$n$, $n$JOBS$n$,
  $n$Microsoft offers voluntary exit packages to about 60,000 staff, including employees in India$n$,
  $n$Microsoft has offered a voluntary exit package to about 60,000 employees, roughly a quarter of the 223,000 people it employed at the end of June, according to a memo from chief people officer Amy Coleman. It covers staff at level 70 and below in participating teams in the US, Canada, the UK and India; sales and some engineering and corporate teams are not taking part. The package matches standard severance, with tenure-based pay, continued stock vesting, health cover for a period and career support, and staff have until early December to decide. Microsoft said the offer does not replace layoffs, which remain possible, and that it expects fewer takers than the roughly 30% who accepted a smaller US early-retirement offer this spring.$n$,
  $n$Big employers are reshaping their workforces as technology changes the work, and managing that change fairly is one of the people problems organisations face today. The card on OB's big challenges covers this kind of workforce shift.$n$,
  $n$The Next Web; also reported by KUOW$n$, $n$https://thenextweb.com/news/microsoft-buyouts-60000-employees-voluntary-exit-offer$n$, $n$ob-05$n$, 'draft',
  $n$Microsoft just offered a quarter of its staff, including some in India, money to leave voluntarily.$n$,
  $n$About 60,000 employees can take a severance-style package by December, and layoffs have not been ruled out. One of the world's most sought-after employers is reshaping its workforce. The card on OB's big challenges explains why this matters.$n$, false, $n$2026-10-26T22:04:00+05:30$n$, 5),
($n$2026-10-27-paytm-q2-profit$n$, '2026-10-27', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Paytm's quarterly profit jumps nearly elevenfold to ₹225 crore as revenue rises 28% to ₹2,648 crore$n$,
  $n$One97 Communications, the parent of Paytm, reported a net profit of ₹225 crore for the July-September quarter, up from ₹21 crore a year earlier. Operating revenue grew about 28% to ₹2,648 crore, and 8% from the previous quarter. Payment services brought in ₹1,434 crore, more than half of revenue, while distributing financial products such as loans earned ₹912 crore and marketing services ₹287 crore. Costs rose more slowly than revenue, with total expenses at ₹2,531 crore; profit for the first half doubled to ₹491 crore.$n$,
  $n$Paytm earns more when its existing payment users also take loans and other products through the app. Selling more to customers it already has raises what each customer is worth over time, the idea behind customer lifetime value.$n$,
  $n$Entrackr; also reported by Business Standard$n$, $n$https://entrackr.com/fintrackr/paytm-reports-rs-2648-cr-revenue-in-q2-fy27-profit-jumps-107x-12755092$n$, $n$mkt-03$n$, 'draft',
  $n$Paytm's revenue grew 28%, but its profit grew nearly elevenfold. The extra came from users it already had.$n$,
  $n$Loans and other financial products sold through the app now earn ₹912 crore a quarter, alongside payments. Profit rose to ₹225 crore from ₹21 crore. The customer lifetime value card shows why existing users are so valuable.$n$, false, $n$2026-10-26T21:52:00+05:30$n$, 6),
($n$2026-10-27-itc-hotels-q2$n$, '2026-10-27', $n$local$n$, $n$KOLKATA$n$,
  $n$Kolkata-based ITC Hotels lifts quarterly profit 51% to ₹201 crore as room rates and occupancy rise$n$,
  $n$ITC Hotels, headquartered at Virginia House in Kolkata, reported consolidated net profit of ₹201 crore for the July-September quarter, up 51.4% from ₹133 crore a year earlier. Revenue from operations rose 25.6% to ₹1,054 crore, helped partly by ₹71 crore from its branded residences business; excluding branded residences, revenue grew 17%. Occupancy rose to 76%, average room rates climbed 14% and revenue per available room rose 21%, while EBITDA grew 37% with the margin widening to about 32%. The shares rose about 5% to around ₹164 on Monday.$n$,
  $n$ITC Hotels charged 14% more per room and still filled more rooms, which means more people wanted rooms at every price. That is a shift of the whole demand curve, not a movement along it, which is the difference the card explains.$n$,
  $n$Kotak Neo; also reported by Upstox$n$, $n$https://www.kotakneo.com/news/stocks/itc-hotels-q2-fy-27-results-share-price-in-focus/$n$, $n$econ-02$n$, 'draft',
  $n$This Kolkata hotel company raised room rates 14%, and more guests came. Profit is up 51%.$n$,
  $n$ITC Hotels, run from Virginia House on J L Nehru Road, filled 76% of its rooms even at higher prices. When higher prices and more buyers rise together, something has shifted. The change in demand card explains what.$n$, true, $n$2026-10-26T19:07:00+05:30$n$, 7),
($n$2026-10-27-shriram-finance-guidance-cut$n$, '2026-10-27', $n$india$n$, $n$NBFC$n$,
  $n$Shriram Finance shares slide to an 11-month low after it cuts loan-growth guidance citing a weak monsoon$n$,
  $n$Shares of Shriram Finance fell as much as 6.55% to ₹810.20 on Monday, an 11-month low and their eighth straight fall, even though quarterly profit rose about 60% to roughly ₹3,680 crore and net interest income rose about 40%. Investors reacted to the lender cutting its growth forecast for assets under management in 2026-27 to 15-17%, from 18%, citing a weak monsoon and geopolitical uncertainty. Brokerages flagged rising asset-quality risks, and Motilal Oswal raised its estimates for credit costs. Motilal Oswal, Nuvama and Equirus kept positive ratings but lowered their target prices to about ₹1,150-1,155; the stock ended the day down about 4.6% at ₹825.$n$,
  $n$When a lender expects more borrowers in drought-hit areas to struggle, it must set money aside today for losses it expects later. That set-aside is a provision, and rising provisions eat into future profit even when today's numbers look strong.$n$,
  $n$Business Today; also reported by Upstox and HDFC Sky$n$, $n$https://www.businesstoday.in/markets/stocks/story/shriram-finance-shares-tumble-nearly-7-to-11-month-low-whats-weighing-on-the-stock-563600-2026-10-26$n$, $n$acct-19$n$, 'draft',
  $n$Profit up 60%, shares at an 11-month low. A weak monsoon explains Shriram Finance's bad day.$n$,
  $n$The lender trimmed its loan-growth forecast as borrowers in drought-hit regions came under pressure. Markets priced in the losses it may have to set aside. The provisions card explains how that works.$n$, false, $n$2026-10-26T12:40:00+05:30$n$, 8),
($n$2026-10-27-tata-consumer-q2$n$, '2026-10-27', $n$recruiter$n$, $n$FMCG$n$,
  $n$Tata Consumer's revenue rises 14% to ₹5,661 crore as newer brands grow 40% while tea stays flat$n$,
  $n$Tata Consumer Products reported revenue from operations of ₹5,661 crore for the July-September quarter, up 14%, with consolidated profit of about ₹470 crore, up roughly 16%, and EBITDA up 18% to ₹794 crore. Its newer growth businesses, such as Tata Sampann pulses and spices and ready-to-drink beverages, grew 40% and now make up 38% of the India business; Sampann rose 57% and ready-to-drink 47%. India tea and coffee volumes were flat, while salt revenue rose 15%. The international business grew 7% in rupees but fell 2% in constant currency. The shares fell about 2.8% to ₹936.50 on Monday.$n$,
  $n$A company that saw itself only as a tea seller could miss where shoppers are heading. By building pulses, spices and ready-to-drink brands around what customers need, Tata Consumer avoids marketing myopia.$n$,
  $n$Upstox (live results blog); also reported by Investing.com and PSU Connect$n$, $n$https://upstox.com/news/market-news/earnings/q2-results-live-updates-paytm-ather-energy-rec-nazara-tech-itc-hotels-tata-consumer-products-others-to-report-earnings-on-oct-26/liveblog-202373/$n$, $n$mkt-04$n$, 'draft',
  $n$Tea sales went nowhere this quarter. Tata Consumer still grew 14%, thanks to spices, pulses and cold drinks.$n$,
  $n$Newer brands grew 40% and now make up 38% of its India business, while its oldest product stood still. The company has been looking past the teacup. The marketing myopia card explains why that matters.$n$, false, $n$2026-10-26T17:00:00+05:30$n$, 9),
($n$2026-10-27-ather-first-profit$n$, '2026-10-27', $n$india$n$, $n$EV$n$,
  $n$Electric scooter maker Ather Energy posts its first quarterly profit as revenue jumps 63% to ₹1,464 crore$n$,
  $n$Ather Energy swung to a small net profit of about ₹1.3 crore in the July-September quarter, against a loss of ₹154 crore a year earlier, as revenue from operations rose about 63% to ₹1,464 crore. EBITDA turned positive at about ₹11 crore, a margin under 1%, and other income of about ₹63 crore helped the bottom line. The board approved up to ₹122 crore to add 2.25 lakh units of yearly capacity: 75,000 at Hosur by December 2026 and 1.5 lakh at Chhatrapati Sambhajinagar by the second quarter of 2027-28. The shares hit their upper circuit on Monday.$n$,
  $n$The ₹122 crore for new production lines is capital expenditure: it buys assets that will make scooters for years. Day-to-day costs such as salaries and parts are revenue expenditure, charged against this year's sales.$n$,
  $n$Upstox (live results blog); also reported by Lapaas Voice$n$, $n$https://upstox.com/news/market-news/earnings/q2-results-live-updates-paytm-ather-energy-rec-nazara-tech-itc-hotels-tata-consumer-products-others-to-report-earnings-on-oct-26/liveblog-202373/$n$, $n$acct-18$n$, 'draft',
  $n$After years of losses, Ather Energy finally made a profit. Just ₹1.3 crore, and the stock still soared.$n$,
  $n$Revenue rose 63% and the board approved ₹122 crore for new factory capacity at Hosur and Sambhajinagar. Spending to build and spending to run are booked differently. The capital vs revenue card explains the difference.$n$, false, $n$2026-10-26T14:42:00+05:30$n$, 10),
($n$2026-10-27-dr-reddys-rally$n$, '2026-10-27', $n$india$n$, $n$PHARMA$n$,
  $n$Dr Reddy's shares rise over 6% even as its quarterly profit falls 36% to ₹913 crore$n$,
  $n$Dr Reddy's Laboratories reported a 36% fall in net profit to ₹913 crore for the July-September quarter, with revenue down nearly 2% to ₹8,670.8 crore and EBITDA down 14% to ₹1,731 crore. Its EBITDA margin of 19.9% was 290 basis points lower than a year ago but above what analysts had expected. The shares rose as much as about 8% on Monday and closed up more than 6%, the Nifty's top gainer. JPMorgan upgraded the stock to neutral from underweight, while Goldman Sachs kept a sell rating, citing generic competition for Ozempic, a thin near-term pipeline and pricing pressure.$n$,
  $n$Investors read the income statement against what they expected, not just against last year. Margins that beat forecasts can outweigh a fall in profit, which is why reading the numbers in context matters.$n$,
  $n$Business Today; also reported by HDFC Sky$n$, $n$https://www.businesstoday.in/markets/trending-stocks/story/dr-reddys-labs-share-price-pat-falls-36-in-q2-should-you-buy-sell-or-hold-check-targets-563703-2026-10-26$n$, $n$acct-10$n$, 'draft',
  $n$Dr Reddy's profit fell 36%, and its shares jumped 6%. Here is how both can be true.$n$,
  $n$Margins came in better than analysts feared, and one big broker dropped a bearish call it had held for nearly four years. Markets judge results against expectations. The reading financial statements card shows what to look for.$n$, false, $n$2026-10-26T15:52:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-10-27' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-27' order by rank;
