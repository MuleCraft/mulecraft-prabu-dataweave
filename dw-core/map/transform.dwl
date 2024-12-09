%dw 2.0
output application/json
---
payload map ((item, index) -> {
    "orderId": item.orderId,
    "customerId": item.customerId,
    "productName": item.productName,
    "totalQuantity": if (item.productName == "Laptop") item.quantity *0.9 else item.quantity
} )



//Requirements:
///Apply a discount: If the productName is "Laptop", reduce the quantity by 10%.

///Format the data: Create a totalQuantity field which shows the updated quantity.

///Return the transformed list: Include orderId, customerId, productName, and totalQuantity
