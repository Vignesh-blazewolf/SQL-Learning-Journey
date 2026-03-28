-- Update a view (if supported)
CREATE OR REPLACE VIEW high_salary_employees AS
SELECT name, salary
FROM employees
WHERE salary > 60000;

-- Drop a view
DROP VIEW it_employees;