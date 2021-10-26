SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.job_history
        INNER JOIN
    hr.employees ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
WHERE
    MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) , START_DATE
