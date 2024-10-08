-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50


SELECT e.name
FROM Employee e
JOIN Employee sub ON e.id = sub.managerId
GROUP BY e.id, e.name
HAVING COUNT(sub.id) >= 5;
