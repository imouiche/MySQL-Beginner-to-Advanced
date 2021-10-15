USE sql_invoicing;

-- subquery in the select clause
SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices
        WHERE client_id = c.client_id) AS total_sales,
    (SELECT AVG(invoice_total)
		FROM invoices) AS average,
	(SELECT total_sales - average) AS difference
FROM clients c
;


-- Subquery in FROM clause --> here an Aliiase is always required

SELECT *

FROM (
	SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices
        WHERE client_id = c.client_id) AS total_sales,
    (SELECT AVG(invoice_total)
		FROM invoices) AS average,
	(SELECT total_sales - average) AS difference
FROM clients c
) AS sales_summary

WHERE total_sales IS NOT NULL