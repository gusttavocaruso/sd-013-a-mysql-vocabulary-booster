SELECT 
    CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
    COUNT(FirstName) AS 'Total de pedidos'
FROM
    w3schools.orders
        INNER JOIN
    w3schools.employees ON w3schools.orders.EmployeeID = w3schools.employees.EmployeeID
GROUP BY w3schools.orders.EmployeeID
ORDER BY COUNT(FirstName);
