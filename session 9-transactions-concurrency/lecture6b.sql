USE sql_store;

START TRANSACTION;
UPDATE customers
SET state = 'VA'
WHERE customer_id = 1;
-- ROLLBACK;
COMMIT;