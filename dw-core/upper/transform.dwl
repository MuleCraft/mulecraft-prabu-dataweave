%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
    (upper(key)):  if (value is Array ) value map ((item, index) -> (upper(item)) ) else if  (value is Object) value mapObject ((value,key,index)-> {
        (upper(key)): (upper(value))
    }) else (upper(value))
} )  


