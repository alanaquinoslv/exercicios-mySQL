-- INNER JOIN
-- retorna resultados que correspondem (existem) tanto na tabela 1 quanto na 2, onde são iguais
SELECT * FROM nome1 n1
INNER JOIN nome2 n2
ON n1.nome = n2.nome;

-- FULL OUTER JOIN
-- retorna conjunto de todos registros correspondentes da n1 e n2 quando são iguais.
-- além disso se não houver valor correspondente ele irá preencher com null
-- mysql não tem full outer join, para ter o mesmo resultado, é necessário
-- Este comando SQL primeiro usa um LEFT JOIN para obter todas as linhas da tabela "nome1" e as linhas correspondentes na tabela "nome2". Em seguida, usa um RIGHT JOIN para obter todas as linhas da tabela "nome2" que não foram correspondidas pela primeira consulta (ou seja, as linhas que não possuem correspondência na tabela "nome1"). Finalmente, usa a cláusula WHERE para selecionar apenas as linhas em que a coluna "nome" da tabela "nome1" é nula, o que significa que elas não têm correspondência na tabela "nome2".
-- Este comando SQL simula um FULL OUTER JOIN, retornando todas as linhas de ambas as tabelas, independentemente de terem correspondências ou não.

SELECT *
FROM nome1 n1
LEFT JOIN nome2 n2 ON n1.nome = n2.nome
UNION ALL
SELECT *
FROM nome1 n1
RIGHT JOIN nome2 n2 ON n1.nome = n2.nome
WHERE n1.nome IS NULL;


-- LEFT OUTER JOIN
-- retorna conjunto de todos registros da tabela n1 e além disso, os correspondentes (quando disponíveis) na tabela n2. Se não houver registro correspondente ele preenche com null
-- além disso se não houver valor correspondente ele irá preencher com null
SELECT * FROM nome1 n1
LEFT JOIN nome2 n2
ON n1.nome = n2.nome;

-- RIGHT OUTER JOIN
-- retorna conjunto de todos registros da tabela n2 e além disso, os correspondentes (quando disponíveis) na tabela n1. Se não houver registro correspondente ele preenche com null
-- além disso se não houver valor correspondente ele irá preencher com null
-- mesma coisa do left, só que do lado contrário
SELECT * FROM nome1 n1
RIGHT JOIN nome2 n2
ON n1.nome = n2.nome;

-- saber quais pessoas tem cartao crédito registrado
-- pegando a diferença
SELECT * FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL;
-- INNER JOIN : 19.118
-- LEFT JOIN : 19.972