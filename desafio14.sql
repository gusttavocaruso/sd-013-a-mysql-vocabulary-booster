-- 14 - Considerando o conjunto formado pelas pessoas consumidoras e empresas fornecedoras de produtos, queremos saber quais são os cinco primeiros países distintos, em ordem alfabética, presentes nesse conjunto

-- AVISO: A resolução do requisito contém Union! 🥸

/*
1. Estrutura básica da query:

  (SELECT (coluna_1) AS `País` FROM (tabela_1))
      UNION
  (SELECT (coluna_2) AS `País` FROM (tabela_2))
  ORDER BY `País` LIMIT 5;
*/

/*
2. Preenchendo com as informações que nós temos:

  (SELECT country AS `País` FROM w3schools.customers)
      UNION
  (SELECT country AS `País` FROM w3schools.suppliers)
  ORDER BY `País` LIMIT 5;
*/

-- Finalizando, temos:

(SELECT 
    country AS `País`
FROM
    w3schools.customers) UNION (SELECT 
    country AS `País`
FROM
    w3schools.suppliers) ORDER BY `País` LIMIT 5;
