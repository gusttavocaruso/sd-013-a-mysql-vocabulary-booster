SELECT
cus.ContactName AS 'Nome de contato',
shi.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM orders AS `ord`
INNER JOIN w3schools.customers AS `cus`
ON ord.CustomerID = cus.CustomerID
INNER JOIN w3schools.shippers AS `shi`
ON ord.ShipperID = shi.ShipperID
WHERE shi.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
