USE sql_invoicing;

SELECT 
	p.payment_id,
    p.date,
    p.invoice_id,
    p.amount,
    p.payment_method,
    pm.name,
    cl.name AS 'client name'
    
FROM payments p 
JOIN clients cl
	ON p.client_id = cl.client_id

JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id

