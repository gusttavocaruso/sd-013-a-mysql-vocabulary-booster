SELECT C1.ContactName AS `Nome`,
C1.Country AS `País`,
(SELECT COUNT(*)
FROM w3schools.customers AS C2
WHERE C2.Country = C1.Country
AND C2.ContactName <> C1.ContactName
GROUP BY C2.Country) AS `Número de compatriotas`
FROM w3schools.customers AS C1
HAVING `Número de compatriotas` IS NOT NULL
ORDER BY `Nome` ASC;
