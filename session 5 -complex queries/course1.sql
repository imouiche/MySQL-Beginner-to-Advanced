USE sql_store;

-- Find products that are more expensive than lettuce

SELECT *
FROM products
WHERE unit_price > (
	SELECT unit_price
	FROM products
	WHERE product_id = 3
	);
    
-- Find the prodiucts that have never been ordered

SELECT *
FROM products
WHERE product_id NOT IN (
	SELECT DISTINCT product_id
	from order_items
)