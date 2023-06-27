-- média de valor a pagar por mes
SELECT AVG(TotalDue) Média, DATEPART(month, OrderDate) as Mes 
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY Mes;

-- média de valor a pagar por ano
SELECT AVG(TotalDue) Média, DATEPART(month, OrderDate) as Mes 
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY Mes;