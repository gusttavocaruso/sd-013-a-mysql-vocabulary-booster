SELECT c2.CustomerName AS 'Nome',
c2.country AS 'País',
(SELECT 
COUNT(*) FROM w3schools.customers as c1
WHERE c1.country = c2.country
AND c1.ContactName != c2.ContactName
GROUP BY c1.country
) AS 'Número de compatriotas'
FROM w3schools.customers AS c2
HAVING 'Número de compatriotas'
ORDER BY c2.CustomerName;




