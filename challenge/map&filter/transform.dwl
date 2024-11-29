%dw 2.0
output application/json

---
payload map ((pay) -> 
{
    "EmpName": pay.name,
    "BossId" : ((payload filter ((boss) -> boss.ID == pay.bossID)).name)joinBy  ""
})
