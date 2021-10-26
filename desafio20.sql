USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN input_email VARCHAR(50))
BEGIN
SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
dep.DEPARTMENT_NAME AS 'Departamento',
job.JOB_TITLE AS 'Cargo'
FROM job_history AS `jbh`
INNER JOIN employees AS `emp`
ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN departments AS `dep`
ON dep.DEPARTMENT_ID = emp.DEPARTMENT_ID
INNER JOIN jobs AS `job`
ON job.JOB_ID = jbh.JOB_ID
WHERE emp.EMAIL = input_email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
