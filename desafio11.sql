SELECT 
    t1.ContactName AS Nome,
    t1.Country AS País,
    ((SELECT 
            COUNT(*) AS Quantity
        FROM
            w3schools.customers t2
        WHERE
            t1.Country = t2.Country
        GROUP BY t2.Country) - 1) AS 'Número de compatriotas'
FROM
    w3schools.customers t1
WHERE
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers t3
        WHERE
            t1.Country = t3.Country
        GROUP BY t3.Country) > 1
ORDER BY t1.ContactName ASC
