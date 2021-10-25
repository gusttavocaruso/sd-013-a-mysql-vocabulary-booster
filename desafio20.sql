USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employee_email VARCHAR(30))
BEGIN
SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
D.DEPARTMENT_NAME AS 'Departamento',
J.JOB_TITLE AS 'Cargo'
FROM employees AS E
INNER JOIN jobs AS J
INNER JOIN departments AS D
INNER JOIN job_history AS JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_id
AND JH.DEPARTMENT_ID = D.DEPARTMENT_ID
AND JH.JOB_ID = J.JOB_ID
WHERE E.EMAIL = employee_email
ORDER BY 2, 3;
END $$

DELIMITER ;
