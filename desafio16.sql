DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(500))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE total_empregos INT;
SELECT COUNT(*) FROM hr.job_history AS H
INNER JOIN hr.employees AS E ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL= email
GROUP BY H.EMPLOYEE_ID
INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
