-- 📅 Day 1: SQL SELECT Practice

-- Create Table
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT
);

-- Insert Data
INSERT INTO students VALUES
(1, 'Arun', 85),
(2, 'Vignesh', 90),
(3, 'Kumar', 70),
(4, 'Divya', 95),
(5, 'Sneha', 60);

-- Basic Queries

-- 1. View all students
SELECT * FROM students;

-- 2. Students scoring above 80
SELECT name, marks 
FROM students 
WHERE marks > 80;

-- 3. Count total students
SELECT COUNT(*) AS total_students 
FROM students;

-- 4. Students scoring below 75
SELECT name 
FROM students 
WHERE marks < 75;

-- 5. Display only names
SELECT name FROM students;