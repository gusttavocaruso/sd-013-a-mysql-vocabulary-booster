USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN jobOffice VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(e.SALARY), 2) `Média salarial`
  FROM hr.employees e
  WHERE jobOffice = (
    SELECT j.JOB_TITLE FROM hr.jobs j WHERE e.JOB_ID = j.JOB_ID
  )
  GROUP BY e.JOB_ID;
END $$;

DELIMITER ;
