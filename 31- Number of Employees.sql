-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50



SELECT 
    e.employee_id, 
    e.name, 
    COUNT(e2.employee_id) AS reports_count, 
    ROUND(AVG(e2.age)) AS average_age
FROM 
    Employees e
LEFT JOIN 
    Employees e2 ON e.employee_id = e2.reports_to
WHERE 
    e.employee_id IN (SELECT DISTINCT reports_to FROM Employees WHERE reports_to IS NOT NULL)
GROUP BY 
    e.employee_id, e.name
ORDER BY 
    e.employee_id;
