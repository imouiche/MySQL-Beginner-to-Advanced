USE sql_store;

-- Insert three rows in the products table

INSERT INTO products (
	name,
    quantity_in_stock,
    unit_price)
VALUES ('legume parfume', 23, 2.1),
		('sauce harachide', 8, 3.5),
        ('tomate rouge', 40, 1.7)
