SELECT 
ProductName AS 'Produto',
Price AS 'Preço'
FROM products
WHERE ProductID IN (
SELECT ProductID
FROM w3schools.order_details
WHERE Quantity > 80)
ORDER BY Produto;
