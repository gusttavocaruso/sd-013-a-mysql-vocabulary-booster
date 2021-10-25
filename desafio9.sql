SELECT 
CONCAT(t1.FirstName, ' ', t1.LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders t2
INNER JOIN w3schools.employees t1 ON t2.EmployeeID = t1.EmployeeID
GROUP BY CONCAT(t1.FirstName, ' ', t1.LastName)
ORDER BY COUNT(*);
