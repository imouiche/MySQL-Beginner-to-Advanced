USE sql_store;

-- from the order_items table, get the items
-- for order #6
-- where the total price is greated than 30

SELECT *
FROM order_items
WHERE order_id = 6 and (unit_price * quantity > 30)
