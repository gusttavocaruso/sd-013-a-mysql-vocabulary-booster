-- Código inspirado no PR do amigo Murilo Rainho
-- https://github.com/tryber/sd-013-a-mysql-vocabulary-booster/pull/5/commits/fb2130e915a1490ca5665199b528d2c2482637f2
SELECT CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E
ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
