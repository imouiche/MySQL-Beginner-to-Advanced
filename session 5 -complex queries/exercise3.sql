USE sql_store;

-- Find customers who have ordered lettuce (id=3 = product_id)

SELECT 
	customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
	SELECT o.customer_id
    FROM order_items oi
    JOIN orders o USING (order_id)
    WHERE product_id = 3
);

-- using JOIN clause

SELECT DISTINCT
	c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3