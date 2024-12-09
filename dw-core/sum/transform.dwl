%dw 2.0
output application/json
---
 {
     "output1": sum (payload.a ),
     "output2": sum(payload.b map ((item, index) -> item  default 0 )),
     "output3": sum (payload.c)
 } 
