USE sql_store;

SELECT *
from customers
WHERE points BETWEEN 1000 and 2000;
-- (points > 1000 and state = 'VA')
-- ORDER BY first_name

SELECT *
from customers
-- WHERE last_name LIKE 'b%'; -- lastname start with 
 -- use % any number of charaters
 -- use _ single character
 
 -- Using REGEXP --> use ^ indicate the begining and $ to indicate the end, | logial or, [abcd] match character and [a-h]
 
 WHERE last_name REGEXP '[a-h]e';
 
 SELECT *
 FROM customers
 WHERE phone IS NOT NULL;
 
 -- ORDER BY
 
  SELECT *
 FROM customers
 ORDER BY state DESC, firt_name;
 
 -- LIMIT CLAUSE
 
SELECT *
FROM customers
LIMIT 6, 3