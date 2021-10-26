SELECT 
    ContactName AS 'Nome de contato',
    ShipperName AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    orders
        INNER JOIN
    customers ON customers.CustomerID = orders.CustomerID
        INNER JOIN
    shippers ON shippers.ShipperID = orders.ShipperID
WHERE
    ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY ContactName , ShipperName;
