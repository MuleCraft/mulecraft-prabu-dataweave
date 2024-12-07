%dw 2.0
output application/json
---
payload filter ((item, index) -> item.attendance > 75 and item.marks != [] ) map ((item, index) -> {
    "name": item.name,
    "marks": item.marks map ((marks) -> marks  default 0 ),
    "attendance": item.attendance,
    "average": avg (item.marks map ((marks) -> marks  default 0 )) 
     
    
 } )


//Logic::

//Calculate the average marks for each student.

//Exclude students with attendance less than 75%.

//Replace null values in the marks array with 0 

//heck if the marks array is empty for any student if empty then skip it)

//output::

// [
//   {
//    "name": "Alice",
//    "marks": [85, 90, 0],
//    "attendance": 80,
//    "averageMarks": 58.33
//   }
// ]
