SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
  COUNT(e.EmployeeID) AS 'Total de Pedidos'
FROM employees e
  INNER JOIN orders o ON o.EmployeeID = e.EMployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(e.EmployeeID) ASC;