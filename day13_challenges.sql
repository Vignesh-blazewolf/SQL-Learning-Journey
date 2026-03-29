-- Create composite index
CREATE INDEX idx_dept_salary
ON employees(department, salary);

-- Query using composite index
SELECT * FROM employees
WHERE department = 'IT' AND salary > 50000;