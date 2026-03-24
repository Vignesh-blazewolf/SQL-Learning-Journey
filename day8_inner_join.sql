-- 📅 Day 8: INNER JOIN Practice

-- Create Students Table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Create Marks Table
CREATE TABLE marks (
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

-- Insert Data into students
INSERT INTO students VALUES
(1, 'Arun', 'Chennai'),
(2, 'Vignesh', 'Madurai'),
(3, 'Kumar', 'Chennai'),
(4, 'Divya', 'Coimbatore');

-- Insert Data into marks
INSERT INTO marks VALUES
(1, 'Maths', 85),
(1, 'Science', 90),
(2, 'Maths', 88),
(3, 'Science', 70),
(4, 'Maths', 95);

-- 🔍 Practice Queries

-- 1. Join students with their marks
SELECT s.name, m.subject, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id;

-- 2. Students with marks above 85
SELECT s.name, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id
WHERE m.marks > 85;

-- 3. Average marks per student
SELECT s.name, AVG(m.marks) AS avg_marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id
GROUP BY s.name;

-- 4. Top scoring student
SELECT s.name, SUM(m.marks) AS total_marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id
GROUP BY s.name
ORDER BY total_marks DESC
LIMIT 1;