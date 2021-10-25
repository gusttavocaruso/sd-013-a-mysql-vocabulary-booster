SELECT c.ContactName `Nome de contato`,
sh.ShipperName `Empresa que fez o envio`,
o.OrderDate `Data do pedido`
FROM w3schools.orders o
LEFT JOIN w3schools.customers c ON o.CustomerID = c.CustomerID
LEFT JOIN w3schools.shippers sh ON o.ShipperID = sh.ShipperID
WHERE o.ShipperID IN (1, 2)
ORDER BY c.ContactName, sh.ShipperName, o.OrderDate;
