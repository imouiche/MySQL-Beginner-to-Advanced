USE sql_store;

-- get the orders that are not shipped

SELECT *
FROM orders
WHERE shipper_id IS NULL;

-- ORDER BY
-- get all orders with id = 2 and sort them by total price in desc

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;

-- LIMIT Clause which should always come at the end.
-- get the top 3 loyal customer
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3


