-- soma por id de oferta especial
SELECT specialOfferId, SUM(unitPrice) AS 'SOMA'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

-- contagem de id's
SELECT ProductID, COUNT(ProductID) AS "Contagem de ID'S"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- contagem de nomes
SELECT firstName, COUNT(firstname) as "Contagem de nomes"
FROM Person.Person
GROUP BY FirstName;

-- média do preço de produtos pratas
SELECT color, AVG(listprice) as "Média de preço dos produtos pratas"
FROM Production.Product
WHERE Color = 'silver'
GROUP BY Color

-- contagem de middlenames
SELECT middleName, Count(Middlename) AS "Quantas pessoas tem o mesmo middlename"
FROM Person.Person
GROUP BY MiddleName;

-- média de venda por produto
SELECT productID, AVG(orderQty) as "Média de venda produto"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- 10 maiores vendas total por produto do maior para menor
SELECT TOP 10 ProductID, sum(linetotal) as "10 maiores valores de venda"
FROM Sales.SalesOrderDetail
GROUP BY productID
ORDER BY sum(linetotal) desc;

-- quantidade media de produtos cadastrados na ordem de serviço
SELECT productID, COUNT(productID) as "contagem", AVG(orderqty) as "media" 
FROM Production.WorkOrder
GROUP BY ProductID;