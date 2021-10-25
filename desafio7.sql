SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
    jh.start_date AS 'Data de inicio',
    e.salary AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.start_date) IN (1 , 2,3)
ORDER BY CONCAT(e.first_name, ' ', e.last_name) ASC , jh.start_date ASC;
