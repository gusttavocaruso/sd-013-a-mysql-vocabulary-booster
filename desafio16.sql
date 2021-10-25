DELIMITER $$ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30)) RETURNS INT READS SQL DATA BEGIN
DECLARE previous_jobs INT;
SELECT COUNT(j.JOB_ID) INTO previous_jobs
FROM hr.job_history j
WHERE EMPLOYEE_ID = (
    SELECT e.EMPLOYEE_ID
    FROM hr.employees e
    WHERE e.EMAIL LIKE email
  );
RETURN previous_jobs;
END $$ DELIMITER;