import { ABCAnalysis, EOQ, IncentivePlans, InventoryTurnover, LabourTurnover, StockLevels, StockValuation } from "./acct";
import { BuyingBehaviour } from "./BuyingBehaviour";
import {
  CrossElasticity,
  DiminishingUtility,
  Equilibrium,
  IncomeElasticity,
  IndifferenceCurves,
  LawOfDemand,
  LawOfSupply,
  MovementVsShift,
  OpportunityCost,
  PPF,
} from "./econ";
import { FiveForces } from "./FiveForces";
import {
  CustomerValue,
  DarkPatterns,
  DecisionJourney,
  LifetimeValue,
  MarketingEnvironment,
  MarketSizing,
  NeedsWantsDemands,
  Orientations,
  ResearchSteps,
  TotalCostB2B,
} from "./mkt";
import { PriceElasticity } from "./PriceElasticity";

// Which picture goes with which card. Cards without one simply show no picture.
export const DIAGRAMS: Record<string, () => React.ReactElement> = {
  "econ-01": LawOfDemand,
  "econ-02": MovementVsShift,
  "econ-03": PriceElasticity,
  "econ-04": IncomeElasticity,
  "econ-05": CrossElasticity,
  "econ-06": OpportunityCost,
  "econ-07": PPF,
  "econ-08": LawOfSupply,
  "econ-09": Equilibrium,
  "econ-10": DiminishingUtility,
  "econ-11": IndifferenceCurves,
  "mkt-01": NeedsWantsDemands,
  "mkt-02": CustomerValue,
  "mkt-03": LifetimeValue,
  "mkt-04": Orientations,
  "mkt-05": MarketingEnvironment,
  "mkt-06": FiveForces,
  "mkt-07": BuyingBehaviour,
  "mkt-08": DecisionJourney,
  "mkt-09": TotalCostB2B,
  "mkt-10": MarketSizing,
  "mkt-11": ResearchSteps,
  "mkt-12": DarkPatterns,
  "acct-01": StockLevels,
  "acct-02": EOQ,
  "acct-03": StockValuation,
  "acct-04": ABCAnalysis,
  "acct-05": InventoryTurnover,
  "acct-06": IncentivePlans,
  "acct-07": LabourTurnover,
};
