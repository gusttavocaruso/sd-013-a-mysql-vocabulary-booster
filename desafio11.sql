SELECT C1.contactName AS Nome,
    C1.country AS País,
    COUNT(*) AS `Número de compatriotas`

FROM customers AS C1, customers AS C2

WHERE C1.country = C2.country AND C1.contactName <> C2.contactName

GROUP BY Nome, País
ORDER BY Nome;
