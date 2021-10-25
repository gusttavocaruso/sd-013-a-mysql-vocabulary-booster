SELECT w3schools.Country AS 'País' FROM customers
UNION
SELECT w3schools.Country AS 'País' from suppliers
LIMIT 5;
