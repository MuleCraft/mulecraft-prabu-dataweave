%dw 2.0
output application/json
---
{
    "output1": payload.a find  "Bond",
    "output2": payload.b find  /ea/,
    "output3": payload.c find  "c"
}
