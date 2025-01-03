%dw 2.0
output application/json
---
{
    "output1": isDecimal (payload.a/5),
    "output2": isDecimal(payload.b),
    "output3": isDecimal (payload.c),
    "output4": isDecimal (payload.d)
}
