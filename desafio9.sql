SELECT 
    CONCAT(employ.FirstName, ' ', employ.LastName) AS 'Nome completo',
    COUNT(orders.OrderID) AS 'Total de pedidos'
FROM
    w3schools.employees employ,
    w3schools.orders orders
WHERE
    employ.EmployeeID = orders.EmployeeID
GROUP BY employ.EmployeeID
ORDER BY `Total de pedidos` ASC;
