SELECT 
    (SELECT 
            CONCAT(e.firstname, ' ', e.Lastname)
        FROM
            w3schools.employees AS e
        WHERE
            e.EmployeeID = o.EmployeeID) AS 'Nome completo',
    COUNT(*) 'Total de pedidos'
FROM
    w3schools.orders AS o
GROUP BY EmployeeID
ORDER BY `Total de pedidos` ASC;
