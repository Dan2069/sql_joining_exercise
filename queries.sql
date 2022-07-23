-- write your queries here
--1
SELECT * FROM owners JOIN vehicles ON owners.id = vehicles.owner_id;
--2
SELECT first_name, last_name, COUNT(owner_id) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY (first_name, last_name) O
RDER BY first_name;
--3
SELECT first_name, last_name, COUNT(owner_id), AVG(price) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY (first_name, last_name) HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC;