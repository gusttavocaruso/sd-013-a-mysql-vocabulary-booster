SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS Salário
FROM
    hr.job_history jh
        INNER JOIN
    hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) = 1
        OR MONTH(jh.START_DATE) = 2
        OR MONTH(jh.START_DATE) = 3
ORDER BY `Nome completo` ASC , jh.START_DATE ASC;
