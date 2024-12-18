%dw 2.0
output application/json
---
payload mapObject ((value, key, index) ->  {
    "distinctProducts": value map ((item, index) -> item.product ) distinctBy ((item, index) -> item ),
    "totalSales": sum(value map ((item, index) -> item.price*item.quantity )),
    "salesByProduct": {
        "Laptop": sum(value filter ((item, index) -> item.product == "Laptop" ) map ((item, index) -> item.quantity )),
        "Phone": sum(value filter ((item, index) -> item.product == "Phone" ) map ((item, index) -> item.quantity )),
        "Tablet": sum(value filter ((item, index) -> item.product == "Tablet" ) map ((item, index) -> item.quantity ))
    },
    "sortedByQuantity": value map ((q, index) -> {
        "product": q.product,
        "quantity": sum(value filter ((item, index) -> item.product == q.product)map ((item, index) -> item.quantity ))
    }) distinctBy ((item, index) -> item.product ) orderBy ((item, index) -> item.quantity ) ,
    "totalProducts": sizeOf(value map ((item, index) -> item.product ) distinctBy ((item, index) -> item )),
    "daysSinceLastSale": daysBetween(max(value map ((item, index) -> item.date)) as Date, now() as Date ),
    "isSalesEmpty": isEmpty(sum(value map ((item, index) -> item.price*item.quantity )))
})
