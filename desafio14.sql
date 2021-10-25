(SELECT Country AS 'País' FROM w3schools.customers)
UNION
(SELECT Country AS 'País' FROM w3schools.suppliers)
ORDER BY 1 -- https://stackoverflow.com/questions/3445118/what-is-the-purpose-of-order-by-1-in-sql-select-statement/3445129
LIMIT 5;
