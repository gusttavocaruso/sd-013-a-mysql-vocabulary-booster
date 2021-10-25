SELECT
	CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
    COUNT(O.OrderID) AS 'Total de pedidos'
FROM
	w3schools.employees AS E
INNER JOIN
	w3schools.orders AS O
    ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY COUNT(O.OrderID);
