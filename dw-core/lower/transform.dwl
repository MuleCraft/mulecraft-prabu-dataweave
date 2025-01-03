%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
    (lower(key)):  if (value is Array ) value map ((item, index) -> (lower(item)) ) else if  (value is Object) value mapObject ((value,key,index)-> {
        (lower(key)): (lower(value))
    }) else (lower(value))
} )  


