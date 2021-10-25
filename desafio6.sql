SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    h.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history as h
    INNER join
    hr.employees as e on h.EMPLOYEE_ID = e.EMPLOYEE_ID
    INNER JOIN
    hr.departments as d on h.DEPARTMENT_ID = d.DEPARTMENT_ID
    INNER join
    hr.jobs as j on h.JOB_ID = j.JOB_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC , j.JOB_TITLE ASC;
