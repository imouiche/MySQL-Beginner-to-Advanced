
 -- VIEW PRIVILEGES 
 SHOW GRANTS FOR john;
 
 SHOW GRANTS;
 

 
 GRANT CREATE VIEW
 ON sql_store.*
 TO moon_app;
 
  -- Revoke privileges
  
REVOKE CREATE VIEW
 ON sql_store.*
 FROM moon_app;