SELECT 
    CONCAT(e.firstname, ' ', e.lastname) 'Nome completo',
    COUNT(*) 'Total de pedidos'
FROM
    w3schools.orders o
        INNER JOIN
    w3schools.employees e ON e.employeeid = o.employeeid
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
