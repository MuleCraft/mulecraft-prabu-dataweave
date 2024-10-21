%dw 2.0
output application/json
---
{
    "result1": ( payload.a > payload.b ) and (payload.b > payload.a),
    "result2": payload.c filter (value, index) -> (value >= 60),
    "result3": (payload.e filter $$ == 4) == (payload.f filter $$ == 0),
    "result4": payload.a != payload.g,
    "result5": (payload.d filter (value, index) -> index== 7) ~= (payload.c filter (value, index)-> index==3),
    "result6": (payload.b > payload.g) or (payload.a < payload.g )

}
