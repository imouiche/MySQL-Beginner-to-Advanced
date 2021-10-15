
-- trigger by insert
INSERT INTO payments
VALUES(DEFAULT, 5, 3, '2019-01-01', 10, 1);

-- trigger by delete

DELETE 
FROM payments
WHERE payment_id  =  9;

-- viewing triggers on the db

SHOW TRIGGERS;

SHOW TRIGGERS LIKE 'payments%'; -- trigger assocated with payments table

-- droping a trigger
DROP TRIGGER IF EXISTS payments_after_insert;
