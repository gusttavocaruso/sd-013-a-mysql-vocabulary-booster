USE hr;

DELIMITER $$;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT COUNT(jh.EMPLOYEE_ID)
  FROM hr.job_history jh
  WHERE jh.EMPLOYEE_ID = (
    SELECT e.EMPLOYEE_ID FROM hr.employees e
    WHERE e.EMAIL = employeeEmail
  ) INTO result;
  RETURN result;
END $$;

DELIMITER ;
