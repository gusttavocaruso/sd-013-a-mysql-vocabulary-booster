-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo

-- AVISO: A resolução do requisito contém self join! 🎃

/*
1. Estrutura básica da query:

  SELECT 
      (coluna_1) AS `Nome completo funcionário 1`,
      (coluna_2) AS `Salário funcionário 1`,
      (coluna_3) AS `Telefone funcionário 1`,
      (coluna_4) AS `Nome completo funcionário 2`,
      (coluna_5) AS `Salário funcionário 2`,
      (coluna_6) AS `Telefone funcionário 2`,
  FROM
      (instancia_1) AS __,
      (instancia_2) AS __
  WHERE (condição)
  ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
*/

/*
2. Preenchendo com as informações que nós temos:

  SELECT 
      CONCAT(E1.first_name, ' ', E1.last_name) AS `Nome completo funcionário 1`,
      E1.salary AS `Salário funcionário 1`,
      E2.phone_number AS `Telefone funcionário 1`,
      CONCAT(E2.first_name, ' ', E2.last_name) AS `Nome completo funcionário 2`,
      E2.salary AS `Salário funcionário 2`,
      E2.phone_number AS `Telefone funcionário 2`,
  FROM
      (instancia_1) AS E1,
      (instancia_2) AS E2
  WHERE (condição)
  ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
*/

-- Escrevendo a condição:

SELECT 
    CONCAT(E1.first_name, ' ', E1.last_name) AS `Nome completo funcionário 1`,
    E1.salary AS `Salário funcionário 1`,
    E1.phone_number AS `Telefone funcionário 1`,
    CONCAT(E2.first_name, ' ', E2.last_name) AS `Nome completo funcionário 2`,
    E2.salary AS `Salário funcionário 2`,
    E2.phone_number AS `Telefone funcionário 2`
FROM
    hr.employees AS E1,
    hr.employees AS E2
WHERE
    E1.job_id = E2.job_id
        AND E1.employee_id <> E2.employee_id
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
