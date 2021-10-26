SELECT CONCAT(E.firstName, ' ', E.lastName) as 'Nome completo', 
COUNT(*) as 'Total de pedidos'
FROM employees as E, orders as O
WHERE E.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;