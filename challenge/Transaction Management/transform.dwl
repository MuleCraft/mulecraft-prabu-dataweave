%dw 2.0
output application/json
---
{
    "summary": {
        "totalTransactions": sizeOf(payload.transactions.transactionId),
        "totalAmount":  sum(payload.transactions.amount) , 
        "positiveTransactions": payload.transactions filter ((item, index) -> item.amount as Number contains  /^[0-9]*(.)[0-9]*$/   ),
        "negativeTransactions": payload.transactions filter ((item, index) ->item.amount as Number contains /^-[0-9]*(.)[0-9]*$/  )
    }
}


//* Requirements:
// * Calculate the total number of transactions
// * Sum the amounts of transactions to get the total amount
//* Identify positive and negative transactions based on amount
// * Structure the output to include categorized transactions
