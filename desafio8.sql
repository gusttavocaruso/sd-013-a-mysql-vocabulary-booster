SELECT
c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM
w3schools.customers c,
w3schools.orders o,
w3schools.shippers s
WHERE
s.ShipperName IN ('Speedy Express', 'United Package') AND
c.CustomerID = o.CustomerID AND o.ShipperID = s.ShipperID
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
