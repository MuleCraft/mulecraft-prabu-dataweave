%dw 2.0
output application/json
---
{
    "output1": typeOf (payload.a),
    "output2": typeOf (payload.b),
    "output3": typeOf (payload.c),
    "output4": typeOf (payload.d),
    "output5": typeOf (payload.e)
} 


