USE sql_store;

-- Get the cutomers
-- 	Located in Virginia
--    who have spent more than $100

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM customers c 
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE state = 'VA'

GROUP BY
	c.customer_id,
    c.first_name,
    c.last_name
HAVING total_sales > 100