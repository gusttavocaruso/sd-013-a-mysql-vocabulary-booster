USE hr;

DELIMITER
$$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(40))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*)
    FROM job_history AS h
    INNER JOIN employees as e
    ON e.EMAIL = email
    AND e.EMPLOYEE_ID = h.EMPLOYEE_ID
    INTO total;
    RETURN total;
END
$$

DELIMITER ;
