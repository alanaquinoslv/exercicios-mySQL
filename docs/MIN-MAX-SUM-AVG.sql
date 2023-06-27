SELECT TOP 10 sum(linetotal) as 'Soma total'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 min(linetotal) as 'Menor valor'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 max(linetotal) as 'Maior valor'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 AVG(linetotal) as 'Média de valor produto'
FROM Sales.SalesOrderDetail;

SELECT SalesOrderID, 10 max(linetotal) as "10 maiores valores de venda"
FROM Sales.SalesOrderDetail
GROUP BY saleOrderId
ORDER BY SalesOrderID desc;