-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
SELECT * FROM orders;
SELECT * FROM employees; 


SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS Nome_completo,
    COUNT(o.EmployeeID) AS Total_de_pedidos
FROM
    employees AS e
        INNER JOIN
    orders AS o ON e.EmployeeID = o.EmployeeID
ORDER BY o.EmployeeID ASC;

O QUE ESTÁ DE ERRADO NESSA QUERY QUE NÃO ESTOU VENDO?
Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'w3schools.e.FirstName'; this is incompatible with sql_mode=only_full_group_by
