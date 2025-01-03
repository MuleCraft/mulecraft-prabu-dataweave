%dw 2.0
output application/json
---
{
    "output1": payload.data1 minBy ((item) -> item.a ),
    "output2": payload.data2 minBy ((item) -> item.b ),
    "output3": payload.data3 minBy ((item) -> item.c ),
    "output4": payload.data4 minBy ((item) -> item.d ) 
}

