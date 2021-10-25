SELECT

CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',

JOB_TITLE AS 'Cargo',

START_DATE AS 'Data de início do cargo',

DEPARTMENT_NAME AS 'Departamento'

FROM hr.job_history AS Jhistory

INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = Jhistory.EMPLOYEE_ID

INNER JOIN hr.jobs AS jobs ON Jhistory.JOB_ID = jobs.JOB_ID

INNER JOIN hr.departments AS departments ON Jhistory.DEPARTMENT_ID = departments.DEPARTMENT_ID

ORDER BY `Nome completo` DESC, Cargo ;
