USE sql_invoicing;

-- total sales for each client as a VIEW

CREATE OR REPLACE VIEW sales_by_client AS
SELECT
	c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY client_id, name;

-- VIEW is created, let's use it.

SELECT *
FROM sales_by_client
WHERE total_sales > 500;

-- drop the view

-- DROP VIEW sales_by_client

