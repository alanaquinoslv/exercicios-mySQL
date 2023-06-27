WHERE

SELECT name FROM Production.Product
WHERE Weight > 500 AND Weight <=700;

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1;

SELECT * FROM Person.Person 
WHERE FirstName = 'peter' AND LastName = 'krebs';
SELECT * FROM Person.EmailAddress
WHERE BusinessEntityID = '26';
