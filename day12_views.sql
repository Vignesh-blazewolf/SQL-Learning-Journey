-- 📅 Day 12: Views Practice

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

-- 🔍 Create Views

-- 1. View for high salary employees
CREATE VIEW high_salary_employees AS
SELECT name, department, salary
FROM employees
WHERE salary > 50000;

-- 2. View for department-wise average salary
CREATE VIEW dept_avg_salary AS
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 3. View for IT department employees
CREATE VIEW it_employees AS
SELECT name, salary
FROM employees
WHERE department = 'IT';

-- 📊 Using Views

-- Get high salary employees
SELECT * FROM high_salary_employees;

-- Get department averages
SELECT * FROM dept_avg_salary;

-- Get IT employees
SELECT * FROM it_employees;