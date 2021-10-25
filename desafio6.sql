/*SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    (SELECT 
            JOB_TITLE
        FROM
            hr.job_history AS j
        WHERE
            j.JOB_ID = e.JOB_ID) AS Cargo,
    e.HIRE_DATE AS `Data de início do cargo`,
    (SELECT 
            d.DEPARTMENT_NAME
        FROM
            hr.departments AS d
        WHERE
            d.DEPARTMENT_ID = e.DEPARTMENT_ID) AS Departamento
FROM
    hr.employees AS e
ORDER BY `Nome completo` DESC , Departamento ASC;
*/
SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS Cargo,
    jh.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS Departamento
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
        INNER JOIN
    hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Departamento ASC;
