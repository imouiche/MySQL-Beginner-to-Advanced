USE sql_invoicing;


SELECT 
	p.date,
    cl.name AS client,
    p.amount,
    pm.name AS payment_method
FROM payments p
JOIN clients cl
	USING (client_id)
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id