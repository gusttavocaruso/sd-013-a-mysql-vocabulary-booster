DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailPessoa VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE recebiEmail INT;
    SELECT
		COUNT(*)
	FROM hr.employees AS E
	INNER JOIN hr.job_history AS H 
    ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
	WHERE E.EMAIL = emailPessoa
    INTO recebiEmail;
    RETURN recebiEmail;
END $$
DELIMITER ;
