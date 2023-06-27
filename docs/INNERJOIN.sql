-- nomes e email
SELECT P.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person as p
INNER JOIN	Person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID;

-- nome dos produtos e informação de suas subcategorias
SELECT p.ListPrice, p.Name, ps.Name 
FROM Production.Product as p
INNER JOIN	Production.ProductSubcategory as ps
ON p.ProductSubCategoryID = ps.ProductSubcategoryID;

-- BusinessEntityID, Name, PhoneNumberTypeID, PhoneNumber
SELECT pp.BusinessEntityID, pn.Name, pn.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PersonPhone as pp
INNER JOIN Person.PhoneNumberType as pn
ON pn.PhoneNumberTypeID = pp.PhoneNumberTypeID;

-- AdressId, city, StateProvinceID, Nome estado
SELECT pa.AddressID, pa.City, ps.StateProvinceID, ps.Name as "Estate"
FROM Person.Address AS pa
INNER JOIN Person.StateProvince AS ps
ON ps.StateProvinceID = pa.StateProvinceID;