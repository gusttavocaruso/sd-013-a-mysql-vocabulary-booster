SELECT 
    t1.ContactName AS Nome,
    t1.Country AS País,
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers t2
        WHERE
            t1.Country = t2.Country
        GROUP BY t2.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers t1
ORDER BY t1.ContactName ASC;
