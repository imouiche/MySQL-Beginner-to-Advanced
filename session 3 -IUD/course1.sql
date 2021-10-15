USE sql_store;

INSERT INTO customers (
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state)
VALUES(
    'John',
    'Smith',
    '1990-01-01',
    'address',
    'city',
    'CA');
    
    -- insert multiple rows in one goal
    
INSERT INTO shippers (name)
VALUES	('shipper1'),
		('shipper2'),
        ('shipper3');
        
        
-- Insert in multiple tables, LAST_INSERT_ID() is a buit-in function to get the last inserted column id
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 2.95),
		(LAST_INSERT_ID(), 2, 1, 3.95)
-- SELECT LAST_INSERT_ID()