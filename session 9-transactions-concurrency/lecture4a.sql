USE sql_store;

-- READ UNCOMMITTED TI -- to read uncommitted data -- Dirty Reads
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

SELECT points
FROM customers
WHERE customer_id = 1;