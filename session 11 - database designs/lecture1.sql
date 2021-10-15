
CREATE DATABASE IF NOT EXISTS sql_store2;

-- droping a db
-- DROP DATABASE IF EXISTS sql_store2;

-- create tables
USE sql_store2;

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    points INT NOT NULL DEFAULT 0,
    email VARCHAR(255) NOT NULL UNIQUE
);
