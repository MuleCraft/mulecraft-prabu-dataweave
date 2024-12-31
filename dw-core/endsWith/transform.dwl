%dw 2.0
output application/json
---
{
    "a": payload.a endsWith  "Form",
    "b": payload.b endsWith    "soft",
    "c": payload.c endsWith    "!",
    "d": payload.d endsWith    " ",
    "e": payload.e endsWith    "long sentence"
}
