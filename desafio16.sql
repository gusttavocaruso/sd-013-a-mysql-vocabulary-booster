DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(strEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant DOUBLE;
SELECT e.EMPLOYEE_ID
FROM hr.employees as e
WHERE e.EMAIL LIKE CONCAT('%', strEmail, '%') INTO @employee_id;
SELECT COUNT(j.EMPLOYEE_ID)
FROM hr.job_history AS j
WHERE j.EMPLOYEE_ID = @employee_id INTO quant;
RETURN quant;
END $$

DELIMITER ;
