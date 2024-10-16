%dw 2.0
output application/json
---
{
    "output": payload.a / payload.b
}
