USE sql_store;
-- return all the products
-- name, unit_price, and new price (unit price * 1.1)

SELECT name, unit_price, unit_price * 1.1 AS 'new price'
FROM products