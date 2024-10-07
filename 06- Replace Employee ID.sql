-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

select unique_id ,name
from employees as emp
left join employeeUNI as uni
on uni.id = emp.id
