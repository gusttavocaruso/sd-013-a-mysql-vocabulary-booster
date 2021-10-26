SELECT 
    c.ContactName Nome,
    c.country País,
    (SELECT 
            COUNT(t.country) - 1
        FROM
            w3schools.customers AS t
        WHERE
            c.country = t.country) 'Número de compatriotas'
FROM
    w3schools.customers AS c
    WHERE (SELECT 
            COUNT(t.country) - 1
        FROM
            w3schools.customers AS t
        WHERE
            c.country = t.country) > 0
ORDER BY Nome;
