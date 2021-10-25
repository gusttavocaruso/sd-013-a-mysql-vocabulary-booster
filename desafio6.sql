-- 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas

/*
1. Estrutura básica da query:

	SELECT 
		(coluna_1) AS 'Nome completo',
		(coluna_2) AS 'Cargo',
		(coluna_3) AS 'Data de início do cargo',
		(coluna_4) AS 'Departamento'
	FROM
		(tabela_1) AS __
        INNER JOIN (tabela_2) AS __
			ON (condição_1)
		INNER JOIN (tabela_3) AS __
			ON (condição_2)
		INNER JOIN (tabela_4) AS __
			ON (condição_3)
	ORDER BY (coluna_1) DESC, (coluna_2);
*/

SELECT 
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
  J.JOB_TITLE AS 'Cargo',
  JH.START_DATE AS 'Data de início do cargo',
  D.DEPARTMENT_NAME AS 'Departamento'
FROM
  hr.employees AS E
  INNER JOIN hr.job_history AS JH
    ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  INNER JOIN hr.jobs AS J
    ON JH.JOB_ID = JH.JOB_ID
  INNER JOIN hr.departments AS D
    ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) DESC, J.JOB_TITLE;