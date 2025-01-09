%dw 2.0
output application/json

/* Requirements:
 * Use maxBy to find the symbol with the highest volume
 * Use maxBy to find the symbol with the highest price
 * Calculate the average price of all equities
 * Use isEven to filter symbols with even volumes
 * Use isOdd to filter symbols with odd volumes
 *
 * Expected Output:
 * {
 *   "highestVolumeSymbol": "MSFT",
 *   "highestPriceSymbol": "GOOGL",
 *   "averagePrice": 1166.83,
 *   "evenVolumeSymbols": [
 *     "AAPL",
 *     "MSFT"
 *   ],
 *   "oddVolumeSymbols": [
 *     "GOOGL"
 *   ]
 * }
 */
---
{
    "highestVolumeSymbol": (payload.equities maxBy ((item) -> item.volume)).symbol,
    "highestPriceSymbol": (payload.equities maxBy ((item) -> item.price)).symbol,
    "averagePrice": avg(payload.equities.price),
    "evenVolumeSymbols": payload.equities filter ((item, index) -> isEven(item.volume)) map ((item, index) -> item.symbol ),
    "oddVolumeSymbols": payload.equities filter ((item, index) -> isOdd(item.volume)) map ((item, index) -> item.symbol )
}





