SELECT
    CONCAT(employees.first_name,
            ' ',
            employees.last_name) AS 'Nome completo',
    jobs.job_title AS Cargo,
    job_history.start_date AS 'Data de início do cargo',
    departments.department_name AS Departamento
FROM
    employees,
    jobs,
    job_history,
    departments
WHERE
    (employees.employee_id = job_history.employee_id)
        AND (employees.job_id = jobs.job_id)
        AND (employees.department_id = departments.department_id)
ORDER BY first_name DESC , job_title;
