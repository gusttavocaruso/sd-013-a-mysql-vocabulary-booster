SELECT c.CustomerName AS 'Nome',
c.country AS 'País',
(
SELECT COUNT(Country)-1 
FROM w3schools.customers AS c2
WHERE c.country = c2.Country
) 
AS 'Número de compatriotas'
FROM w3schools.customers AS c
ORDER BY CustomerName;
