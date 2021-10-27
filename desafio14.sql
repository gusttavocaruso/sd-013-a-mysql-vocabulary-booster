(
SELECT country AS 'País' FROM w3schools.customers
GROUP BY Country
)
UNION
(
SELECT country AS 'País' FROM w3schools.suppliers
GROUP BY Country
)
ORDER BY `País`
LIMIT 5;
