USE sql_store;
-- LTRIM, RTRIN, UPPPER, LOWER, SUBSTRING, CANCAT, 
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers;

SELECT NOW(), CURDATE(), CURTIME();
SELECT YEAR(NOW()), DAYNAME(NOW());
SELECT EXTRACT(YEAR FROM NOW());


-- Formatting Dates and Times
SELECT DATE_FORMAT(NOW(), '%M %D %y');
SELECT TIME_FORMAT(NOW(), '%H:%i %p');

-- Calculate Dates and Times
SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR);
SELECT DATEDIFF('2019-01-05 09:00', '2019-01-01')
