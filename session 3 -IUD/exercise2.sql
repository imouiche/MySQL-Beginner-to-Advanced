USE sql_invoicing;

CREATE TABLE invoices_archived AS
SELECT
	i.invoice_id,
    i.number,
    cl.name AS client,
    i.invoice_total,
    i.invoice_date,
    i.due_date,
    i.payment_total,
    i.payment_date
FROM invoices i
JOIN clients cl
	USING (client_id)
WHERE payment_date IS NOT NULL