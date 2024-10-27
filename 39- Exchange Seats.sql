-- https://leetcode.com/problems/exchange-seats/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below
select a.id,
       case 
        when mod(id,2)=0 then lag(a.student) over (order by a.id)
        else ifnull(lead(a.student) over (order by a.id),a.student) end as student
  from Seat a;
