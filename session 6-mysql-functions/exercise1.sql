USE sql_store;

-- returns orders placed in the current year

SELECT *
FROM orders
WHERE YEAR(order_date) = YEAR(NOW());