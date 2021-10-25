DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos INT;
SELECT COUNT(jh.employee_id)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email INTO empregos;
RETURN empregos;
END $$

DELIMITER ;
