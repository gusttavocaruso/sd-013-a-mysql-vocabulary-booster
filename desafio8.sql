-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"

/*
1. Estrutura básica da query:

  SELECT 
    UPPER(coluna_1) AS 'Nome de contato',
    (coluna_2) AS 'Empresa que fez o envio',
    (coluna_3) AS 'Data do pedido'
  FROM
    (tabela_1) AS __
      INNER JOIN
    (tabela_2) AS __ ON __
      INNER JOIN
    (tabela_3) AS __ ON __
  WHERE
    (condição_1) OR (condição_2)
  ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
*/

-- 2. Substituindo com as informações extraidas do enunciado:
