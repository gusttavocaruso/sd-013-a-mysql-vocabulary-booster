USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20))
BEGIN
  SELECT ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
  FROM hr.employees E
  INNER JOIN hr.jobs J
  ON E.JOB_ID = J.JOB_ID
  WHERE J.JOB_TITLE LIKE cargo
  GROUP BY J.JOB_TITLE;
END $$

DELIMITER ;
