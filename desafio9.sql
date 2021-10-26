SELECT 
    CONCAT(E.FirstName, ' ', E.lastName) AS `Nome completo`,
    COUNT(O.OrderID) AS `Total de pedidos`
FROM
    w3schools.employees AS E
        INNER JOIN
    w3schools.orders AS O ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
