USE sql_invoicing;

    
-- Delete statment

DELETE FROM invoices
WHERE cliEnt_id = (
	SELECT *
	FROM clients
	WHERE name = 'Myworks'
	);


