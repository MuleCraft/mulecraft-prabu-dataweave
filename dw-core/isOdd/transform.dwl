%dw 2.0
output application/json
---
{
    "output1": isOdd ((payload.a)/2),
    "output2": isOdd (payload.b),
    "output3": isOdd (payload.c),
    "output4": isOdd (payload.d)
}
