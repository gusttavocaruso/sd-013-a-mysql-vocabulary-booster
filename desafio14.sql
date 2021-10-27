(
SELECT country AS 'País' FROM w3schools.customers
GROUP BY Country
)
UNION DISTINCT
(
SELECT country AS 'País' FROM w3schools.suppliers
GROUP BY Country
)
ORDER BY `País`;
