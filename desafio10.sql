SELECT
    `products`.ProductName AS `Produto`,
    MIN(`order_details`.Quantity) AS `Mínima`,
    MAX(`order_details`.Quantity) AS `Máxima`,
    round(AVG(`order_details`.Quantity), 2) `Média`
FROM
    w3schools.order_details AS `order_details`
    INNER JOIN w3schools.products AS `products` ON `products`.ProductID = `order_details`.ProductID
GROUP BY
    `Produto`
HAVING
    `Média` > 20
ORDER BY
    `Média` ASC,
    `Produto`
;
