USE sql_store;
-- join  order_items with the product table and for each order return its product id as well as its name
-- folloed by the quantity and unit price from order_items table
SELECT *
FROM products;

SELECT order_id, oi.product_id, p.name, quantity, oi.unit_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id