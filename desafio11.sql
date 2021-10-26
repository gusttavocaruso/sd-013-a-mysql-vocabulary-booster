SELECT
cus1.ContactName AS Nome,
cus1.Country AS País,
(SELECT COUNT(*) FROM w3schools.customers WHERE cus1.Country = Country) - 1 AS 'Número de compatriotas' 
FROM w3schools.customers AS cus1
WHERE (SELECT COUNT(*) FROM w3schools.customers WHERE cus1.Country = Country) - 1 > 0
ORDER BY Nome;
