
-- Indexes are ignored in some queries
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' OR points > 1000;

-- The we plit our query in sub query

CREATE INDEX idx_points ON customers (points);

EXPLAIN 
	SELECT customer_id FROM customers
	WHERE state = 'CA'
    UNION
    SELECT customer_id FROM customers
	WHERE points > 1000;
