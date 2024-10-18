%dw 2.0
output application/json
var myObject = {
    str1 : "String 1",
    str2 : "String 2",
    str3 : null,
    str4 : "String 4",
    str5 : null,
    str6 : "String 6"
}
---
{
    "output1": payload.a filterObject ((value) -> value== "apple" ),
    "output2": payload.b filterObject ((value, key, index) -> key startsWith  "letter" ),
    "output3": payload.c filterObject ((value, key, index) -> index< 3),
    "output4": myObject filterObject $ != null
}
