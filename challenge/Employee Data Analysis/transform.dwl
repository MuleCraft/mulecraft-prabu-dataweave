%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
    "distinctEmployees": value map ((item, index) -> {
        "id": item.id,
        "name": item.name,
        "Salary": item.salary
    } ) distinctBy ((item, index) -> item.name ),
    "flattenSalaries": value map ((item, index) -> item.salary ),
    "totalSalaries": sum(value map ((item, index) -> item.salary ))
} )
