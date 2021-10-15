USE sql_store;

SELECT 
	order_id,
    IFNULL(shipper_id, 'Not assigned') AS shipper
    
FROM orders;

SELECT 
	order_id,
    COALESCE(shipper_id, comments, 'Not assigned') AS shipper
    
FROM orders