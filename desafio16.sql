USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(45))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_total INT;
  SELECT COUNT(H.JOB_ID) AS total_empregos
  FROM hr.job_history AS H
  INNER JOIN hr.employees AS E
  ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
  WHERE E.EMAIL LIKE email
  INTO quantidade_total;
  RETURN quantidade_total;
END $$

DELIMITER ;
