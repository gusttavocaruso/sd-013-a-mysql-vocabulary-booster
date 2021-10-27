SELECT 
    customers.ContactName AS 'Nome de contato',
    shippers.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers customers,
    w3schools.orders orders,
    w3schools.shippers shippers
WHERE
    shippers.ShipperName IN ('Speedy Express' , 'United Package')
        AND customers.CustomerID = orders.CustomerID
        AND orders.ShipperID = shippers.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido` ASC;
