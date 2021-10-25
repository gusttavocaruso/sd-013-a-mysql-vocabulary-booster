SELECT 
    CONCAT(e.First_name, ' ', e.Last_name) 'Nome completo',
    (SELECT 
            j.JOB_TITLE
        FROM
            hr.jobs AS j
        WHERE
            j.JOB_ID = h.JOB_ID
                AND e.EMPLOYEE_ID = h.EMPLOYEE_ID) AS Cargo,
    h.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME Departamento
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
        INNER JOIN
    hr.departments AS d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
