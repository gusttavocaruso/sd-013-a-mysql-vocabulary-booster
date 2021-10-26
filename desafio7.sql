SELECT
	UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome Completo`,
	jh.START_DATE AS `Data de início`,
    e.SALARY AS `Salário`
FROM
	employees e
INNER JOIN
	job_history jh
ON
	e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN(01,02,03)
ORDER BY `Nome Completo` ASC,
`Data de início` ASC; 