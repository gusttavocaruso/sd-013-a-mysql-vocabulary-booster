USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantify INT;
SELECT COUNT(jh.employee_id) FROM hr.job_history AS jh WHERE jh.EMPLOYEE_ID = (
SELECT e.EMPLOYEE_ID FROM hr.employees AS e WHERE e.EMAIL = email) INTO quantify;
RETURN quantify;
END $$;
DELIMITER ;
