USE sql_store;

SELECT 
	p.product_id,
    p.name,
    COUNT(*) AS orders,
    IF(
		COUNT(*) > 1,
        'Many times',
        'Once') AS frequency
FROM products p
JOIN order_items oi USING(product_id)
GROUP BY p.product_id, p.name