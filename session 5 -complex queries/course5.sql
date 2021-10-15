USE sql_invoicing;

-- Subqueries in the SELECT clause

SELECT 
	invoice_id,
    invoice_total,
    (SELECT AVG(invoice_total) 
		FROM invoices) AS invoice_average,
	invoice_total - (SELECT invoice_average) AS difference
FROM  invoices