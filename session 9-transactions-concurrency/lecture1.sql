USE sql_store;

-- Create a transaction

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES(1, '2019-01-01', 1);

INSERT INTO order_items
VALUES(LAST_INSERT_ID(), 1, 1, 1);

COMMIT; -- Here we can use ROLLBACK if we want to manually rollback a transaction to undo all the changes
