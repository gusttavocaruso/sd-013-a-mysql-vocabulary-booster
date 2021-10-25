DELIMITER $$ CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20)) BEGIN
SELECT ROUND(AVG(e.SALARY), 2)
FROM employees e
WHERE JOB_ID = (
    SELECT JOB_ID
    FROM jobs j
    WHERE j.JOB_TITLE = cargo
  );
END $$ DELIMITER;