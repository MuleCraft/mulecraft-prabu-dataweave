%dw 2.0
output application/json
---
{
    "result": payload.a ++  payload.b
}
