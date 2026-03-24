-- Students who scored in both subjects
SELECT s.name
FROM students s
INNER JOIN marks m
ON s.id = m.student_id
GROUP BY s.name
HAVING COUNT(m.subject) > 1;

-- Subject-wise highest marks
SELECT subject, MAX(marks) AS highest
FROM marks
GROUP BY subject;