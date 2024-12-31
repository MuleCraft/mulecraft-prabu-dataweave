%dw 2.0
output application/json
---
{
    "a": payload.a contains  (4),
    "b": payload.b contains  "Mule",
    "c": payload.c contains  "me",
    "d": payload.d contains  /[a-z]/,
    "e": payload.e contains  /[s[t|p]ring]/
}
