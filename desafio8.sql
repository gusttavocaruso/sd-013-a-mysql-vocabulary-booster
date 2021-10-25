SELECT
cus.ContactName AS 'Nome de contato',
(SELECT ShipperName FROM w3schools.shippers WHERE `order`.ShipperID = ShipperID) AS 'Empresa que fez o envio',
`order`.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS `order`
INNER JOIN w3schools.customers AS cus
ON `order`.CustomerID = cus.CustomerID
WHERE `order`.ShipperID IN (SELECT ShipperID FROM w3schools.shippers WHERE ShipperName = 'Speedy Express' OR ShipperName = 'United Package')
ORDER BY cus.ContactName ASC,
(SELECT ShipperName FROM w3schools.shippers WHERE `order`.ShipperID = ShipperID) ASC,
`order`.OrderDate ;