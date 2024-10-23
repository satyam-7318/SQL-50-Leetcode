-- https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

select employee_id, department_id
from Employee
where primary_flag = 'Y' or employee_id in (
select employee_id from employee group by employee_id having count(department_id) = 1)
