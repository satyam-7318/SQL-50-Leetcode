-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50

SELECT person_name FROM Queue q1 WHERE 1000 >= ( SELECT SUM(weight) FROM Queue q2 WHERE q2.turn <= q1.turn )ORDER BY turn DESC LIMIT 1;
