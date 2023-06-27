TOP
SELECT TOP 10* 
FROM Production.Product;

SELECT TOP 5 produto, SUM(quantidade) as total_vendido
 FROM vendas 
 GROUP BY produto 
 ORDER BY total_vendido DESC;

SELECT TOP 10 PERCENT produto, SUM(quantidade) as total_vendido
FROM vendas 
GROUP BY produto 
ORDER BY total_vendido DESC;
