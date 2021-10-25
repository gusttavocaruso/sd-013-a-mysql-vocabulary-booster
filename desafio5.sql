-- 5 - Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal, considerando salários máximo e minímo como anuais

/*
1. Estrutura básica da query:

	SELECT
		jobs.JOB_TITLE AS coluna_1,
    (MAX_SALARY - MIN_SALARY) AS (coluna_2),
    ROUND(MIN_SALARY / 12, 2) AS (coluna_3),
    ROUND(MAX_SALARY / 12, 2) AS (coluna_4)
	FROM hr.jobs
	ORDER BY (coluna_2), (coluna_1) ASC;
*/

-- 2. Substituindo com as informações extraidas do enunciado:

SELECT 
  jobs.JOB_TITLE AS 'Cargo',
  (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
  ROUND(MIN_SALARY / 12, 2) AS 'Média mínima mensal',
  ROUND(MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial`, `Cargo` ASC;
