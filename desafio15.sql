USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(45))
BEGIN
  SELECT 
    ROUND(AVG(e.salary),2) AS 'Média Salarial' 
  FROM hr.employees AS e 
  INNER JOIN hr.jobs AS j
  ON j.job_title = cargo AND e.job_id = j.job_id;
END$$ 

DELIMITER ;

call buscar_media_por_cargo('Programmer');