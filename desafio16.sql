USE hr; 
DELIMITER $$ 

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(100))
BEGIN 
    SELECT COUNT(*) 
    FROM hr.employees AS e
    INNER JOIN  hr.job_history AS jh 
    ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = email;    
END $$ 

DELIMITER ;
