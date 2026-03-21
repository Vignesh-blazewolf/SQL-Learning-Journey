-- Find top scorer
SELECT name FROM students ORDER BY marks DESC LIMIT 1;

-- Find second highest marks
SELECT DISTINCT marks FROM students
ORDER BY marks DESC
LIMIT 1 OFFSET 1;