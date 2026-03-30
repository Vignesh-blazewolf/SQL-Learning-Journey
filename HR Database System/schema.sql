-- Employees Table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary INT
);

-- Departments Table
CREATE TABLE departments (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);