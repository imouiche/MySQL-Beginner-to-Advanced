USE sql_store;

-- get the customers whose first name are ELKA or AMBUR

SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR'; 

-- last names end with EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$'; 

-- last names start with MY or constains SE
SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE'; 

-- last names contain B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';