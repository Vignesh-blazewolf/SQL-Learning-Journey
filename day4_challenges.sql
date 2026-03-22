-- City with highest average marks
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city
ORDER BY avg_marks DESC
LIMIT 1;

-- City with most students
SELECT city, COUNT(*) AS total
FROM students
GROUP BY city
ORDER BY total DESC
LIMIT 1;