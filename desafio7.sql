SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    e.HIRE_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
    MONTH(h.START_DATE) IN (1 , 2, 3)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC
