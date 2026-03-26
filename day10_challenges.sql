-- Find all unmatched records from both tables (simulate FULL JOIN)
SELECT s.id, m.student_id
FROM students s
LEFT JOIN marks m ON s.id = m.student_id

UNION

SELECT s.id, m.student_id
FROM students s
RIGHT JOIN marks m ON s.id = m.student_id;