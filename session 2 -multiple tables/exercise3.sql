USE sql_store;

SELECT 
p.product_id,
p.name,
oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;
    
    
-- 
SELECT 
	o.order_date,
    o.order_id,
    c.first_name,
	sh.name AS shipper,
    os.name AS status
FROM orders o
LEFT JOIN customers c 
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status =  os.order_status_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
    
ORDER BY shipper