-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"

/*
1. Estrutura básica da query:

  SELECT 
    UPPER(coluna_1) AS 'Nome completo',
    (coluna_2) AS 'Data de início',
    (coluna_3) AS 'Salário'
  FROM
    (tabela_1) AS __
      INNER JOIN
    (tabela_2) AS __ ON (condição_1)
  WHERE
    (condição_2)
  ORDER BY `Nome completo`, `Data de início`;
*/

-- 2. Substituindo com as informações extraidas do enunciado:

SELECT 
    UPPER(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
    JH.START_DATE AS 'Data de início',
    E.SALARY AS 'Salário'
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE
    MONTH(JH.START_DATE) BETWEEN 1 AND 3 -- mêses janeiro, fevereiro ou março
ORDER BY `Nome completo` , `Data de início`;
