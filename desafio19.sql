USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(input_month INT, input_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE employees_quantity INT;
SELECT COUNT(*) AS 'total'
FROM employees WHERE MONTH(HIRE_DATE) = input_month AND YEAR(HIRE_DATE) = input_year
INTO employees_quantity;
RETURN employees_quantity;
END $$

DELIMITER ;
