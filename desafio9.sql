-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS Nome_completo,
    COUNT(o.EmployeeID) AS Total_de_pedidos
FROM
    employees AS e
        INNER JOIN
    orders AS o ON e.EmployeeID = o.EmployeeID
GROUP BY  Nome_completo
ORDER BY Total_de_pedidos ASC;


