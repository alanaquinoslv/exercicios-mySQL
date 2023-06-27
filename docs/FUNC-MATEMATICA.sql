-- somando ou fazendo qualquer cálculo
SELECT UnitPrice - LineTotal
FROM Sales.SalesOrderDetail;

-- arredondando valores (de onde vem a info, precisao decimal)
SELECT ROUND(LineTotal, 2)
FROM Sales.SalesOrderDetail;

-- raiz quadrada
SELECT SQRT(LineTotal)
FROM Sales.SalesOrderDetail;

SELECT ROUND(TotalDue, 3)
FROM SALEs.SalesOrderHeader