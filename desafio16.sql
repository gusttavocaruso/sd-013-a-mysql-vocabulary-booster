DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(500))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(*) FROM hr.job_history AS h
INNER JOIN hr.employees AS e ON h.employee_id = e.employee_id
WHERE e.email = email
GROUP BY h.employee_id
INTO total_empregos;
RETURN total_empregos;
END
$$ DELIMITER ;
