
-- composite Indexes
USE sql_store;

SHOW INDEXES IN customers;
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' AND points > 1000;

-- composite indexes on state and point

CREATE INDEX idx_state_points ON customers (state, points);
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' AND points > 1000;

DROP INDEX idx_state ON customers; 