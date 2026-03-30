-- 📊 HR Database Analysis

-- 1. Employee with department name
SELECT e.name, d.dept_name, e.salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id;

-- 2. Average salary per department
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.dept_name;

-- 3. Department with highest average salary
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.dept_name
ORDER BY avg_salary DESC
LIMIT 1;

-- 4. Employees earning above company average
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 5. Departments with more than 2 employees
SELECT d.dept_name, COUNT(*) AS total
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.dept_name
HAVING COUNT(*) > 2;

-- 6. Highest paid employee in each department
SELECT d.dept_name, MAX(e.salary) AS highest_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.dept_name;