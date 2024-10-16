%dw 2.0
output application/json
---
{
    "output 1": payload.a contains(2),
    "output2": payload.b contains(64)
}
