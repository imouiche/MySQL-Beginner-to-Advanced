USE sql_store;

-- get the customers whose addresses contain TRAIL or AVENUE

SELECT *
FROM customers
WHERE address LIKE '%trail%' OR 
address LIKE '%avenue%';

-- whose phone numbers end with 9
SELECT *
FROM customers
WHERE phone LIKE '%9';

-- REGEXP --> regular expression
--  use ^ indicate the begining and $ to indicate the end

SELECT *
FROM customers
-- WHERE last_name REGEXP 'field|mac|rose'
WHERE last_name REGEXP '[gim]e'
