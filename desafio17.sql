DELIMITER $$

CREATE TRIGGER update_column_orderDate
	BEFORE INSERT ON orders
	FOR EACH ROW
BEGIN 
	SET NEW.OrderDate = DATE(now());
    END $$
    
DELIMITER ;