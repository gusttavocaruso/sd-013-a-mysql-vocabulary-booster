USE w3schools;
SELECT 
	c.CustomerName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID
INNER JOIN shippers s ON s.ShipperID = o.ShipperID
ORDER BY c.CustomerName, s.ShipperName, o.OrderDate;