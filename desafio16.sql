USE hr;
DELIMITER //

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE JOB_QNT INT;
	SELECT 
		COUNT(*)
	FROM job_history jh
    INNER JOIN employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE e.EMAIL = email INTO JOB_QNT;
		RETURN JOB_QNT;
END //

DELIMITER ;