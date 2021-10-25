USE w3schools;
SELECT Country AS 'País' FROM customers
UNION
SELECT Country AS 'País' from suppliers
LIMIT 5;
