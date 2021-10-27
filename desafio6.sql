SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
jb.JOB_TITLE AS `Cargo`, ht.START_DATE AS `Data de início do cargo`,
dp.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS ht
INNER JOIN hr.employees AS emp ON emp.EMPLOYEE_ID = ht.EMPLOYEE_ID
INNER JOIN hr.jobs AS jb ON jb.JOB_ID = ht.JOB_ID
INNER JOIN hr.departments AS dp ON dp.DEPARTMENT_ID = ht.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;

-- base do codigo retirada dos video do Course, dia 20.2