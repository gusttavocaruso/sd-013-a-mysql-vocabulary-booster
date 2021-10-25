USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(300))
BEGIN 
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`, D.DEPARTMENT_NAME AS `Departamento`,
J.JOB_TITLE AS `Cargo`
FROM hr.job_history AS H
INNER JOIN hr.employees AS E ON E.EMPLOYEE_ID= H.EMPLOYEE_ID
INNER JOIN hr.jobs AS J ON J.JOB_ID= H.JOB_ID
INNER JOIN hr.departments AS D ON H.DEPARTMENT_ID= D.DEPARTMENT_ID
WHERE E.EMAIL= email
ORDER BY `Departamento`,`Cargo`;
END $$

DELIMITER ;

/* Precisa ser o JOB_ID do history com o jobs para pegar os dois cargos diferentes da neena*/
