%dw 2.0
output application/json
---
(payload orderBy ((item, index) -> item.department ) groupBy ((item, index) -> item.department ) ) mapObject ((value, key, index) -> {
    "department": key,
    "employeeDetails": (value map ((item, index) -> item ) orderBy ((item, index) -> item.salary ) )[-1 to 0]

} )
