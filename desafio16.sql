USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(40))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobs_total INT;
    SELECT COUNT(*)
    FROM job_history AS JH
    INNER JOIN employees as E
    ON E.EMAIL = employee_email
    AND JH.EMPLOYEE_ID = E.EMPLOYEE_ID
    INTO jobs_total;
    RETURN jobs_total;
END $$

DELIMITER ;
