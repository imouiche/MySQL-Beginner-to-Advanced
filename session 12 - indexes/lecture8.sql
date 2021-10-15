
-- Indexes for sorting

SHOW INDEXES IN customers;

-- order by state

EXPLAIN SELECT customer_id FROM customers 
ORDER BY state;

SHOW STATUS LIKE 'last_query_cost';