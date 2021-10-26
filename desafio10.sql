SELECT 
    p.productname Produto,
    MIN(o.quantity) Mínima,
    MAX(o.quantity) Máxima,
    ROUND(AVG(o.quantity), 2) Média
FROM
    w3schools.order_details o
        INNER JOIN
    w3schools.products p ON o.productid = p.productid
GROUP BY Produto
HAVING Média > 20
ORDER BY Média , Produto
