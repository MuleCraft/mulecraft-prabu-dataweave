%dw 2.0
output application/json
---
payload map ((item, index) -> {
    "feedbackId": item.feedbackId,
    "customerId": item.customerId,
    "numberOfRatings": sizeOf(item.ratings),
    "averageRating": avg(item.ratings)
})
