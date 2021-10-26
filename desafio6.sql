SELECT
    concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
    jobs.JOB_TITLE AS `Cargo`,
    jhistory.START_DATE AS `Data de início do cargo`,
    departments.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.job_history AS jhistory
    INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = jhistory.JOB_ID
    INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
    INNER JOIN hr.departments AS departments ON departments.DEPARTMENT_ID = jhistory.DEPARTMENT_ID
ORDER BY
    `Nome completo` DESC,
    `Cargo`;
