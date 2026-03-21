-- 📅 Day 3: ORDER BY & LIMIT Practice

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

-- 1. Sort students by marks (Ascending)
SELECT * FROM students
ORDER BY marks ASC;

-- 2. Sort students by marks (Descending)
SELECT * FROM students
ORDER BY marks DESC;

-- 3. Sort by city, then marks
SELECT * FROM students
ORDER BY city ASC, marks DESC;

-- 4. Top 3 highest scoring students
SELECT name, marks FROM students
ORDER BY marks DESC
LIMIT 3;

-- 5. Lowest 2 scoring students
SELECT name, marks FROM students
ORDER BY marks ASC
LIMIT 2;

-- 6. Sort names alphabetically
SELECT name FROM students
ORDER BY name ASC;

-- 7. Get 2nd and 3rd highest marks (advanced)
SELECT name, marks FROM students
ORDER BY marks DESC
LIMIT 2 OFFSET 1;