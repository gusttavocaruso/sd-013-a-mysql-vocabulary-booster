DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE jobs_total INT;
SELECT 
    COUNT(*)
FROM
    hr.job_history jh
        INNER JOIN
    hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    e.EMAIL LIKE email INTO jobs_total;
    RETURN jobs_total;
END $$
DELIMITER ;
