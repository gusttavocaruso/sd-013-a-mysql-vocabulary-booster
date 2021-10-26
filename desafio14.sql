(SELECT Country AS País FROM w3schools.customers GROUP BY Country ORDER BY Country)
UNION ALL
(SELECT Country AS País FROM w3schools.suppliers GROUP BY Country ORDER BY Country)
ORDER BY País
LIMIT 5;
