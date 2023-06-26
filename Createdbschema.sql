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
(2, 'Harry', 'Gale', 20, 'RG7 6TS', '2003-09-13'),
(3, 'Emile', 'Dussac', 63, 'GL4 8TW', '1980-01-02'),
(4, 'Herta', 'Orleton', 33, 'RT7 8QW', '1990-04-02'),
(5, 'Jenna', 'Strusts', 13, 'S4 9RW', '2010-06-17');

INSERT INTO items (item_id, item_desc, rrp, buy_price)
VALUES (1, 'Sea Inside', 3.87, 0.30),
(2, 'Belle', 3.84, 0.36),
(3, 'Streaks', 1.42, 8.43),
(4, 'Spaced Invaders', 2.04, 5.59),
(5, 'Rembrandt Jaccuse', 0.50,	1.62),
(6, 'Best Worst Movie', 7.21, 8.41),
(7, 'Voices from the List', 2.07, 5.98),
(8, 'Girl with Green Eyes', 4.15, 1.98),
(9, 'Whole Towns Talking', 0.98, 2.97),
(10, 'Star Packer', 9.85, 2.60);

INSERT INTO orders (cust_id, order_id, item_id, qty, d_o_purchase)
VALUES (1, 600000, 5, 2, '2022-08-13'),
(4, 600001, 7, 10, '2023-05-02'),
(5, 600002, 3, 15, '2022-12-23'),
(2, 600003, 6, 7, '2023-02-03'),
(3, 600004, 2, 1, '2023-07-12');


