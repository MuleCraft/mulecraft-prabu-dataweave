%dw 2.0
output application/json
---
{
    "output1": payload.data1 maxBy ((item) -> item.a ),
    "output2": payload.data2 maxBy ((item) -> item.b ),
    "output3": payload.data3 maxBy ((item) -> item.c ),
    "output4": payload.data4 maxBy ((item) -> item.d )
}
