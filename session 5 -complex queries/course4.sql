USE  sql_invoicing;

-- The Exist operator
-- Select clients that have an invoice

SELECT *
FROM clients
WHERE client_id IN (
	SELECT DISTINCT client_id
    FROM invoices
   -- WHERE invoice_id IS NOT NULL
);

-- Another approach with The EXISTS operator --> very importan in situation where a subquery retruns a large result that can affect the performance

SELECT *
FROM clients c
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    WHERE client_id = c.client_id -- correlated subquery
);