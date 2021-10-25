SELECT
C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM
w3schools.customers AS C
INNER JOIN
w3schools.shippers AS S
INNER JOIN
w3schools.orders AS O
ON C.CustomerID = O.CustomerId AND
O.ShipperID = S.ShipperID
WHERE S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
