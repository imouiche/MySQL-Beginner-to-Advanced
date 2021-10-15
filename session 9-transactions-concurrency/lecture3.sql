SHOW VARIABLES LIKE 'transaction_isolation';

-- change the transaction isolation level FOR THE CURRENT sesion or connection for all future transaction
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- for all sessions
SET GLOBAL TRANSACTION ISOLATION LEVEL SERIALIZABLE;