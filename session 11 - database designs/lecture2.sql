USE sql_store2;

-- Alter tables
ALTER TABLE customers
	-- ADD lastName VARCHAR(50) NOT NULL AFTER firstName,
    ADD city 	 VARCHAR(50) NOT NULL,
    MODIFY COLUMN firstName VARCHAR(55) DEFAULT '',
    DROP last_name
    ;

-- create relationshipd after creating tabkes

ALTER TABLE orders
	ADD PRIMARY KEY (oder_id), 
    DROP PRIMARY KEY, -- no need to specify the name of the column
	DROP FOREIGN KEY fk_orders_customers,
    ADD FOREIGN KEY fk_orders_customers (customer_id)
		REFERENCES customers (customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION