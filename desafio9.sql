SELECT 
    CONCAT(e.FirstNAme, ' ', e.LastName) AS 'NOME COMPLETO',
    COUNT(o.OrderID) AS 'TOTAL DE PEDIDOS'
FROM
    employees e
        JOIN
    orders o ON e.EmployeeID = o.EmployeeID
GROUP BY `NOME COMPLETO`
ORDER BY `TOTAL DE PEDIDOS`;