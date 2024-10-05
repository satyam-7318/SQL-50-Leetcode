/*

https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50

*/


# Write your MySQL query statement below
select name from Customer where referee_id IS NULL or referee_id!=2;
