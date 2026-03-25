-- 📅 Day 9: LEFT JOIN Practice

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
(4, 'Divya', 'Coimbatore'),
(5, 'Sneha', 'Madurai'); -- No marks

-- Insert Data into marks
INSERT INTO marks VALUES
(1, 'Maths', 85),
(2, 'Science', 90),
(3, 'Maths', 70),
(4, 'Science', 95);

-- 🔍 Practice Queries

-- 1. LEFT JOIN all students with marks
SELECT s.name, m.subject, m.marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id;

-- 2. Find students with NO marks
SELECT s.name
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id
WHERE m.student_id IS NULL;

-- 3. Count subjects per student (including no marks)
SELECT s.name, COUNT(m.subject) AS total_subjects
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id
GROUP BY s.name;

-- 4. Average marks (ignore NULL automatically)
SELECT s.name, AVG(m.marks) AS avg_marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id
GROUP BY s.name;

-- 5. Students with marks below 80 OR no marks
SELECT s.name, m.marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id
WHERE m.marks < 80 OR m.marks IS NULL;