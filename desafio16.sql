DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employee VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(*) 
FROM hr.job_history AS JH, hr.employees AS E
WHERE E.EMPLOYEE_ID = JH.EMPLOYEE_ID AND E.EMAIL = email_employee INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$

DELIMITER ;