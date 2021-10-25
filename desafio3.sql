-- 3 - Exiba os cargos com a diferença entre seus salários máximo e mínimo

/*
1. Estrutura básica da query:

	SELECT
		JOB_TITLE AS (coluna 1),
    (MAX_SALARY - MIN_SALARY) AS (coluna 2)
	FROM hr.jobs
	ORDER BY (coluna 2), (coluna 1) ASC;
*/

-- 2. Substituindo com as informações extraidas do enunciado:

SELECT
  JOB_TITLE AS 'Cargo',
  MAX_SALARY - MIN_SALARY AS `Diferença entre salários máximo e mínimo`
FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, `Cargo` ASC;
