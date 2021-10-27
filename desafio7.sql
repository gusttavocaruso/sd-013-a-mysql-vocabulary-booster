SELECT 
    UCASE(CONCAT(employees.first_name,
                    ' ',
                    employees.last_name)) AS 'Nome completo',
    job_history.start_date AS 'Data de início',
    employees.salary AS Salário
FROM
    employees,
    job_history
WHERE
    (employees.employee_id = job_history.employee_id)
        AND (MONTH(job_history.start_date) BETWEEN 1 AND 3)
ORDER BY employees.first_name , job_history.start_date;
