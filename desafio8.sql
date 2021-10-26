SELECT 
    c.ContactName AS `Nome de contato`,
    s.ShipperName AS `Empresa que faz o envio`,
    o.OrderDate
FROM
    w3schools.orders o
        INNER JOIN
    w3schools.customers c ON o.CustomerID = c.CustomerID
        INNER JOIN
    w3schools.shippers s ON o.ShipperID = s.ShipperID
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` , `Empresa que faz o envio`;
