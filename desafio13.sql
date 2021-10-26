-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80

-- AVISO: A resolução do requisito contém subqueries! 🧟

/*
1. Estrutura básica da query:

  SELECT 
      (coluna_1) AS `Produto`,
      (coluna_2) AS `Preço`
  FROM
      (tabela_1) AS __
  WHERE
      (coluna_3) IN (subquery)
  ORDER BY `Produto`;
*/

-- 2. Substituindo com as informações extraidas do enunciado:

SELECT 
    p.productName AS `Produto`, p.price AS `Preço`
FROM
    w3schools.products AS p
WHERE
    p.productId IN (SELECT 
            o.productId
        FROM
            w3schools.order_details AS o
        WHERE
            o.quantity > 80)
ORDER BY `Produto`;
