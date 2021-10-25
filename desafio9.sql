SELECT 
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees e
INNER JOIN w3schools.orders o ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY `Total de pedidos`;
