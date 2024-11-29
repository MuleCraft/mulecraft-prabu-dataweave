%dw 2.0
output application/json

---
(payload splitBy "\n"   [ -1 to 0 ])  map ((item, index) -> (item splitBy  " ")[-1 to 0] joinBy  " " )


