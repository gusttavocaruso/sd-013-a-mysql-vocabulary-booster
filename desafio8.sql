SELECT c.CustomerName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.shippers AS s
INNER JOIN w3schools.orders AS o
ON c.CustomerID = o.CustomerID AND o.ShipperID = s.ShipperID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, s.ShipperName, `Data do pedido`;
