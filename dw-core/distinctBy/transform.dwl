%dw 2.0
output application/json
---
(payload distinctBy ((item, index) -> item.orderId)) groupBy ((item, index) -> item.customerId) mapObject ((value, key, index) -> { 
    "customerId": key,
    "totalOrderAmount": sum (value.orderAmount),
    "orders": value map ((item, index) -> 
    {
        "orderId": item.orderId,
        "product": item.product,
        "orderAmount": item.orderAmount
    }
    )
   
}
)
