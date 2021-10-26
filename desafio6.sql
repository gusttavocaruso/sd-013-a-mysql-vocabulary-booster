SELECT
CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS 'Nome completo',
(SELECT JOB_TITLE FROM hr.jobs WHERE JOB_ID = JB_HIS.JOB_ID) AS Cargo,
START_DATE AS 'Data de início do cargo',
(SELECT DEPARTMENT_NAME FROM hr.departments WHERE JB_HIS.DEPARTMENT_ID = DEPARTMENT_ID) AS Departamento
FROM hr.job_history AS JB_HIS
INNER JOIN hr.employees AS EMP
ON EMP.EMPLOYEE_ID = JB_HIS.EMPLOYEE_ID
ORDER BY CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) DESC, Cargo ASC;
