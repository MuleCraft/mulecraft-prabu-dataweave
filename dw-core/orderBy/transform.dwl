%dw 2.0
output application/json
---
payload orderBy ((item, index) ->  item.department) groupBy ((item, index) -> item.department ) mapObject ((value, key, index) -> (key): (value map ((item, index) -> {
    "name": item.name,
    "salary": item.salary,
    "joiningDate": item.joiningDate
} )orderBy ((item, index) -> item.salary ))[-1 to 0] ) 

