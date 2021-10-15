USE sql_invoicing;
-- parameters default values

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state( state CHAR(2))
BEGIN
	IF state IS NULL THEN
		-- SET state = 'CA';
        SELECT * FROM clients;
	ELSE
		SELECT * FROM clients c
		WHERE c.state =  state;
	END IF;

	
END$$
DELIMITER ;

-- optimized approach

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state( state CHAR(2))
BEGIN
	SELECT * FROM clients c
	WHERE c.state = IFNULL(state, c.state);

END$$
DELIMITER ;