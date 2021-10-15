USE sql_store;

-- simulate a concurrency ie when 1 or more users try to access the same data

START TRANSACTION;

UPDATE customers
SET points =  points + 10
WHERE customer_id = 1;

COMMIT;
