DROP DATABASE gamesdb;

CREATE DATABASE IF NOT EXISTS gamesdb;
USE gamesdb;

CREATE TABLE customers (
cust_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20),
last_name VARCHAR(20) NOT NULL,
age INT NOT NULL,
postcode VARCHAR(10),
dob DATE
);

CREATE TABLE items (
item_id INT PRIMARY KEY,
item_desc VARCHAR(30),
rrp FLOAT,
buy_price FLOAT
);

CREATE TABLE orders (
cust_id INT NOT NULL,
order_id INT PRIMARY KEY AUTO_INCREMENT,
item_id INT NOT NULL,
qty INT NOT NULL,
d_o_purchase DATE,
FOREIGN KEY (item_id) REFERENCES items(item_id),
FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

INSERT INTO customers (cust_id, first_name, last_name, age, postcode, dob)
VALUES (1, 'John', 'Smith', 23, 'GL50 5PS', '2000-11-17'),
(2, 'Harry', 'Gale', 20, 'RG7 6TS', '2003-09-13');

UPDATE customers
SET first_name='new first name', last_name='new last name'
WHERE cust_id=1;

SELECT * FROM customers;
