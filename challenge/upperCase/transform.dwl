%dw 2.0
output application/json
fun uppercase(data)= data mapObject ((value, key, index) -> (upper(key)): if (value is Object) uppercase (value) else if (value is Array) (value) map ((item,index) -> if (item is Object) uppercase (item) else upper (item) ) else upper (value))
 
---
uppercase(payload)
