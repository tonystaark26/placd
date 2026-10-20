-- =====================================================================
-- ChaiCase news brief for 2026-10-20: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-10-20.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-10-19 7 AM and 2026-10-20 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-10-20' and (slug is null or slug not in ($n$2026-10-20-sensex-private-banks$n$, $n$2026-10-20-oil-houthi-claims$n$, $n$2026-10-20-bajaj-finance-q2$n$, $n$2026-10-20-coal-import-plan-shelved$n$, $n$2026-10-20-rupee-94-92$n$, $n$2026-10-20-zetwerk-ipo-retail$n$, $n$2026-10-20-hfcl-ai-fibre$n$, $n$2026-10-20-wall-street-chip-rebound$n$, $n$2026-10-20-ltts-one-time-gain$n$, $n$2026-10-20-europe-france-riots$n$, $n$2026-10-20-merck-silence-deal$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-10-20-sensex-private-banks$n$, '2026-10-20', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex falls 876 points as private banks drag after their results$n$,
  $n$The Sensex dropped 876.37 points (1.17%) to 73,852.90 on Monday and the Nifty lost 257.20 points (1.11%) to 22,888.95, ending a two-day rally. Private banks led the fall: Axis Bank slid 3.85% even though its consolidated quarterly profit rose 39.4%, and HDFC Bank lost more than 2% after results that failed to impress. Analysts said investors were looking past headline profit growth at squeezed margins, higher operating costs and weaker treasury income. State-run banks bucked the trend, with the PSU Bank index up 2.6%. Indian markets are shut on Tuesday for Dussehra.$n$,
  $n$A bank can grow its profit and still see its shares fall if the details underneath, such as margins and costs, are getting worse. Reading the full financial statements, not just the bottom line, is how investors spot that.$n$,
  $n$ThePrint (PTI)$n$, $n$https://theprint.in/economy/sensex-tumbles-876-points-nifty-drops-below-22900-dragged-by-private-banks/3076043/$n$, $n$acct-10$n$, 'draft',
  $n$Axis Bank's profit jumped 39%, and its shares still fell almost 4%. Here's what investors saw.$n$,
  $n$Monday's 876-point Sensex drop was led by private banks that had just reported higher profits. Investors were reading past the headline number to margins and costs. That's exactly the skill a card on reading financial statements teaches.$n$, false, $n$2026-10-19T17:45:00+05:30$n$, 1),
($n$2026-10-20-oil-houthi-claims$n$, '2026-10-20', $n$global$n$, $n$OIL$n$,
  $n$Brent holds near $110 as Houthis claim strikes on Saudi oil sites$n$,
  $n$Brent crude for December settled 31 cents lower at $109.55 a barrel on Monday, after falling more than $3 earlier in the day as traders booked profits. US crude for November jumped 2.2% to $103.66, its highest settlement since mid-September, in thin trade before that contract expires. Yemen's Houthis said they attacked Saudi targets including an Aramco facility in Yanbu and the Shaybah oilfield; Saudi Arabia had not confirmed this and Reuters could not verify it. Kpler data shows crude flows through the Strait of Hormuz fell to about 8.5 million barrels a day last week, from over 20 million the week before.$n$,
  $n$Attacks, or even claims of attacks, on oil sites threaten future supply, shifting the supply curve left. When traders fear less oil will reach the market, prices stay high even on days they take profits.$n$,
  $n$Reuters (via Yahoo Finance)$n$, $n$https://finance.yahoo.com/energy/articles/oil-slips-trumps-sanction-waiver-222256196.html$n$, $n$econ-08$n$, 'draft',
  $n$Oil traders sold early, then the Houthis claimed hits on Saudi oil sites. Brent ended near $110.$n$,
  $n$Brent swung by more than $3 in one session as profit-taking ran into fresh, unverified attack claims and a Hormuz shipping slump. Why does mere fear of lost supply keep prices up? It comes down to what shifts the supply curve.$n$, false, $n$2026-10-20T00:56:00+05:30$n$, 2),
