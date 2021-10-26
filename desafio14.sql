SELECT 
    IF(null, s.Country, c.Country) AS 'País'
FROM
    w3schools.customers AS c
        LEFT JOIN
    w3schools.suppliers AS s ON c.Country = s.Country
ORDER BY c.Country ASC
