%dw 2.0
output application/json
---
{
    "output1": payload.a indexOf  "c",
    "output2": payload.b indexOf  "c",
    "output3": payload.c indexOf  "p",
    "output4": payload.d indexOf  "d",
    "output5": payload.e indexOf  "t"
}

