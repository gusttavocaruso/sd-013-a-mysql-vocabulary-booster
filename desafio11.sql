SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
(SELECT COUNT(*) FROM w3schools.customers AS c2
WHERE c2.Country = c1.Country
AND c1.ContactName <> c2.ContactName) AS 'Número de compatriotas'
FROM w3schools.customers AS c1
WHERE (SELECT COUNT(*) FROM w3schools.customers AS c2
WHERE c2.Country = c1.Country
AND c1.ContactName <> c2.ContactName) > 0 -- Tentei usar o 'Número de compatriotas', porém como ele esta no Where, não deu certo.
ORDER BY `Nome`;
