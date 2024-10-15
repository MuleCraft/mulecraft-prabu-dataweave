%dw 2.0
output application/json
---
payload.a filter (value) -> (value > 20)
