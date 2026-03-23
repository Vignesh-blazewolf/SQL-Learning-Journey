-- 📅 Day 5: HAVING Clause Practice

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
(6, 'Rahul', 75, 'Chennai'),
(7, 'Anu', 88, 'Coimbatore');

-- 🔍 Practice Queries

-- 1. Cities having more than 2 students
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) > 2;

-- 2. Cities with average marks greater than 80
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city
HAVING AVG(marks) > 80;

-- 3. Cities where total marks exceed 200
SELECT city, SUM(marks) AS total_marks
FROM students
GROUP BY city
HAVING SUM(marks) > 200;

-- 4. Cities where highest marks > 90
SELECT city, MAX(marks) AS highest_marks
FROM students
GROUP BY city
HAVING MAX(marks) > 90;

-- 5. Cities where lowest marks < 65
SELECT city, MIN(marks) AS lowest_marks
FROM students
GROUP BY city
HAVING MIN(marks) < 65;