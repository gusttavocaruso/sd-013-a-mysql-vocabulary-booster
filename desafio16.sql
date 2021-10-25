USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailIN VARCHAR(40))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_quantity INT;

SET @id_employee = (SELECT EMPLOYEE_ID FROM hr.employees WHERE EMAIL = emailIN);

SELECT COUNT(*) INTO jobs_quantity FROM hr.job_history
WHERE EMPLOYEE_ID = @id_employee
GROUP BY EMPLOYEE_ID;
RETURN jobs_quantity;

END $$

DELIMITER ;


