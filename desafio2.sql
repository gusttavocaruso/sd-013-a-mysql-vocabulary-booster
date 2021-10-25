-- 2 - Exiba os cargos com seu nível de renumeração associado, com base no salário máximo do cargo

/*
1. A estrutura básica da nossa query:

	SELECT
		(coluna 1 AS __),
        (CASE coluna 2 AS __)
	FROM (tabela)
	ORDER BY (coluna);
*/

/*
2. Substituindo com as informações extraidas do enunciado:

	SELECT
		JOB_TITLE AS Cargo,
        CASE (MAX_SALARY) AS Nível
	FROM hr.jobs
	ORDER BY JOB_TITLE;
*/

/*
3. Criando a estrutura básica que especifica o valor de 'Nível':

	SELECT
		JOB_TITLE AS Cargo,
		CASE
			WHEN MAX_SALARY = condição_1 THEN valor_1
			WHEN MAX_SALARY = condição_2 THEN valor_2
			WHEN MAX_SALARY = condição_3 THEN valor_3
			ELSE valor_4
		END AS Nível
	FROM hr.jobs
	ORDER BY JOB_TITLE;
*/

-- 4. Agora, com as condições e valores extraidos do enunsiado:
SELECT
	JOB_TITLE AS Cargo,
	CASE
		WHEN MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
		WHEN MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
		WHEN MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
		ELSE 'Altíssimo'
	END AS Nível
FROM hr.jobs
ORDER BY JOB_TITLE;