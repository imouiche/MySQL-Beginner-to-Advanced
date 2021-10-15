USE sql_hr;

-- 'Corelared subqueries' -> here ethe subquery will execute for each row of the main query

-- Select employees whose salary is above the average in their office

-- Pseudo code
-- For each employee, calculate the avg salary for employee.office
-- return the employee if salary > avg

SELECT *
FROM employees e
WHERE salary > (
		SELECT AVG(salary)
        FROM employees 
        WHERE office_id = e.office_id
)