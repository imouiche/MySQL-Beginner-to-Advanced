USE sql_invoicing;

-- Slect invoices larger than all invoices of client 3

SELECT *
FROM invoices
WHERE invoice_total >(
	SELECT MAX(invoice_total)
	FROM invoices
	WHERE client_id = 3
);

-- using teh ALL keyword

SELECT *
FROM invoices
WHERE invoice_total > ALL (
	SELECT invoice_total
	FROM invoices
	WHERE client_id = 3
);

-- ANY keyword

-- Slect client with at least tow invoices

SELECT *
FROM clients
WHERE client_id IN (
	SELECT client_id
	FROM  invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
    );
    
-- with ANY operator

SELECT *
FROM clients
WHERE client_id = ANY (
	SELECT client_id
	FROM  invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
    );