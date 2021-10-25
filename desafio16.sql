DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_func varchar(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_emprego INT;
SELECT COUNT(*) FROM hr.job_history
WHERE EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM hr.employees
WHERE EMAIL = email_func) INTO quantidade_emprego;
RETURN quantidade_emprego;
END $$
DELIMITER ;
