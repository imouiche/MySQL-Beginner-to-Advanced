USE sql_store;

-- create a copy of a table
-- CREATE TABLE orders_archived AS
-- SELECT * FROM orders;

-- subquery for insertion

INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01'