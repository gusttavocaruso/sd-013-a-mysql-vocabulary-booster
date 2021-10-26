DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNs INT READS SQL DATA
BEGIN
DECLARE funcionarios_contratados INT;
SELECT COUNT(*) FROM hr.employees
WHERE MONTH(hire_date) = mes AND YEAR(hire_date) = ano
INTO funcionarios_contratados;
RETURN funcionarios_contratados;
END$$

DELIMITER ;
