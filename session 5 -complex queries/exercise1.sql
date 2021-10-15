USE sql_hr;

-- Find employees who earn more than the average

SELECT 
	first_name,
    last_name,
    salary
FROM employees
WHERE salary > (
	SELECT AVG(salary)
    FROM employees
    )

