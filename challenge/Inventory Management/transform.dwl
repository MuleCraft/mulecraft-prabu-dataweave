%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
    "groupedCategory": value groupBy ((item, index) -> item.category ),
    "isInventoryEmpty": isEmpty(payload.inventory),
    "totalItems": sum(value map ((item, index) -> item.stock ))
} )
