-- https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50


select max(salary) as SecondHighestSalary
from Employee
where salary < (select max(salary) from Employee)
