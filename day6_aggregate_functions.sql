-- 📅 Day 6: Aggregate Functions Practice

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

-- 1. Total number of employees
SELECT COUNT(*) AS total_employees FROM employees;

-- 2. Total salary expense
SELECT SUM(salary) AS total_salary FROM employees;

-- 3. Average salary
SELECT AVG(salary) AS avg_salary FROM employees;

-- 4. Highest salary
SELECT MAX(salary) AS highest_salary FROM employees;

-- 5. Lowest salary
SELECT MIN(salary) AS lowest_salary FROM employees;

-- 6. Employees count by department
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department;

-- 7. Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 8. Departments with avg salary > 50000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- 9. Total salary by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 10. Departments with more than 2 employees
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;