SELECT 
    UPPER(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
    j.start_date AS 'Data de início',
    e.salary AS 'Salário'
FROM
    hr.job_history AS j
        INNER JOIN
    hr.employees AS e ON j.employee_id = e.employee_id
WHERE
    MONTH(j.START_DATE) IN (01 , 02, 03)
ORDER BY `Nome completo` , `Data de início`;
