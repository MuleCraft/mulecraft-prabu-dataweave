%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.productId ) mapObject ((value, key, index) -> {
    "productId": key,
    "productName": value.productName[0],
    "totalRevenue": value map ((item, index) -> item.pricePerUnit * item.quantitySold ) reduce ((item, accumulator) -> item+ accumulator )
} )
