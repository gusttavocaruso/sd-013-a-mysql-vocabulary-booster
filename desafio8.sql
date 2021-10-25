SELECT 
    c.ContactName AS 'Nome de contato',
    (SELECT 
            ShipperName
        FROM
            w3schools.shippers
        WHERE
            ShipperID = o.ShipperID
        LIMIT 1) AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON o.CustomerID = c.CustomerID
    WHERE
		o.ShipperID IN (1,2)
    ORDER BY c.ContactName asc;
