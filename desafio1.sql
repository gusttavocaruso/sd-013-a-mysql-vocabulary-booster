-- 1 - Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa

/*
1. A estrutura básica da nossa query:

	SELECT (coluna 1 AS __, CASE coluna 2 (condição) AS __)
	FROM (tabela 1) AS __
	INNER JOIN (tabela 2) AS __
	ON (condição)
	ORDER BY (coluna);
*/

/*
2. Substituindo com as informações extraidas do enunciado:

	SELECT
		C.COUNTRY_NAME AS País,
		CASE R.REGION_NAME (condição) AS `Status Inclusão`
	FROM hr.countries AS C
		INNER JOIN hr.regions AS R
		ON C.region_id = R.region_id
	ORDER BY COUNTRY_NAME;
*/

-- 3. Por último, especificando a condição do valor da coluna `Status Inclusão`:
SELECT
  C.COUNTRY_NAME AS País,
  CASE R.REGION_NAME
    WHEN 'Europe' THEN 'incluído'
        ELSE 'não incluído'
    END AS `Status Inclusão`
FROM hr.countries AS C
  INNER JOIN hr.regions AS R
  ON C.region_id = R.region_id
ORDER BY COUNTRY_NAME;
