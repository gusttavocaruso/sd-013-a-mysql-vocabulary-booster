SELECT 
    contactname AS Nome,
    country AS País,
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers
        WHERE
            country = c.country
                AND contactname != c.contactname) AS 'Número de compatriotas'
FROM
    w3schools.customers c
HAVING `Número de compatriotas` != 0
ORDER BY Nome