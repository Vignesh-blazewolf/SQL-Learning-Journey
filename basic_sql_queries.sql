-- BASIC SQL PRACTICE FILE
-- Database: StudentDB

-- Create Database
CREATE DATABASE StudentDB;
USE StudentDB;

-- Create Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    marks INT
);

-- Insert Data
INSERT INTO Students VALUES
(1, 'Arun', 20, 'Computer Science', 85),
(2, 'Priya', 21, 'Mathematics', 90),
(3, 'Rahul', 19, 'Physics', 78),
(4, 'Sneha', 22, 'Computer Science', 88),
(5, 'Karthik', 20, 'Mathematics', 76);

-- View All Records
SELECT * FROM Students;

-- Select Specific Columns
SELECT name, marks FROM Students;

-- WHERE Clause
SELECT * FROM Students
WHERE marks > 80;

-- AND Condition
SELECT * FROM Students
WHERE department = 'Computer Science' AND marks > 80;

-- OR Condition
SELECT * FROM Students
WHERE department = 'Physics' OR department = 'Mathematics';

-- ORDER BY
SELECT * FROM Students
ORDER BY marks DESC;

-- COUNT Function
SELECT COUNT(*) AS Total_Students
FROM Students;

-- GROUP BY
SELECT department, AVG(marks) AS Average_Marks
FROM Students
GROUP BY department;

-- UPDATE Data
UPDATE Students
SET marks = 92
WHERE student_id = 2;

-- DELETE Data
DELETE FROM Students
WHERE student_id = 5;

-- LIMIT (Top records)
SELECT * FROM Students
LIMIT 3;
