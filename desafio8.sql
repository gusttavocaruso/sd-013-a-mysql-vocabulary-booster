SELECT C.contactName as `Nome de contato`,
S.shipperName as 'Empresa que fez o envio',
O.orderDate as 'Data do pedido'
FROM customers as C, orders as O, shippers as S
WHERE C.CustomerID = O.CustomerID AND S.shipperID = O.shipperID
AND (S.shipperName = 'Speedy Express' OR S.shipperName = 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do Pedido`;
