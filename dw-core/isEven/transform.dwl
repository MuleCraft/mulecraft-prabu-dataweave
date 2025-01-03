%dw 2.0
output application/json
---
{
    "output1": isEven ((payload.a)/2),
    "output2": isEven (payload.b),
    "output3": isEven (payload.c),
    "output4": isEven (payload.d)
}
