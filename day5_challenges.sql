-- Cities with more than 1 student and avg marks > 75
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city
HAVING COUNT(*) > 1 AND AVG(marks) > 75;

-- Find city with highest total marks
SELECT city, SUM(marks) AS total
FROM students
GROUP BY city
ORDER BY total DESC
LIMIT 1;