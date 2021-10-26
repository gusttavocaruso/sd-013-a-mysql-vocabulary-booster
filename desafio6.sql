SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    JOB_TITLE AS Cargo,
    START_DATE AS 'Data de início do cargo',
    DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history
        INNER JOIN
    hr.employees ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
        INNER JOIN
    hr.jobs ON hr.job_history.JOB_ID = hr.jobs.JOB_ID
        INNER JOIN
    hr.departments ON hr.departments.DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC , JOB_TITLE;
