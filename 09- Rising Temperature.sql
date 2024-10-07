-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50

SELECT a.id
FROM Weather a, Weather b
WHERE datediff(a.recordDate, b.recordDate) = 1
AND a.temperature > b.temperature;
