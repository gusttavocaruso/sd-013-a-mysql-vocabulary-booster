SELECT c.contactName AS 'Nome',
c.Country AS 'País',
(SELECT COUNT(*) - 1 FROM w3schools.customers AS c2
WHERE c2.Country = c.Country) AS 'Número de compatriotas' 
FROM w3schools.customers AS c 
WHERE
(SELECT COUNT(*) - 1 FROM w3schools.customers AS c2
WHERE c2.Country = c.Country
GROUP BY c2.Country) > 0
ORDER BY `Nome`;
