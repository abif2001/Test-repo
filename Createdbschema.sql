DROP DATABASE gamesdb;

CREATE DATABASE IF NOT EXISTS gamesdb;
USE gamesdb;

CREATE TABLE customers (
cust_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20),
age INT NOT NULL,
postcode VARCHAR(10) NOT NULL,
dob DATE NOT NULL
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
