USE sql_store2;

-- creating relationships

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    points INT NOT NULL DEFAULT 0,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders
(
	order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    -- create relationship
    FOREIGN KEY fk_orders_customers (customer_id)
		REFERENCES customers (customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);