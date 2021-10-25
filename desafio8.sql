SELECT
t1.ContactName AS 'Nome de contato',
t2.ShipperName AS 'Empresa que fez o envio',
t3.OrderDate AS 'Data do pedido'
FROM w3schools.orders t3
INNER JOIN w3schools.customers t1 ON t3.CustomerID = t1.CustomerID
INNER JOIN w3schools.shippers t2 ON t3.ShipperID = t2.ShipperID
WHERE t2.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY t1.ContactName, t2.ShipperName, t3.OrderDate;
