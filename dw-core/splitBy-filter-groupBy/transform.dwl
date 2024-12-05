%dw 2.0
output application/json
---
(payload splitBy  "\n" ) map ((item, index) -> 
{
    "timeStamp": (item splitBy  "|") [0],
    "logLevel": (item  splitBy  "|")[1],
    "sourceFile": (item  splitBy  "|")[2],
    "lineNumber":(item  splitBy  "|")[3],
    "message":(item  splitBy  "|")[4]
} ) filter ((item, index) -> item.logLevel == "ERROR" ) groupBy ((item, index) -> item.sourceFile )   
