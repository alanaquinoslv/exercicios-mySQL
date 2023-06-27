
DESAFIO FUNDAMENTOS
SELECT COUNT(listprice) AS 'Produtos com valor > 1500'
FROM Production.Product
WHERE ListPrice > 1500;

SELECT COUNT(lastname) AS 'Sobrenomes que iniciam com P'
FROM Person.Person
WHERE LastName like 'p%';

SELECT COUNT(DISTINCT city) AS 'Cidades únicas de clientes'
FROM Person.Address;

SELECT distinct (city) AS 'Cidades cadastradas'
FROM Person.Address;

SELECT count(color) as 'Qtd produtos vermelhos'
FROM Production.Product
WHERE Color = 'Red' and ListPrice between 500 and 1000;

SELECT count(name) as 'Nomes com road'
FROM Production.Product
WHERE name like '%road%';