-- 📅 Day 2: WHERE Clause & Operators Practice

-- Create Table
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

-- Insert Data
INSERT INTO students VALUES
(1, 'Arun', 85, 'Chennai'),
(2, 'Vignesh', 90, 'Madurai'),
(3, 'Kumar', 70, 'Chennai'),
(4, 'Divya', 95, 'Coimbatore'),
(5, 'Sneha', 60, 'Madurai'),
(6, 'Rahul', 75, 'Chennai');

-- 🔍 Practice Queries

-- 1. Students with marks greater than 80
SELECT * FROM students
WHERE marks > 80;

-- 2. Students from Chennai
SELECT name FROM students
WHERE city = 'Chennai';

-- 3. Students with marks between 70 and 90
SELECT name, marks FROM students
WHERE marks BETWEEN 70 AND 90;

-- 4. Students from Chennai AND marks > 80
SELECT name FROM students
WHERE city = 'Chennai' AND marks > 80;

-- 5. Students from Madurai OR marks < 70
SELECT name FROM students
WHERE city = 'Madurai' OR marks < 70;

-- 6. Students NOT from Chennai
SELECT name FROM students
WHERE NOT city = 'Chennai';

-- 7. Students from Chennai or Coimbatore
SELECT name FROM students
WHERE city IN ('Chennai', 'Coimbatore');