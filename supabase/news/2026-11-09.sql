-- =====================================================================
-- ChaiCase news brief for 2026-11-09: 11 stories (as DRAFTS)
-- Made by scripts/news-to-sql.mjs from content/news/2026-11-09.json.
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Then approve in the app.
-- Every story was published between 2026-11-08 7 AM and 2026-11-09 (India time).
-- =====================================================================

-- This file is the whole day: remove the day's stories that are no longer in it
delete from news_stories where publish_date = '2026-11-09' and (slug is null or slug not in ($n$2026-11-09-nvidia-board-probes-huang$n$, $n$2026-11-09-fpi-38971-crore-week$n$, $n$2026-11-09-wall-street-cpi-fed-hike-odds$n$, $n$2026-11-09-adani-enterprises-40000-crore-capex$n$, $n$2026-11-09-indian-oil-to-buy-tankers$n$, $n$2026-11-09-trump-iran-strikes-unlikely-oil$n$, $n$2026-11-09-bengal-land-policy-tribal-test$n$, $n$2026-11-09-muhurat-trading-samvat-2083$n$, $n$2026-11-09-nbfc-gold-loans-up-66$n$, $n$2026-11-09-iraq-us-hormuz-oil-exports$n$, $n$2026-11-09-apollo-medical-tourism-insurance$n$));

insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note, source_name, source_url, card_id, status, teaser_title, teaser, featured, published_at, rank)
values
($n$2026-11-09-nvidia-board-probes-huang$n$, '2026-11-09', $n$global$n$, $n$GOVERNANCE$n$,
  $n$Nvidia's board opens an independent inquiry into CEO Jensen Huang's relationship with a woman US agencies reportedly suspect of spying for China$n$,
  $n$Nvidia CEO Jensen Huang told staff in an email on Sunday that he had had an affair, writing that he had been unfaithful to his wife. The company's board then said its independent directors would investigate allegations that Huang was the target of a foreign intelligence effort, adding that it has no reason to believe national security or Nvidia secrets were compromised. The New York Times and the Financial Times reported that US intelligence agencies are concerned the woman, Alice Huang, has been passing information to Beijing; she is linked to Megaspeed, an Nvidia customer accused of helping restricted Chinese firms get its AI chips. Nvidia says Huang intends to stay on as CEO, and the company reports quarterly earnings on 17 November.$n$,
  $n$When questions are raised about the person at the top, it is the board, and especially its independent directors, that must examine them on behalf of shareholders. That oversight role is the heart of the corporate governance card.$n$,
  $n$CNBC; also TechCrunch$n$, $n$https://www.cnbc.com/2026/11/08/nvidia-jensen-huang-investigation-china-spy.html$n$, $n$ethics-12$n$, 'draft',
  $n$The boss of the world's most valuable chipmaker is now being investigated by his own board.$n$,
  $n$Jensen Huang admitted an affair, and reports say US agencies suspect the woman of spying for China. Nvidia's independent directors have opened an inquiry. The corporate governance card explains who keeps a CEO in check.$n$, false, $n$2026-11-09T01:42:00+05:30$n$, 1),
($n$2026-11-09-fpi-38971-crore-week$n$, '2026-11-09', $n$india$n$, $n$MARKETS$n$,
  $n$Foreign investors pour ₹38,971 crore into Indian shares in a week as a global AI sell-off sends money back to India$n$,
  $n$Foreign portfolio investors put a net ₹38,971 crore into Indian equities in the first week of November, according to NSDL data reported by ANI; exchange data compiled by Kotak Neo shows an even larger ₹45,960 crore. This reverses October, when foreign investors pulled out about ₹45,162 crore. The shift came as a sharp sell-off in US and Asian technology stocks, driven by worries over AI spending, pushed money towards markets seen as less tied to AI. Geojit's V K Vijayakumar said India is widely seen as a 'non-AI trade' with strong earnings growth and attractive large-cap valuations, while domestic institutions were net sellers. The Sensex gained about 8.8% and the Nifty about 8.6% over the week.$n$,
  $n$Foreign funds suddenly wanted more Indian shares at every price because conditions elsewhere changed, not because Indian prices fell first. A shift like that, driven by outside factors, is a change in demand rather than a movement along the demand curve.$n$,
  $n$The Tribune (ANI); also Kotak Neo$n$, $n$https://www.tribuneindia.com/news/business/global-ai-sell-off-triggers-fpi-return-to-indian-markets-rs-38971-crore-equity-inflows-this-week$n$, $n$econ-02$n$, 'draft',
  $n$When the AI boom wobbled abroad, foreign money came rushing back to Dalal Street: ₹38,971 crore in a week.$n$,
  $n$Foreign investors sold in October, then turned into big buyers as global tech shares slumped. The Sensex had its best week in years. The change-in-demand card explains why the whole demand curve moved.$n$, false, $n$2026-11-08T08:42:00+05:30$n$, 2),
($n$2026-11-09-wall-street-cpi-fed-hike-odds$n$, '2026-11-09', $n$global$n$, $n$MARKETS$n$,
  $n$Wall Street faces an inflation test after a bruising week for AI stocks; traders see a 78% chance of a US rate hike in December$n$,
  $n$US markets enter the week after a heavy sell-off in AI-linked shares, as investors worry that the midterm election results and local ballot measures could slow investment in data centres. October's US consumer price index is due on Tuesday, 10 November, and a hot reading would likely push markets to expect more tightening. As of Sunday, traders were pricing a 78% chance of a quarter-point Federal Reserve rate hike at its December meeting, according to the CME FedWatch tool cited by CNBC. AI cloud company CoreWeave reports on Tuesday, and Cisco and Applied Materials on Thursday, giving more clues on AI spending.$n$,
  $n$An election result, a ballot vote and an inflation number are all forces outside any one company's control, yet they can move the whole tech sector. Scanning those political and economic forces is what the PESTLE part of the marketing environment card teaches.$n$,
  $n$CNBC; also Business Recorder (Reuters)$n$, $n$https://www.cnbc.com/investingclub/2026/11/08/here-are-the-2-big-things-were-watching-in-the-stock-market-in-the-week-ahead.html$n$, $n$mkt-05$n$, 'draft',
  $n$An election and one inflation number could decide the next move for the world's hottest stocks.$n$,
  $n$AI shares just had a rough week, and US inflation data lands on Tuesday. Traders now see a likely US rate hike in December. The marketing environment card shows how political and economic forces shape business.$n$, false, $n$2026-11-08T23:10:00+05:30$n$, 3),
($n$2026-11-09-adani-enterprises-40000-crore-capex$n$, '2026-11-09', $n$recruiter$n$, $n$STRATEGY$n$,
  $n$Adani Enterprises plans to spend ₹35,000-40,000 crore a year on airports, data centres and PVC after a record half-year$n$,
  $n$Adani Enterprises expects capital spending of ₹35,000-40,000 crore a year over the next couple of years, its head of finance Manan Vakharia said on the earnings call, with airports, data centres and a PVC plant taking most of it, according to PTI. EBITDA for April-September rose 56% to ₹11,958 crore, the company's best half-year, and consolidated income grew 62% to ₹71,569 crore. Its airports handled 21.3 million passengers in the September quarter, and airport EBITDA rose 55% to ₹1,641 crore. The data centre arm has over 1.2 GW of capacity contracted, and the roughly ₹26,000 crore PVC complex at Mundra is about 60% complete. CEO Arun Bansal said the group is moving from a 'build-out phase to value realisation phase'.$n$,
  $n$Money spent building airports, data centres and plants creates assets that earn for years, so it is capital expenditure, not a cost charged against one year's profit. That distinction is what the capital vs revenue card explains.$n$,
  $n$Rediff Money (PTI); also Business Standard$n$, $n$https://money.rediff.com/news/market/adani-enterprises-plans-rs-40-000-cr-annual-capex-for-growth/57732020261108$n$, $n$acct-18$n$, 'draft',
  $n$Up to ₹40,000 crore a year on airports and data centres: Adani's flagship is building big again.$n$,
  $n$Adani Enterprises just posted its best half-year and plans even heavier spending on assets. Airports and data centres lead the list. The capital vs revenue card explains why this spending sits on the balance sheet.$n$, false, $n$2026-11-08T10:30:00+05:30$n$, 4),
($n$2026-11-09-indian-oil-to-buy-tankers$n$, '2026-11-09', $n$india$n$, $n$ENERGY$n$,
  $n$Indian Oil's board approves buying its own crude and LPG tankers as spot freight costs soar during the West Asia crisis$n$,
  $n$Indian Oil Corporation plans to buy a few crude oil and LPG carriers after its board approved the purchase, finance director Anuj Jain said on the earnings call, according to PTI. The company now hires ships on time charter at about $2-2.50 a barrel for crude, while spot freight has gone as high as $8-10 a barrel, and LPG freight has jumped to $160-180 a tonne from about $40 normally. Spot deals made up about 87% of IOC's crude buying in April-September, up from about 50% last year, with Russia supplying 55%. IOC also reported a September-quarter net profit of ₹21,630 crore, against a loss of ₹2,661 crore in the previous quarter.$n$,
  $n$Owning ships ties up money that could go elsewhere, while renting them on the spot market has become very expensive. Weighing what you give up under each choice is exactly what the opportunity cost card teaches.$n$,
  $n$Rediff Money (PTI)$n$, $n$https://money.rediff.com/news/market/indian-oil-to-acquire-ships-amid-west-asia-crisis-high-costs/57733820261108$n$, $n$econ-06$n$, 'draft',
  $n$Renting a tanker got four times costlier, so India's biggest oil company has decided to buy its own.$n$,
  $n$Spot freight for crude jumped to as much as $8-10 a barrel, against about $2 on IOC's charters. Its board has now approved buying ships. The opportunity cost card shows how firms weigh renting against owning.$n$, false, $n$2026-11-08T11:05:00+05:30$n$, 5),
($n$2026-11-09-trump-iran-strikes-unlikely-oil$n$, '2026-11-09', $n$global$n$, $n$OIL$n$,
  $n$Trump says new strikes on Iran are 'highly unlikely' if talks progress; Brent slips below $98 as tanker attacks continue$n$,
  $n$US President Donald Trump said fresh strikes on Iran were highly unlikely to be needed as long as talks progress, adding that it depends on Iran signing a very strong agreement, Reuters reported. Iran's Revolutionary Guards said two tankers caught fire after hitting mines in the Strait of Hormuz, though Reuters could not confirm this, and the US military said it disabled a vessel trying to slip through its blockade of Iranian ports. Iran says talks depend on the US first meeting seven demands, including sanctions relief and access to frozen assets. In early Asian trade on Monday, Brent fell 0.8% to about $97.50 a barrel and US crude slipped to $90.26, according to Bloomberg.$n$,
  $n$Each hint of peace or new attack changes how much risk buyers and sellers price in, and the oil price keeps moving to a new balance. How a market price settles where supply meets demand is explained in the market equilibrium card.$n$,
  $n$Daily Maverick (Reuters); also Bloomberg via Swissinfo$n$, $n$https://www.dailymaverick.co.za/article/2026-11-08-trump-says-he-is-highly-unlikely-to-order-iran-strikes-if-talks-progress/$n$, $n$econ-09$n$, 'draft',
  $n$Peace talk on one side, burning tankers on the other: oil is caught in a daily tug of war.$n$,
  $n$Trump says new strikes on Iran look unlikely if talks progress, while reports of tanker fires continue. Brent eased to about $97.50 on Monday. The market equilibrium card explains how prices find a new balance.$n$, false, $n$2026-11-09T03:00:13+05:30$n$, 6),
($n$2026-11-09-bengal-land-policy-tribal-test$n$, '2026-11-09', $n$local$n$, $n$BENGAL$n$,
  $n$Bengal's new investment policy meets its first test on land, as tribal groups in Purulia oppose new plants and critics question the money$n$,
  $n$West Bengal's Investment Promotion Policy 2026, unveiled on 5 November by Chief Minister Suvendu Adhikari, plans for the state to buy land directly from owners and to explore land pooling, with no forcible acquisition, The Federal reports. Under the pooling idea, landowners would get 25-30% of the developed land plus shares in the industries built on it, though detailed terms are not out yet, and over 5,000 acres of unused central PSU land has been identified for a land bank. On 2 November, thousands joined a rally by around 20 tribal organisations at Manbazar in Purulia against proposed sponge-iron plants. Critics point to the state's high population density, small average landholdings of 0.77 hectares, debt of about ₹8 lakh crore and about ₹50,000 crore of unpaid industrial incentives.$n$,
  $n$Investors want land, while farmers and tribal communities have rights and a way of life tied to it. Balancing all these groups instead of serving only investors is what the stakeholder view card describes.$n$,
  $n$The Federal; also ThePrint$n$, $n$https://thefederal.com/category/states/east/west-bengal/bengals-new-industrial-land-policy-faces-test-over-tribal-rights-environmental-concerns-262137$n$, $n$ethics-13$n$, 'draft',
  $n$Bengal wants factories again, but in Purulia thousands have already marched to protect their land.$n$,
  $n$The new policy promises land pooling and no forced acquisition. Tribal groups and critics are asking hard questions about rights and money. The stakeholder view card explains why business must answer to more than investors.$n$, false, $n$2026-11-08T19:00:35+05:30$n$, 7),
($n$2026-11-09-muhurat-trading-samvat-2083$n$, '2026-11-09', $n$india$n$, $n$MARKETS$n$,
  $n$Sensex and Nifty end the Diwali Muhurat session slightly lower, snapping a seven-day rally as Samvat 2083 begins$n$,
  $n$In the special one-hour Muhurat trading session on Sunday evening that opened Samvat 2083, the Sensex slipped 28.62 points to 80,999.40 and the Nifty fell 43.95 points to 24,986.40, PTI reported. The dip ended a seven-session run in which the Sensex had climbed about 10.6%. Smaller companies did better, with far more stocks rising than falling, and Sun Pharma, Tata Steel and Maruti were among the gainers. Over the Hindu calendar year Samvat 2082, which ended on Friday, the Sensex fell about 4% and the Nifty about 3.2%.$n$,
  $n$Muhurat trading marks a new financial year in the traditional Indian calendar, when many traders open fresh account books, and markets judge performance year by year. Measuring results over fixed periods is the periodicity idea in the accounting concepts card.$n$,
  $n$Rediff (PTI); also Outlook Money$n$, $n$https://www.rediff.com/business/report/indian-stock-markets-see-marginal-dip-in-special-muhurat-trading-session/20261108.htm$n$, $n$acct-11$n$, 'draft',
  $n$On Diwali night the market opened a new year's books and closed almost flat after its best run in years.$n$,
  $n$Sunday's one-hour Muhurat session ended a seven-day rally with a tiny dip, while the old Samvat year closed about 4% lower. Traders count years from Diwali. The accounting concepts card explains why results are measured period by period.$n$, true, $n$2026-11-08T17:18:00+05:30$n$, 8),
($n$2026-11-09-nbfc-gold-loans-up-66$n$, '2026-11-09', $n$india$n$, $n$BANKING$n$,
  $n$Gold loans from NBFCs jump 66% to ₹3.74 lakh crore as high gold prices let borrowers raise more against jewellery$n$,
  $n$Gold loans given by non-bank lenders rose 66.1% from a year earlier to ₹3.74 trillion (₹3.74 lakh crore) in September, RBI data show, according to Business Standard. They now make up about 14% of NBFC retail loans, which grew 21.9% to ₹26.84 trillion, while total NBFC credit rose 15.4% to ₹61.7 trillion. High gold prices have lifted the value of jewellery pledged as collateral, letting borrowers take bigger loans. Experts flagged a risk: Piramal Finance's management said 15-23% of industry gold-loan disbursals went to borrowers already more than 90 days overdue on other loans, suggesting some may be refinancing old debt.$n$,
  $n$A lender looks at what the pledged gold would fetch if sold today, not what it cost years ago, so higher gold prices mean bigger loans. Choosing between historical cost and realisable value is what the measurement bases card explains.$n$,
  $n$Rediff (Business Standard)$n$, $n$https://www.rediff.com/business/report/nbfc-gold-loan-growth-surges-66-to-rs-374-trillion-raising-underwriting-concerns/20261108.htm$n$, $n$acct-21$n$, 'draft',
  $n$Your family's gold is worth more than ever, and India is borrowing against it at record speed.$n$,
  $n$Gold loans from NBFCs rose 66% in a year as high prices lifted the value of jewellery. Some lenders warn about who is borrowing. The measurement bases card explains why today's value matters to a lender.$n$, false, $n$2026-11-08T15:02:00+05:30$n$, 9),
($n$2026-11-09-iraq-us-hormuz-oil-exports$n$, '2026-11-09', $n$global$n$, $n$OIL$n$,
  $n$Iraq says it has reached 'understandings' with the US to ship oil through Hormuz using a lane near Oman$n$,
  $n$Iraq's Foreign Minister Fuad Hussein told Al Jazeera that Iraq has reached understandings with the United States allowing its crude to move through the Strait of Hormuz via a shipping lane close to Oman, Reuters reported. Hussein put Iraq's losses from the Iran war and export disruption at $60 billion. Iraqi energy officials say exports recovered to about 3.5 million barrels a day in October from 2.65 million in September. Iraq is one of OPEC's largest producers, so its barrels matter to global supply.$n$,
  $n$A safe route for Iraqi tankers lets more oil reach buyers at every price, which is a rightward shift in supply. What moves the supply curve, beyond price itself, is explained in the supply card.$n$,
  $n$gCaptain (Reuters)$n$, $n$https://gcaptain.com/iraq-has-reached-understandings-with-us-to-allow-oil-exports-through-hormuz$n$, $n$econ-08$n$, 'draft',
  $n$A narrow lane near Oman could decide how much of Iraq's oil reaches the world.$n$,
  $n$Iraq says it has a US understanding to send tankers through Hormuz on a route near Oman. Its exports already rose to about 3.5 million barrels a day in October. The supply card shows how such routes shift supply.$n$, false, $n$2026-11-09T04:00:33+05:30$n$, 10),
($n$2026-11-09-apollo-medical-tourism-insurance$n$, '2026-11-09', $n$recruiter$n$, $n$HEALTHCARE$n$,
  $n$Apollo's Sangita Reddy says medical tourism to India could surge if global insurers cover treatment here, in a market seen nearly doubling by 2030$n$,
  $n$Apollo Hospitals joint managing director Sangita Reddy said medical travel to India could rise sharply once global insurance companies actively encourage foreign patients to get treated in India, PTI reported from Bangkok. India's medical tourism market was about $8.7 billion in 2025 and is projected to reach $16.2 billion by 2030, according to figures cited in the report, against a projected $286.1 billion worldwide. Reddy said Apollo has asked the government to lead a delegation to work with insurers. Apollo carried out more than 4 million preventive health check-ups in 2025 and is rebuilding its hospital systems to be 'AI first'.$n$,
  $n$A market sized at $8.7 billion today and $16.2 billion by 2030 is an estimate of demand that companies use to plan beds, staff and partnerships. How such market numbers are built is what the market measurement card teaches.$n$,
  $n$Rediff Money (PTI)$n$, $n$https://money.rediff.com/news/market/india-medical-tourism-boom-insurance-ai-key-says-apollo/57737520261108$n$, $n$mkt-10$n$, 'draft',
  $n$India's medical tourism could nearly double to $16 billion, and Apollo says foreign insurers hold the key.$n$,
  $n$Patients already come to India for cheaper care, but their insurers rarely push them here. Apollo wants that to change. The market measurement card shows how such market sizes are estimated.$n$, false, $n$2026-11-08T12:30:00+05:30$n$, 11)
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
from news_stories where publish_date = '2026-11-09' group by lane order by lane;

-- Check: the day's running order
select rank, lane, headline, status, featured from news_stories where publish_date = '2026-11-09' order by rank;
