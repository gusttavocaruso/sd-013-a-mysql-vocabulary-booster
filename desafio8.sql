SELECT 
    c.ContactName AS 'Nome de contato',
    s.shipperName AS 'Empresa que fez o envio',
    o.orderDate AS 'Data do pedido'
FROM
    w3schools.customers AS c
        INNER JOIN
    w3schools.orders AS o ON c.CustomerID = o.CustomerID
        INNER JOIN
    w3schools.shippers AS s ON o.ShipperID = s.ShipperID
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY c.contactName ASC , s.shipperName ASC , o.OrderDate ASC;
