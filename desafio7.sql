SELECT 
    UCASE(CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME)) AS 'Nome completo',
    hist.START_DATE AS 'Data de início',
    employ.SALARY AS 'Salário'
FROM
    hr.employees employ,
    hr.job_history hist
WHERE
    (MONTH(hist.START_DATE) = 1
        OR MONTH(hist.START_DATE) = 2
        OR MONTH(hist.START_DATE) = 3)
        AND employ.EMPLOYEE_ID = hist.EMPLOYEE_ID
ORDER BY `Nome completo` ,`Data de início`;
