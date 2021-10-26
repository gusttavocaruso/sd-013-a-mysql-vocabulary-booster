-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo

/*
1. Estrutura básica da query:

	SELECT
		coluna_1 AS 'Cargo',
		ROUND(AVG(coluna_2), 2) AS `Média salarial`,
		CASE (coluna_3) AS 'Senioridade'
	FROM tabela_1 AS __
		INNER JOIN tabela_2 AS __
		ON (condição)
	GROUP BY (coluna_1)
	ORDER BY (coluna_2), (coluna_1) ASC;
*/

/*
2. Substituindo com as informações extraidas do enunciado:

	SELECT
		J.JOB_TITLE AS 'Cargo',
		ROUND(AVG(E.SALARY), 2) AS `Média salarial`,
		CASE (E.SALARY) AS 'Senioridade'
	FROM hr.employees AS E
		INNER JOIN hr.jobs AS J
		ON E.JOB_ID = J.JOB_ID
	GROUP BY `Cargo`
	ORDER BY `Média salarial`, `Cargo` ASC;
*/

/*
3. Criando a estrutura básica que especifica o valor de 'Senioridade':

	SELECT
		J.JOB_TITLE AS 'Cargo',
		ROUND(AVG(E.SALARY), 2) AS `Média salarial`,
		CASE
			WHEN caso_1 THEN valor_1
			WHEN caso_2 THEN valor_2
			WHEN caso_3 THEN valor_3
			ELSE valor_4
		END AS 'Senioridade'
	FROM hr.employees AS E
		INNER JOIN hr.jobs AS J
		ON E.JOB_ID = J.JOB_ID
	GROUP BY `Cargo`
	ORDER BY `Média salarial`, `Cargo` ASC;
*/

-- 4. Agora, com as condições e valores extraidos do enunciado:

SELECT 
    J.JOB_TITLE AS 'Cargo',
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS E
        INNER JOIN
    hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial` , `Cargo`;
