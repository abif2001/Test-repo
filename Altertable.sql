USE gamesdb;

ALTER TABLE orders
ADD num_pets INT;

ALTER TABLE orders
DROP COLUMN num_pets;
