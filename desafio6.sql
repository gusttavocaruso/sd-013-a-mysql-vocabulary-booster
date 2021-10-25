SELECT 
    CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) AS 'Nome completo',
    jobs.JOB_TITLE AS 'Cargo',
    hist.START_DATE AS 'Data de início do cargo',
    depart.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees employ,
    hr.jobs jobs,
    hr.job_history hist,
    hr.departments depart
WHERE
    jobs.JOB_ID = hist.JOB_ID
        AND depart.DEPARTMENT_ID = hist.DEPARTMENT_ID
        AND employ.EMPLOYEE_ID = hist.EMPLOYEE_ID
ORDER BY (`Nome completo`) DESC , JOB_TITLE ASC;
