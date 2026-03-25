-- Students without any subjects
SELECT s.name
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id
WHERE m.student_id IS NULL;

-- Total marks including students with no marks (NULL → 0)
SELECT s.name, COALESCE(SUM(m.marks), 0) AS total_marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id
GROUP BY s.name;