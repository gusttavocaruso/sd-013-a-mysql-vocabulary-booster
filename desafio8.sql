SELECT
    `customers`.ContactName AS `Nome de contato`,
    `shippers`.ShipperName AS `Empresa que fez o envio`,
    `orders`.OrderDate AS `Data do pedido`
FROM
    w3schools.orders AS `orders`
    INNER JOIN w3schools.customers AS `customers` ON `orders`.CustomerID = `customers`.CustomerID
    INNER JOIN w3schools.shippers AS `shippers` ON `orders`.ShipperID = `shippers`.ShipperID
WHERE
    `orders`.ShipperID <= 2
ORDER BY
    `Nome de contato`,
    `Empresa que fez o envio`,
    `Data do pedido`;
