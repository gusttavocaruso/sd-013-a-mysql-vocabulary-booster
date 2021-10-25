USE w3schools;
SELECT 
	CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM employees e
INNER JOIN orders o ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY `Total de pedidos`;