-- todos primeiros nomes com +10
SELECT FirstName, count(FirstName) as "quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING count(FirstName) > 10;

-- quais produtos que no total de vendas estao entre 162k e 500k
SELECT productid, sum(linetotal) as "total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) between 162000 and 500000;

-- todos primeiros nomes com +10, porém só com título mr
SELECT FirstName, count(FirstName) as "quantidade"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING count(FirstName) > 10;

-- provincias com maior numero de cadastros, encontrar as que aparecem mais que 1000x
SELECT StateProvinceID, count(StateProvinceID) as "quantidade"
FROM Person.Address
GROUP BY StateProvinceID
HAVING count(StateProvinceID) > 1000;

-- quais produtos não estão trazendo em média no minimo 1milhao total de vendas
SELECT ProductID, AVG(LineTotal) as "quantidade"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000;