($n$2026-10-20-bajaj-finance-q2$n$, '2026-10-20', $n$recruiter$n$, $n$RESULTS$n$,
  $n$Bajaj Finance's quarterly profit rises 29% to ₹6,367 crore$n$,
  $n$Bajaj Finance's consolidated net profit for July–September rose 28.7% to ₹6,366.57 crore, and net interest income grew 24% to ₹13,335 crore. Assets under management climbed 26% to ₹5.85 lakh crore, and the lender added 4.42 million customers, taking its franchise to 128.85 million. Bad loans eased: gross NPAs fell to 1.06% from 1.24% a year earlier. The company still set aside about ₹2,166 crore for impairment on loans and other financial assets during the quarter. For FY27 it is guiding for 18–20 million new customers.$n$,
  $n$Lenders book losses on loans they expect may go bad before those losses actually happen. Setting aside money early, rather than waiting, is the conservatism convention in action.$n$,
  $n$Upstox News (also reported by Equity Bulls)$n$, $n$https://upstox.com/news/market-news/earnings/bajaj-finance-q2-results-profit-soars-29-yo-y-to-6-367-crore-nii-grows-to-13-335-crore-check-numbers/article-202104/$n$, $n$acct-13$n$, 'draft',
  $n$The company behind many EMI phone purchases earned ₹6,367 crore in three months. It still set aside ₹2,166 crore.$n$,
  $n$Bajaj Finance grew profit 29% and now serves almost 129 million customers. Why would a lender with falling bad loans keep putting thousands of crores aside for losses? The answer is an accounting convention called conservatism.$n$, false, $n$2026-10-19T19:12:00+05:30$n$, 3),
($n$2026-10-20-coal-import-plan-shelved$n$, '2026-10-20', $n$local$n$, $n$COAL$n$,
  $n$India shelves imported-coal plan and turns to Kolkata-based Coal India for more output$n$,
  $n$India has dropped a proposal to make power plants blend imported coal with domestic coal, because global coal prices are at a three-year high and the rupee is weaker, Bloomberg reported, citing people familiar with the matter. Instead, policymakers have asked Kolkata-headquartered Coal India to raise production and the railways to deliver coal on time. Power ministry data shows nearly half of India's power plants had critically low stocks as of 17 October, holding less than a quarter of the coal they need. Coal stocks are at their lowest in almost five years after a poor monsoon.$n$,
  $n$Imported and domestic coal are substitutes. When imported coal becomes more expensive, demand shifts toward the local alternative, which is cross elasticity of demand at work.$n$,
  $n$Millennium Post (Bloomberg report)$n$, $n$https://www.millenniumpost.in/business/india-scraps-coal-import-mandate-amid-high-prices-and-weaker-rupee-680351$n$, $n$econ-05$n$, 'draft',
  $n$Imported coal got too pricey, so India is leaning on a Kolkata company to keep the lights on.$n$,
  $n$Nearly half of India's power plants are running critically low on coal, and the plan to import more has been shelved. Kolkata-headquartered Coal India is being asked to dig more instead. When one option gets expensive, buyers switch to the substitute, and that's the idea of cross elasticity.$n$, true, $n$2026-10-19T23:14:00+05:30$n$, 4),
($n$2026-10-20-rupee-94-92$n$, '2026-10-20', $n$india$n$, $n$RUPEE$n$,
  $n$Rupee slips to 94.92 a dollar, ending a six-day winning run$n$,
  $n$The rupee weakened 3 paise to a provisional 94.92 against the US dollar on Monday, after six straight sessions of gains. Dealers blamed the fall in Indian shares, crude near $108.6 a barrel and continued selling by foreign investors. RBI data shows India's forex reserves fell $8.58 billion to $726.03 billion in the week to 9 October, after a $12.95 billion drop the week before. One analyst said RBI steps may calm short-term swings, but a lasting recovery needs lower oil prices and stronger foreign inflows.$n$,
  $n$The rupee's value is a price set by the supply of and demand for dollars. When foreign investors sell and oil importers need more dollars, demand for dollars rises and the rupee weakens.$n$,
  $n$Telangana Today (PTI)$n$, $n$https://telanganatoday.com/rupee-falls-3-paise-to-94-92-against-us-dollar-ends-six-session-rally$n$, $n$econ-09$n$, 'draft',
  $n$The rupee's six-day winning streak just ended at 94.92 a dollar. Oil and foreign selling are why.$n$,
  $n$A weaker rupee makes everything India imports, from crude to phones, a little costlier. Forex reserves have also dropped by over $21 billion in two weeks. An exchange rate is just a price set by supply and demand for dollars, and the equilibrium card shows how.$n$, false, $n$2026-10-19T16:49:00+05:30$n$, 5),
