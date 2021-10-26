-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00

/*
1. Estrutura básica da query:

  SELECT 
      (coluna_1) AS 'Produto',
      (coluna_2) AS 'Mínima',
      (coluna_3) AS 'Máxima',
      (coluna_4) AS 'Média'
  FROM
      (tabela_1) AS __
          INNER JOIN
      (tabela_2) AS __ ON (condição)
  GROUP BY __
  HAVING (condição)
  ORDER BY `Média`, `Produto`;
*/

/*
2. Substituindo com as informações extraidas do enunciado:

  SELECT 
      P.ProductName AS 'Produto',
      MIN(OD.Quantity) AS 'Mínima',
      MAX(OD.Quantity) AS 'Máxima',
      ROUND(AVG(OD.Quantity), 2) AS 'Média'
  FROM
      w3schools.products AS P
          INNER JOIN
      w3schools.order_details AS OD ON P.ProductID = OD.ProductID
  GROUP BY P.productName
  HAVING `Média` > 20
  ORDER BY `Média`, `Produto`;
*/

-- 3. Toques finais:

SELECT 
    P.ProductName AS 'Produto',
    MIN(OD.Quantity) AS 'Mínima',
    MAX(OD.Quantity) AS 'Máxima',
    ROUND(AVG(OD.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS OD ON P.ProductID = OD.ProductID
GROUP BY P.productName
HAVING Média > 20
ORDER BY Média , Produto;
