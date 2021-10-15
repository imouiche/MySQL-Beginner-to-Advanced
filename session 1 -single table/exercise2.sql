-- Get the order place this year
USE sql_store;


SELECT *
FROM orders
WHERE order_date >= '2019-01-01'