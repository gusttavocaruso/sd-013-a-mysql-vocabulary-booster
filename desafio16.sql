DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(`Email` VARCHAR(500))

RETURNS INT READS SQL DATA

BEGIN

DECLARE total_empregos INT;
SELECT COUNT(*) FROM hr.job_history AS Jhistory
INNER JOIN hr.employees AS employees ON Jhistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = `Email`
GROUP BY Jhistory.EMPLOYEE_ID

INTO total_empregos;
RETURN total_empregos;

END $$

DELIMITER ;
