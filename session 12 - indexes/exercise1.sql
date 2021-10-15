USE sql_store;
-- Write a query to find customers with more than 100 points
-- create an index and use EXPLAIN to compare the result

EXPLAIN SELECT customer_id FROM customers WHERE points > 1000;

CREATE INDEX idx_points ON customers (points);