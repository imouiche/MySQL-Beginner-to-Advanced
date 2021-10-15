
-- Order of column in composite indexes
EXPLAIN SELECT customer_id
FROM customers
WHERE state = 'CA' AND last_name LIKE 'A%';

-- which column should come first
-- let's check the cardinaly of these columns

SELECT
	COUNT(DISTINCT state),
    COUNT(DISTINCT last_name)
FROM customers;

CREATE INDEX idx_lastname_state ON customers (last_name, state);
CREATE INDEX idx_state_lastname ON customers (state, last_name);

-- Force MySQL to use a specific index
EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_lastname_state)
WHERE state = 'NY' AND last_name LIKE 'A%';

-- With a range of states

EXPLAIN SELECT customer_id
FROM customers
-- USE INDEX (idx_lastname_state)
USE INDEX (idx_state_lastname)
WHERE state LIKE 'A%' AND last_name LIKE 'A%'; 