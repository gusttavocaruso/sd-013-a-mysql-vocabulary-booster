SELECT ContactName AS 'Nome de contato', (
  SELECT IF (ORDERS.ShipperID = 1, 'Speedy Express', 'United Package')
) AS 'Empresa que fez o envio',
ORDERS.OrderDate AS 'Data do pedido'
FROM w3schools.customers CUSTOMERS
INNER JOIN w3schools.orders ORDERS
ON CUSTOMERS.CustomerID = ORDERS.CustomerID
WHERE ORDERS.ShipperID IN (1, 2)
ORDER BY ContactName,
(
  SELECT IF (ORDERS.ShipperID = 1, 'Speedy Express', 'United Package')
),
ORDERS.OrderDate;
