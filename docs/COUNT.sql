COUNT
SELECT COUNT(*) FROM Person.Person;

SELECT COUNT(DISTINCT title) FROM Person.Person;

SELECT * FROM Production.Product

SELECT COUNT(productID) AS 'Quantidade de produtos'
FROM Production.Product;

SELECT COUNT(size) AS 'Tamanhos de produtos' 
FROM Production.Product;

SELECT COUNT(DISTINCT size) AS 'Tamanhos diferentes de produtos' 
FROM Production.Product;
