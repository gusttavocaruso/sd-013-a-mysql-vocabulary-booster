-- SELECT * FROM w3schools.customers;
-- SELECT * FROM w3schools.orders;
-- SELECT * FROM w3schools.shippers;
SELECT 
C.ContactName AS 'Nome de contato',
O.OrderDate AS 'Data do pedido',
S.ShipperName AS 'Empresa que fez o envio'
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O
ON C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers as S
on O.ShipperID = S.ShipperID
WHERE S.ShipperID = 1 OR S.ShipperID = 2
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
