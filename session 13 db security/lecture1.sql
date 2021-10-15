-- CREATE USER john@127.0.0.1 

CREATE USER john IDENTIFIED BY '1234';

-- VIEW USERS
-- % means anywhere
SELECT * FROM mysql.user;

-- Droping users
CREATE USER bob@codewithinoussa.com IDENTIFIED BY '1234';

DROP USER bob@codewithinoussa.com;

-- Changing password
SET PASSWORD FOR john = '1234';

-- Set the pwd for the currently logging user

SET PASSWORD = '1234';

