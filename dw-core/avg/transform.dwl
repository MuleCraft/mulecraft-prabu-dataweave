%dw 2.0
output application/json
---
{
    "a": avg(payload.a),
    "b": avg(payload.b)
}
