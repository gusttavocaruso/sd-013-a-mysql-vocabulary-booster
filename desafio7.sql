SELECT
    UCASE(concat(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
    jhistory.START_DATE AS `Data de início`,
    employees.SALARY AS `Salário`
FROM
    hr.job_history AS jhistory
    INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
WHERE
    month(jhistory.START_DATE) <= 3 and month(jhistory.START_DATE) >= 1
ORDER BY
    `Nome completo` ASC;
