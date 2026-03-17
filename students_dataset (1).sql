-- Students Dataset for SQL Practice

CREATE DATABASE IF NOT EXISTS StudentDB;
USE StudentDB;

CREATE TABLE IF NOT EXISTS Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    marks INT
);

-- Sample Dataset
INSERT INTO Students (student_id, name, age, department, marks) VALUES
(1, 'Arun', 20, 'Computer Science', 85),
(2, 'Priya', 21, 'Mathematics', 90),
(3, 'Rahul', 19, 'Physics', 78),
(4, 'Sneha', 22, 'Computer Science', 88),
(5, 'Karthik', 20, 'Mathematics', 76),
(6, 'Divya', 21, 'Physics', 82),
(7, 'Vijay', 20, 'Computer Science', 91),
(8, 'Meena', 19, 'Mathematics', 73),
(9, 'Suresh', 22, 'Physics', 80),
(10, 'Anitha', 20, 'Computer Science', 87);
