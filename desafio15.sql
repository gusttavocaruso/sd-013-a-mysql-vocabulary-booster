DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
  FROM hr.employees AS e
  INNER JOIN hr.jobs AS j ON e.job_id = j.job_id
  WHERE j.job_title = cargo
  GROUP BY e.job_id;
END $$;

DELIMITER ;
