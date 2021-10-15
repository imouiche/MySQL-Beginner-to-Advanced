 USE sql_store;

-- SELECT order_id, o.customer_id, first_name, last_name
-- FROM orders o
-- JOIN customers c ON o.customer_id = c.customer_id

-- SELECT order_id, oi.product_id,  p.name, quantity, oi.unit_price
-- FROM order_items oi
-- JOIN products p ON oi.product_id = p.product_id

-- products coming from a different db -> JOIN accross multiple dbs

-- SELECT order_id, oi.product_id,  p.name, quantity, oi.unit_price
-- FROM order_items oi
-- JOIN sql_inventory.products p ON oi.product_id = p.product_id

-- Self join
-- USE sql_hr;

-- SELECT e.employee_id, e.first_name, m.first_name as Manager
-- FROM employees e
-- JOIN employees m
-- 	ON e.reports_to = m.employee_id

-- Multiple tables

-- SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
-- FROM orders o
-- JOIN customers c ON o.customer_id =  c.customer_id
-- JOIN order_statuses os ON o.status =  os.order_status_id

---
-- USE sql_invoicing;

-- SELECT payment_id, invoice_id, date, amount, cl.name, pm.name AS payment_method
-- FROM payments py
-- JOIN clients cl ON py.client_id = cl.client_id
-- JOIN payment_methods pm ON py.payment_method = pm.payment_method_id

-- Compound JOIN Condition

-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin ON oi.order_id =  oin.order_Id
-- 	AND oi.product_id = oin.product_id
    
-- Outer Join
-- SELECT 
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM  customers c
-- RIGHT JOIN orders o
-- ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id

-- SELECT
-- 	o.order_id,
-- 	o.order_date,
-- 	c.first_name AS customer,
-- 	sh.name AS shipper,
-- 	os.name AS status

-- FROM orders o
-- JOIN customers  c
-- 	ON o.customer_id =  c.customer_id
-- LEFT JOIN shippers sh
-- 	ON o.shipper_id =  sh.shipper_id
-- JOIN order_statuses os
-- 	ON o.status = os.order_status_id


-- USING Cluase

SELECT 
 o.order_id,
 c.first_name,
 sh.status
FROM orders o 
JOIN customers c
	-- ON o.customer_id =c.customer_id
	USING (customer_id)
LEFT JOIN shippers sh 
	USING (shipper_id)

