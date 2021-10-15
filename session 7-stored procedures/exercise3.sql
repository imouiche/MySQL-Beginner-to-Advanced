USE sql_invoicing;

-- Write a stored procedure called get_payments with two params
-- client_id ==> INT(4)
-- payment_method_id => TINYINT 1--255

DROP PROCEDURE IF EXISTS get_payments;

DELIMITER $$

CREATE PROCEDURE get_payments(
	client_id INT,
    payment_method_id TINYINT
)

BEGIN
	
    SELECT *
	FROM payments p
	WHERE 
		p.client_id = IFNULL(client_id, p.client_id) AND
		p.payment_method = IFNULL(payment_method_id, p.payment_method); 

END $$



DELIMITER ;