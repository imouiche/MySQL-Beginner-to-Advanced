USE	sql_invoicing;

-- Aggregate
SELECT 
	MAX(invoice_total) As highest,
	MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total *1.1) AS total,
    COUNT(invoice_total) AS number_of_invoices,
    COUNT(payment_date) AS count_of_payments,
    COUNT( DISTINCT client_id) AS total_records
FROM invoices
WHERE invoice_date > '2019-07-01';

-- GROUP BY
SELECT 
	state,
    city,
	SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients cl
	USING (client_id)
WHERE invoice_date >= '2019-07-01'
GROUP BY state, city;
-- ORDER BY total_sales DESC

-- HAVING clause, used to group data after GRIUP BY clause.

SELECT 
	client_id,
	SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices >5;

-- WITH ROLLUP
SELECT 
	state,
    city,
	SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients c USING (client_id)
GROUP BY state, city WITH ROLLUP