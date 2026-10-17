import { BuyingBehaviour } from "./BuyingBehaviour";
import { FiveForces } from "./FiveForces";
import { PriceElasticity } from "./PriceElasticity";

// Which picture goes with which card. Cards without one simply show no picture.
export const DIAGRAMS: Record<string, () => React.ReactElement> = {
  "econ-03": PriceElasticity,
  "mkt-06": FiveForces,
  "mkt-07": BuyingBehaviour,
};
