-- Department with highest total salary
SELECT department, SUM(salary) AS total
FROM employees
GROUP BY department
ORDER BY total DESC
LIMIT 1;

-- Employee with second highest salary
SELECT name, salary FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- Count employees earning above average salary
SELECT COUNT(*) 
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);