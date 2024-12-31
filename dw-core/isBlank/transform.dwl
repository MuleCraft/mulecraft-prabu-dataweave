%dw 2.0
output  application/json

---
{

  "emptyString" : isBlank(""),
  "stringWithSpaces" : isBlank("      "),
  "textString" : isBlank(payload.a),
  "somePayloadValue" : isBlank(payload.c),
  "nullString" : isBlank(payload.b),


  "notEmptyTextString" : not isBlank(" 1234"),
  "notEmptyTextStringTwo" : ! isBlank("")
}
