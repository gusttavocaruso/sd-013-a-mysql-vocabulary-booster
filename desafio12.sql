SELECT
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo funcionário 1`,
    e.SALARY AS `Salário funcionário 1`,
    e.PHONE_NUMBER AS `Telefone funcionário 1`,
	CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo funcionário 2`,
    emp.SALARY AS `Salário funcionário 2`,
    emp.PHONE_NUMBER AS `Telefone funcionário 2`
FROM employees e, employees emp
WHERE e.JOB_ID = emp.JOB_ID AND e.EMPLOYEE_ID != emp.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1` ASC,
`Nome completo funcionário 2` ASC;
