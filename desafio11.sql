SELECT 
C.ContactName AS 'Nome',
D.Country AS 'País',
(COUNT(D.Country) - 1) AS 'Número de compatriotas' 
FROM w3schools.customers AS C, w3schools.customers AS D
WHERE D.Country = C.Country
GROUP BY C.ContactName, D.Country
HAVING (COUNT(D.Country) - 1) > 0
ORDER BY C.ContactName
