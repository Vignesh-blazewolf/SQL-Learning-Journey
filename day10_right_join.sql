-- 📅 Day 10: RIGHT JOIN Practice

-- Create Students Table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Marks Table
CREATE TABLE marks (
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

-- Insert Data into students
INSERT INTO students VALUES
(1, 'Arun'),
(2, 'Vignesh'),
(3, 'Kumar');

-- Insert Data into marks
INSERT INTO marks VALUES
(1, 'Maths', 85),
(2, 'Science', 90),
(4, 'Maths', 75); -- No matching student

-- 🔍 Practice Queries

-- 1. RIGHT JOIN all marks with students
SELECT s.name, m.subject, m.marks
FROM students s
RIGHT JOIN marks m
ON s.id = m.student_id;

-- 2. Find marks with no matching student
SELECT m.student_id, m.marks
FROM students s
RIGHT JOIN marks m
ON s.id = m.student_id
WHERE s.id IS NULL;

-- 3. Count marks per student (including unmatched)
SELECT m.student_id, COUNT(m.subject) AS total_subjects
FROM students s
RIGHT JOIN marks m
ON s.id = m.student_id
GROUP BY m.student_id;

-- 4. Average marks including unmatched students
SELECT m.student_id, AVG(m.marks) AS avg_marks
FROM students s
RIGHT JOIN marks m
ON s.id = m.student_id
GROUP BY m.student_id;