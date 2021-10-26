DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT 
    COUNT(*)
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS j ON e.employee_id = j.employee_id
WHERE
    e.email = email INTO result;
RETURN result;
END $$
DELIMITER ;