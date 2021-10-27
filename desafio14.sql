SELECT DISTINCT(C.country) as País FROM w3schools.customers as C
UNION
SELECT DISTINCT(S.country) as País FROM w3schools.suppliers as S
ORDER BY País
LIMIT 5;
