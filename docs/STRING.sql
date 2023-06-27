-- nome e sobrenome separados no mesmo select
SELECT CONCAT(FirstName, ' ', LastName) 
FROM Person.Person;

-- manipulando escrita
SELECT UPPER (FirstName), LOWER(FirstName)
FROM Person.Person;

-- contando numero caracteres
SELECT LEN (FirstName)
FROM Person.Person;

-- extrair parte de uma string (índex, qtd letras)
SELECT FirstName, SUBSTRING(FirstName, 1,3)
FROM Person.Person;

-- substituir algo por outro valor (coluna, 'o que vai substituir', 'pelo que vai substituir')
SELECT REPLACE(ProductNumber, '-', '#')
FROM Production.Product;    