($n$2026-10-20-zetwerk-ipo-retail$n$, '2026-10-20', $n$india$n$, $n$IPO$n$,
  $n$Zetwerk's ₹5,012-crore IPO closes 3 times subscribed, but retail investors stayed away$n$,
  $n$Manufacturing platform Zetwerk's IPO drew bids for 56.54 crore shares against 18.50 crore on offer by the final day, an overall subscription of about 3.06 times. Big institutions carried it, bidding 4.73 times their quota, while the retail portion was only 0.72 times subscribed. The issue, priced at ₹143–151 a share, combined ₹2,830 crore of new shares with a ₹2,182-crore sale by existing shareholders. The tepid retail response contrasts with the huge institutional demand reported for Jio Platforms' IPO.$n$,
  $n$At a fixed price band, when fewer retail investors want shares than are set aside for them, there's a surplus in that category. It's the opposite of the shortage seen when an issue is heavily oversubscribed.$n$,
  $n$Entrackr$n$, $n$https://entrackr.com/news/zetwerks-ipo-subscribed-over-3-times-on-final-day-12689940$n$, $n$econ-09$n$, 'draft',
  $n$Funds bid almost 5 times their share of Zetwerk's IPO. Retail investors didn't even fill theirs.$n$,
  $n$Zetwerk's ₹5,012-crore issue closed about three times subscribed overall, yet only 72% of the retail quota was taken. Why can one IPO show a shortage and a surplus at the same price? Market equilibrium explains it.$n$, false, $n$2026-10-19T17:14:00+05:30$n$, 6),
($n$2026-10-20-hfcl-ai-fibre$n$, '2026-10-20', $n$india$n$, $n$RESULTS$n$,
  $n$HFCL's profit rises more than fivefold as AI data centres drive fibre demand$n$,
  $n$Telecom equipment and optical fibre maker HFCL reported a July–September net profit of ₹394.22 crore, up from ₹71.92 crore a year earlier. Revenue rose about 144% to ₹2,541.79 crore and the operating margin widened to 25.9% from 19.5%. The company pointed to demand from AI infrastructure, data centres and telecom networks, and says its order book exceeds ₹28,900 crore. It is guiding for at least 80% revenue growth in FY27 and plans to invest about ₹1,800 crore to expand fibre and cable capacity. Managing director Mahendra Nahata called it the best quarter in HFCL's history.$n$,
  $n$The AI boom has shifted the whole demand curve for optical fibre to the right: buyers want more at every price. That's a change in demand, not just a move along the curve.$n$,
  $n$Asianet Newsable (ANI)$n$, $n$https://newsable.asianetnews.com/business/hfcl-q2-results-net-profit-soars-fivefold-revenue-up-143-articleshow-t86ndwr$n$, $n$econ-02$n$, 'draft',
  $n$AI needs miles of glass fibre, and one Indian cable maker's profit just rose more than fivefold.$n$,
  $n$HFCL's revenue more than doubled as data centres raced to build AI capacity. When a new technology makes buyers want more of a product at every price, economists call it a change in demand, and this is a textbook case.$n$, false, $n$2026-10-19T17:31:00+05:30$n$, 7),
($n$2026-10-20-wall-street-chip-rebound$n$, '2026-10-20', $n$global$n$, $n$US MARKETS$n$,
  $n$Nasdaq rebounds 1.1% as chip and memory stocks bounce back$n$,
  $n$The Nasdaq rose 1.11% to 26,430.89 on Monday and the S&P 500 gained 0.41% to 7,690.73, while the Dow slipped 0.07% to 51,966.03. Chipmakers rebounded after last week's sell-off in AI-related stocks, with the Philadelphia Semiconductor Index up 1.61%. Memory stocks led: Western Digital gained about 6%, SanDisk 5.5% and Micron nearly 3%. Bank of America said memory stock valuations have bottomed and called worries about an AI memory slump overdone.$n$,
  $n$After a sharp fall, lower share prices drew buyers back in, much as a lower price usually raises the quantity demanded. Markets also show the law's exceptions, though: sometimes falling prices scare buyers away instead.$n$,
  $n$TradingKey (closing figures also reported by Anadolu Agency)$n$, $n$https://www.tradingkey.com/analysis/stocks/us-stocks/262224387-us-stock-market-close-nasdaq-rise-memory-micron-sandisk-tradingkey$n$, $n$econ-01$n$, 'draft',
  $n$Last week investors dumped AI chip stocks. On Monday, the bargain hunters came back.$n$,
  $n$Memory makers such as Western Digital and Micron led a Nasdaq rebound after Bank of America said their valuations had hit bottom. Do lower prices always bring more buyers? The law of demand, and the cases where it breaks, has the answer.$n$, false, $n$2026-10-20T05:50:00+05:30$n$, 8),
($n$2026-10-20-ltts-one-time-gain$n$, '2026-10-20', $n$recruiter$n$, $n$IT$n$,
  $n$L&T Technology Services' profit jumps 67%, helped by a one-time sale gain$n$,
  $n$L&T Technology Services reported July–September net profit of ₹548.7 crore, up from ₹329.2 crore a year earlier, while revenue rose 12.1% to ₹3,040.4 crore. Part of the jump came from a one-time ₹165-crore gain (after tax) on selling its Smart World and Communication unit on 1 September. The engineering services firm declared an interim dividend of ₹20 a share, with 27 October as the record date. Its shares closed 2.78% lower at ₹3,611.30 on Monday.$n$,
  $n$Money from selling a business unit is a one-time capital receipt, not regular revenue from operations. Separating the two shows how much of the 67% profit growth will actually repeat.$n$,
  $n$Trade Brains$n$, $n$https://tradebrains.in/indian-markets/lt-technology-services-declares-20-interim-dividend-q2-fy27-net-profit-rises-67-yoy-12689974$n$, $n$acct-18$n$, 'draft',
  $n$LTTS profit rose 67%, but revenue grew only 12%. The gap is a business it sold.$n$,
  $n$A ₹165-crore gain from selling a unit lifted the quarter's profit far above its revenue growth, and the shares still fell. Interviewers love asking which earnings will repeat. The capital-vs-revenue card shows how to tell.$n$, false, $n$2026-10-19T18:50:00+05:30$n$, 9),
($n$2026-10-20-europe-france-riots$n$, '2026-10-20', $n$global$n$, $n$EUROPE$n$,
  $n$European stocks fall as riots in France hit bank shares$n$,
  $n$European shares fell on Monday, with the STOXX 600 down about 0.9% in afternoon trade and France's CAC 40 down 1.1%, its worst day in nearly two weeks. Riots broke out in French cities over the weekend, triggered by rising prices and worsening public services, adding to worries about a country already facing weak growth and rising debt. Banks were the worst sector, down 2.2%, with BNP Paribas, Societe Generale and Credit Agricole losing 2.5–3.4%. Barclays fell 3.5% after the Financial Times reported the Bank of England is examining whether its traders misrepresented risky private-credit loans.$n$,
  $n$Social unrest and political uncertainty are macro forces that no company controls, yet they move share prices. PESTLE analysis puts these political and social factors alongside the economic ones.$n$,
  $n$Reuters (via Yahoo Finance)$n$, $n$https://finance.yahoo.com/markets/stocks/articles/french-stocks-slide-violent-protests-071639032.html$n$, $n$mkt-05$n$, 'draft',
  $n$Rising prices sparked riots across France, and French bank shares paid the price.$n$,
  $n$Protests over living costs and public services knocked up to 3.4% off France's biggest banks in one day. How do street protests end up on a stock screen? PESTLE analysis maps the outside forces that hit businesses.$n$, false, $n$2026-10-19T21:53:00+05:30$n$, 10),
($n$2026-10-20-merck-silence-deal$n$, '2026-10-20', $n$global$n$, $n$M&A$n$,
  $n$Germany's Merck KGaA agrees to buy Silence Therapeutics for about $1.3 billion$n$,
  $n$Merck KGaA of Germany will buy UK biotech Silence Therapeutics for $20 per American depositary share in cash, valuing its equity at about $1.3 billion. The company says the price is an 82% premium to Silence's 30-day average share price up to 16 October. The main prize is divesiran, an experimental drug for the blood disorder polycythemia vera that is ready for final-stage (phase III) trials. Merck will fund the deal with new debt and expects it to close in the first quarter of 2027, subject to regulatory and shareholder approvals.$n$,
  $n$Merck is paying today for cash a drug may earn years from now, if it succeeds. Valuing those future earnings in today's money is the idea of present value.$n$,
  $n$PharmExec (also reported by Reuters)$n$, $n$https://www.pharmexec.com/view/merck-kgaa-darmstadt-germany-acquires-silence-therapeutics-1-billion$n$, $n$acct-21$n$, 'draft',
  $n$A drug that hasn't finished testing just sold for $1.3 billion, at an 82% premium.$n$,
  $n$Merck KGaA is paying cash for Silence Therapeutics mainly for one blood-disorder drug still in trials. Why pay so much for something unproven? Buyers are valuing future earnings in today's money, which is present value.$n$, false, $n$2026-10-19T20:59:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-10-20' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-10-20' order by rank;
