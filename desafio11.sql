SELECT c1.ContactName AS 'Nome',
c1.country AS 'País',
(
SELECT COUNT(Country)
FROM w3schools.customers AS c2
WHERE c1.country = c2.Country AND c1.CustomerID != c2.CustomerID
) 
AS 'Número de compatriotas'
FROM w3schools.customers AS c1
WHERE 
(
SELECT COUNT(country) FROM w3schools.customers
WHERE c1.country = Country AND c1.CustomerID != CustomerID
) > 0
ORDER BY c1.ContactName;
