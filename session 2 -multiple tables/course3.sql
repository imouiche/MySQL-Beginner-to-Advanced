USE sql_store;

SELECT 
o.order_id, 
o.order_date,
c.first_name,
c.last_name,
os.name AS status

FROM orders o 
JOIN customers c 
	ON o.customer_id = c.customer_id

JOIN order_statuses os
	ON o.status = os.order_status_id;
    
    -- Compound Join Condition or COmposite Primary Key
    
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;
    
    
-- Implicit JOIN syntax

SELECT *
FROM orders o, customers c
WHERE O.order_id  = c.customer_id;

-- Outer (left/right) Join

SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- Between multiple tables
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name  As shipper
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id










