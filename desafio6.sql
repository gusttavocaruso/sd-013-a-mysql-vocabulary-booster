SELECT 
    jh.START_DATE AS 'Data de início do cargo',
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM ((hr.job_history jh
JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
JOIN hr.jobs j ON jh.JOB_ID = j.JOB_ID)
JOIN hr.departments d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID)
ORDER BY `Nome completo` DESC, `Cargo`;
