-- 📅 Day 13: Indexes Practice

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

-- 🔍 Without Index (Normal Query)
SELECT * FROM employees
WHERE department = 'IT';

-- 🚀 Create Index on department
CREATE INDEX idx_department
ON employees(department);

-- 🔍 Query after Index
SELECT * FROM employees
WHERE department = 'IT';

-- 📌 Create Index on salary
CREATE INDEX idx_salary
ON employees(salary);

-- 🔍 Query using salary filter
SELECT * FROM employees
WHERE salary > 50000;

-- ❌ Drop Index
DROP INDEX idx_department;