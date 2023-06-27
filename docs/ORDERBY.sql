ORDER BY
SELECT * FROM Person.Person ORDER BY FirstName ASC;

SELECT FirstName, LastName FROM Person.Person 
ORDER BY FirstName asc, LastName desc;

SELECT TOP 10* FROM Production.Product
ORDER BY ListPrice desc;

SELECT TOP 4 name, productNumber
FROM Production.Product
ORDER BY ProductID asc;