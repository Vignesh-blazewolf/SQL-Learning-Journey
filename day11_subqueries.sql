-- 📅 Day 11: Subqueries Practice

-- Create Table
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert Data
INSERT INTO employees VALUES
(1, 'Arun', 'IT', 50000),
(2, 'Vignesh', 'HR', 40000),
(3, 'Kumar', 'IT', 60000),
(4, 'Divya', 'Finance', 55000),
(5, 'Sneha', 'HR', 45000),
(6, 'Rahul', 'IT', 70000),
(7, 'Anu', 'Finance', 65000);

-- 🔍 Practice Queries

-- 1. Employees earning above average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 2. Employee with highest salary
SELECT name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- 3. Employees in department with highest average salary
SELECT name, department
FROM employees
WHERE department = (
    SELECT department
    FROM employees
    GROUP BY department
    ORDER BY AVG(salary) DESC
    LIMIT 1
);

-- 4. Second highest salary
SELECT MAX(salary) AS second_highest
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- 5. Employees earning less than department average
SELECT name, salary, department
FROM employees e
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);