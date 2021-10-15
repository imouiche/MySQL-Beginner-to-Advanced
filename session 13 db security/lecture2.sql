
-- grating privileges

-- 1 web/desktop app and allow write and read, cannot create/modify tables

CREATE USER moon_app IDENTIFIED BY '1234';
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON sql_store.*   -- sql_store.customers
TO moon_app;

-- 2 admin -- all

GRANT ALL
ON *.*  -- all db and tables
TO john;
