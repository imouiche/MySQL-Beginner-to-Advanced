USE sql_store;

SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Join from different databases

SELECT *
FROM order_items oi
JOIN sql_inventory.products p 
	ON oi.product_id = p.product_id

