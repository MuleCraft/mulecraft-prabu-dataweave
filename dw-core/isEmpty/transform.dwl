%dw 2.0
output application/json
---
 {
     "output1": isEmpty ((payload.a)[4]),
     "output2": (!isEmpty ((payload.a)[4])),
     "output3": [ isEmpty(""), isEmpty("dataweave") ],
     "output4": [ (!isEmpty({})), isEmpty({name: "functions"}) ]
 }
