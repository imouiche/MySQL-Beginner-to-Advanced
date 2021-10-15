USE sql_invoicing;

-- Create a View to see the balance for each client

-- Name: clients_balance, cols client_id, name, balance

CREATE VIEW clients_balance AS
SELECT
	c.client_id,
    c.name,
    SUM(invoice_total- payment_total) AS total_payment
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY c.client_id, name
