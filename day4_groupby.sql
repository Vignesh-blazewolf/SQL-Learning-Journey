-- 📅 Day 4: GROUP BY Practice

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

-- 1. Count students in each city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;

-- 2. Average marks by city
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city;

-- 3. Maximum marks in each city
SELECT city, MAX(marks) AS highest_marks
FROM students
GROUP BY city;

-- 4. Minimum marks in each city
SELECT city, MIN(marks) AS lowest_marks
FROM students
GROUP BY city;

-- 5. Total marks by city
SELECT city, SUM(marks) AS total_marks
FROM students
GROUP BY city;

-- 6. Count students with marks > 70 in each city
SELECT city, COUNT(*) AS students_above_70
FROM students
WHERE marks > 70
GROUP BY city;