// The horse's speed for a distance of 1 km in seconds (based on 50 km/h)
const HORSE_SPEED_SEC_PER_KM: u16 = 72;

// The horse's carrying capacity in grams
// 1 kg = 1000 grams
// For precision of 1000, we multiply by 1000: 50 kg * 1000 = 50000,000 grams
const HORSE_CAPACITY_GRAMS: u128 = 50_000_000;  // Using underscores for readability

// horses cost 10 000 wheat, for precision of 1000, we multipy by 1000: 10 000 * 1000 = 10 000 000
const RESOURCE_COST_AMOUNT: u128 = 10_000_000;
