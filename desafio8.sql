SELECT c.ContactName,
  sh.ShipperName AS 'Empresa que fez o envio',
  o.OrderDate AS 'Data do pedido'
FROM customers c
  INNER JOIN orders o ON o.CustomerID = c.CustomerID
  INNER JOIN shippers sh ON sh.ShipperID = o.ShipperID
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY c.ContactName ASC,
  sh.ShipperName ASC,
  o.OrderDate ASC;
