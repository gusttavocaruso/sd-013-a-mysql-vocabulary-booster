SELECT c.ContactName AS 'Nome',
c.country AS 'País',
(
SELECT COUNT(Country)
FROM w3schools.customers AS c2
WHERE c.country = c2.Country AND c.CustomerID != c2.CustomerID
) 
AS 'Número de compatriotas'
FROM w3schools.customers AS c
ORDER BY c.ContactName;
