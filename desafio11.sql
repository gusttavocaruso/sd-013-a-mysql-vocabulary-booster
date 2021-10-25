SELECT t1.ContactName `Nome`,
t1.Country `País`,
(
SELECT COUNT(*) FROM w3schools.customers AS qnt
WHERE qnt.Country = t1.Country AND qnt.ContactName != t1.ContactName
GROUP BY qnt.Country
) AS `Número de compatriotas`
FROM w3schools.customers t1
HAVING `Número de compatriotas` >= 1
ORDER BY `Nome`;
