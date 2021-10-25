USE w3schools;
SELECT c.ContactName AS Nome,
c.Country AS 'País',
	(
		SELECT COUNT(c1.Country)
        FROM customers c1
        WHERE c1.Country = c.Country
        AND c.ContactName <> c1.ContactName
    ) AS 'Número de compatriotas'
FROM customers c
ORDER BY c.ContactName;
