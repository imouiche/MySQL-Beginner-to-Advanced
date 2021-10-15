USE sql_store;

SELECT *
-- SELECT *, quantity *unit_price AS total_price

 FROM customers
-- FROM order_items
-- FROM orders

-- WHERE order_id = 6 and unit_price*quantity  > 30 
-- WHERE quantity_in_stock in (49, 38, 72)
-- WHERE birth_date BETWEEN '1990-01-01'and '2000-01-01'
-- WHERE (address LIKE '%TRAIL%' OR address LIKE '%AVENUE%')
-- WHERE phone NOT LIKE '%9'

-- REGEXP
-- WHERE first_name REGEXP 'ELKA|AMBUR'
-- WHERE last_name REGEXP 'EY$|ON$' 
-- WHERE last_name REGEXP 'B[R|U]'
-- WHERE shipped_date IS NULL

-- WHERE order_id  = 2
-- ORDER BY total_price DESC

ORDER BY points DESC
LIMIT 3

