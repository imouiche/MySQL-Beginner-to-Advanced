CALL get_clients();

-- drop a procedure

DROP PROCEDURE IF EXISTS get_clients;

DELIMITER $$
CREATE PROCEDURE get_client()
BEGIN
	SELECT * FROM clients;
END$$
DELIMITER ;
