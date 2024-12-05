%dw 2.0
output application/json
---
(payload splitBy  ";" ) map ((item, index) -> 
  {
       name: (item splitBy  "," ) [0],
       age: (item splitBy ",") [1],
       department: (item splitBy  ",")[2]
  }
   )  
