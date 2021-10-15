USE sql_store;
 --  USING Clause, use when the column names is exactely the same accross tables
SELECT 
	o.order_id,
    c.customer_id,
    sh.name As shipper
FROM orders o
JOIN customers c 
	-- ON o.customer_id = c.customer_id
	USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id);
    
-- using composite PK

SELECT *
FROM order_items oi
JOIN order_item_notes oin
	-- ON  oi.order_id = oin.order_id
    -- AND oi.product_id = oin.product_id
    USING (order_id, product_id);
    
-- Natureal Join
SELECT
	o.order_id,
    c.first_name
FROM orders o 
NATURAL JOIN customers c;

-- CROSS JOIN

SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c 
CROSS JOIN products p 
ORDER BY c.first_name;

-- Implicit Syntax

SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c, products p
ORDER BY c.first_name 
    
    