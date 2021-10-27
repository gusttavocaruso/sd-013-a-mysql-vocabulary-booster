USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(45))
BEGIN
  SELECT COUNT(H.JOB_ID) AS total_empregos
  FROM hr.job_history AS H
  INNER JOIN hr.employees AS E
  ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
  WHERE E.EMAIL LIKE email;
END $$

DELIMITER ;
