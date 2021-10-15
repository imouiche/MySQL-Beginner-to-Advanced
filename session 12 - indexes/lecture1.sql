USE sql_store;

-- Creating indexes
-- Query to retrieve customers located in California

SELECT COUNT(*) FROM customers;
EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';

-- create index
CREATE INDEX idx_state ON customers (state);


