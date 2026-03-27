-- Employees with salary above department average
SELECT name, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

-- Department with lowest total salary
SELECT department
FROM employees
GROUP BY department
ORDER BY SUM(salary)
LIMIT 1;