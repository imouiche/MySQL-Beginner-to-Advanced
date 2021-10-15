USE sql_invoicing;

-- get the invoices that are larger than the client's average invoice amount

SELECT *
FROM invoices i
WHERE invoice_total > (
	SELECT AVG(invoice_total)
    FROM invoices
    WHERE client_id = i.client_id
)
