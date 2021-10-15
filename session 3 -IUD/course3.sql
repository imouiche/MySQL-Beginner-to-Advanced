USE sql_invoicing;

UPDATE invoices
SET 
payment_total = invoice_total * 0.5,
 payment_date = due_date
WHERE invoice_id = 3;

-- Updating multiple rows
UPDATE invoices
SET 
payment_total = invoice_total * 0.5,
 payment_date = due_date
WHERE client_id = 3;

-- Using subquery in Updates
-- Using we only know the name and looking for the client ID

UPDATE invoices
SET 
payment_total = invoice_total * 0.5,
 payment_date = due_date
WHERE client_id = 
	(SELECT client_id
	FROM clients
	WHERE name = 'Myworks');
    
    -- for client located in CA and NY
    
UPDATE invoices
SET 
payment_total = invoice_total * 0.5,
 payment_date = due_date
WHERE client_id IN
	(SELECT client_id
	FROM clients
	WHERE state IN ('CA', 'NY'))