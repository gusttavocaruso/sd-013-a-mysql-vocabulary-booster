SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    jo.job_title AS Cargo,
    j.start_date AS 'Data de início do cargo',
    d.department_name AS Departamento
FROM
    hr.job_history AS j
        INNER JOIN
    hr.employees AS e ON j.employee_id = e.employee_id
        INNER JOIN
    hr.jobs AS jo ON j.job_id = jo.job_id
        INNER JOIN
    hr.departments AS d ON j.department_id = d.department_id
ORDER BY `Nome completo` DESC, Cargo;