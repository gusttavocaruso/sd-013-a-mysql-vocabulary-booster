SELECT 
    ContactName AS 'Nome de contato',
    ShipperName AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    w3schools.orders
        INNER JOIN
    w3schools.customers ON w3schools.customers.CustomerID = w3schools.orders.CustomerID
        INNER JOIN
    w3schools.shippers ON w3schools.shippers.ShipperID = w3schools.orders.ShipperID
WHERE
    ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY ContactName , ShipperName;
