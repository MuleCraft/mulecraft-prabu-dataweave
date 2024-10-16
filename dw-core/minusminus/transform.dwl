%dw 2.0
output application/json
---
{
    "a": payload.a -- [1,2],
    "b": payload.b -- {"hello": "world"},
    "c": payload.c -- ["yes", "old"]
}
