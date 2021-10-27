USE w3schools;
DELIMITER $$

CREATE TRIGGER update_orderDate
  BEFORE INSERT ON orders
  FOR EACH ROW
BEGIN
  INSERT INTO orders(OrderDate)
  VALUES(NOW());
END $$

DELIMITER ;
