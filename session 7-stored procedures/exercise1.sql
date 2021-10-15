
-- Create a stored procedure called get_invoices_with_balance
-- to return all the invoices with balance > 0

DELIMITER $$
CREATE PROCEDURE get_invoices_with_balance()
BEGIN
	SELECT * 
    FROM invoices_with_balance
    WHERE balance > 0;
END $$

DELIMITER ;