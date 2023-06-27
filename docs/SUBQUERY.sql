--todos produtos cadastrados com preço acima da média
-- sempre colocar entre ()
SELECT * 
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

-- funcionarios que tem cargo de 'design engineer'
SELECT FirstName 
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Design  Engineer');

-- funcionarios que tem cargo de 'design engineer'
SELECT p.FirstName 
FROM Person.Person p
INNER JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID
AND e.JobTitle = 'Design Engineer';

-- todos endereços que estão no estado de 'Alberta'
SELECT * 
FROM Person.Address
WHERE StateProvinceID IN 
(SELECT StateProvinceID FROM Person.StateProvince
WHERE Name = 'Alberta');