SELECT
    c.CustomerName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON o.CustomerID = c.CustomerID
        INNER JOIN
    w3schools.shippers AS s ON o.ShipperID = s.ShipperID
ORDER BY c.CustomerName , s.ShipperName , o.OrderDate;
