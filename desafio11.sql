-- 11 - Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente

-- AVISO: A resolução do requisito contém self join e subqueries! 👻

/*
1. Estrutura básica da query:

  SELECT 
      (coluna_1) AS 'Nome',
      (coluna_2) AS 'País',
      (coluna_3) (subquery_1) AS 'Número de compatriotas'
  FROM
      (tabela_1) AS __
  WHERE (subquery_2)
  ORDER BY `Nome`;
*/

/*
2. Substituindo com algumas informações e montando a subquery 1:
  -- Note também que estamos estamos instanciando a tabela duas vezes --

  SELECT 
      C1.contactName AS 'Nome',
      C1.country AS 'País',
      (SELECT
            COUNT(*) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C1.Country = C2.Country
      GROUP BY C2.country) AS 'Número de compatriotas',
  FROM
      w3schools.customers AS C1
  WHERE (subquery_2)
  ORDER BY `Nome`;
*/

/*
3. Montando a subquery 2:

  SELECT 
      C1.contactName AS 'Nome',
      C1.country AS 'País',
      (SELECT
            COUNT(*) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C1.country = C2.country
      GROUP BY C2.country) AS 'Número de compatriotas'
  FROM
      w3schools.customers AS C1
  WHERE
      (SELECT
              COUNT(*) - 1
          FROM
              w3schools.customers AS C2
          WHERE
              C1.country = C2.country
      GROUP BY C2.country) > 0
  ORDER BY `Nome`;
*/

-- 4. Finalizando:

SELECT 
    C1.ContactName AS 'Nome',
    C1.Country AS 'País',
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C1.Country = C2.Country
        GROUP BY C2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS C1
WHERE
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C1.Country = C2.Country
        GROUP BY C2.Country) > 0
ORDER BY `Nome`;
