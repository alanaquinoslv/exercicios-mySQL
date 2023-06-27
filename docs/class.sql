DISTINCT = usado para omitir dados duplicados
EX: SELECT DISTINCT * FROM table;

WHERE = Ele é geralmente usado com o comando SELECT e permite que o usuário especifique uma condição que deve ser verdadeira para que os dados correspondentes sejam retornados na consulta.
EX: Por exemplo, se tivermos uma tabela de clientes e quisermos selecionar apenas os clientes que vivem em uma cidade específica, podemos usar o comando WHERE da seguinte maneira:

SELECT * FROM clientes WHERE cidade = 'São Paulo';

OPERADORES
=, !=, < <=, >, >= Operadores numéricos padrão col_name != 4
BETWEEN … E … O número está dentro do intervalo de dois valores (inclusive) col_name BETWEEN 1,5 E 10,5
NOT BETWEEN … E … O número não está dentro do intervalo de dois valores (inclusive) col_name NOT BETWEEN 1 E 10
IN (…) O número existe em uma lista col_name IN (2, 4, 6)
NOT IN (…) O número não existe em uma lista col_name NOT IN (1, 3, 5)

RESTRIÇÕES
= Comparação exata de strings com distinção entre maiúsculas e minúsculas (observe os iguais simples) col_name = "abc"
!= ou <> Comparação de desigualdade de string exata com distinção entre maiúsculas e minúsculas col_name != "abcd"
LIKE Comparação de string exata insensível a maiúsculas e minúsculas col_name LIKE "ABC"
NOT LIKE Comparação de desigualdade de string exata insensível a maiúsculas col_name NOT LIKE "ABCD"
% Usado em qualquer lugar em uma string para corresponder a uma sequência de zero ou mais caracteres (somente com LIKE ou NOT LIKE) col_name LIKE "%AT%"
(corresponde a "AT", "ATTIC", "CAT" ou mesmo "BATS")
_ Usado em qualquer lugar em uma string para corresponder a um único caractere (somente com LIKE ou NOT LIKE) col_name LIKE "AN_"
(corresponde a "AND", mas não a "AN")
IN (…) String existe em uma lista col_name IN ("A", "B", "C")
NOT IN (…) String não existe em uma lista col_name NOT IN ("D", "E", "F")

COUNT
O comando COUNT é usado em SQL para contar o número de registros que correspondem a uma determinada condição em uma tabela. Ele pode ser usado com uma cláusula WHERE para contar registros que atendam a uma determinada condição ou sem a cláusula WHERE para contar todos os registros em uma tabela.
Por exemplo, se tivermos uma tabela de produtos e quisermos contar quantos produtos temos em estoque, podemos usar o comando COUNT da seguinte maneira:

SELECT COUNT(*) AS total_produtos FROM produtos;

Neste exemplo, a cláusula COUNT é usada para contar todos os registros da tabela produtos. O asterisco (*) indica que queremos contar todos os registros e a palavra-chave AS é usada para renomear a coluna resultante como "total_produtos".
Se quisermos contar apenas os produtos que estão em estoque, podemos usar o comando COUNT da seguinte maneira:

SELECT COUNT(*) AS total_produtos_em_estoque FROM produtos WHERE quantidade_estoque > 0;

Neste exemplo, a cláusula COUNT é usada com uma cláusula WHERE para contar apenas os registros que têm quantidade de estoque maior que zero.

TOP
O comando TOP é usado em SQL para limitar o número de registros retornados em uma consulta. Ele é comumente usado em consultas SELECT e permite que o usuário especifique quantos registros deseja retornar, começando do topo da tabela.
Por exemplo, se tivermos uma tabela de produtos e quisermos selecionar os 10 produtos mais vendidos, podemos usar o comando TOP da seguinte maneira:

SELECT TOP 10 nome_produto, quantidade_vendida FROM produtos ORDER BY quantidade_vendida DESC

ORDER BY
O comando ORDER BY é usado em SQL para ordenar os resultados de uma consulta em uma ordem específica. Ele pode ser usado para classificar os resultados em ordem crescente (ASC) ou decrescente (DESC) com base em uma ou mais colunas da tabela.

Por exemplo, se tivermos uma tabela de produtos e quisermos listar todos os produtos em ordem alfabética por nome, podemos usar o comando ORDER BY da seguinte maneira:

SELECT nome_produto, preco_produto FROM produtos ORDER BY nome_produto ASC;

Neste exemplo, a cláusula ORDER BY é usada para classificar os resultados em ordem crescente (ASC) com base na coluna nome_produto. Isso resultará em uma lista de produtos em ordem alfabética pelo nome do produto.
Também é possível classificar os resultados em ordem decrescente (DESC) usando a cláusula ORDER BY. Por exemplo, se quisermos listar todos os produtos em ordem decrescente de preço, podemos usar o comando ORDER BY da seguinte maneira:

SELECT nome_produto, preco_produto FROM produtos ORDER BY preco_produto DESC;

Neste exemplo, a cláusula ORDER BY é usada para classificar os resultados em ordem decrescente (DESC) com base na coluna preco_produto. Isso resultará em uma lista de produtos em ordem decrescente de preço.
O comando ORDER BY é uma das cláusulas mais usadas em SQL e é frequentemente usado em conjunto com outras cláusulas como WHERE, GROUP BY e HAVING para gerar informações mais precisas e relevantes sobre os dados em uma tabela.

BETWEEN 
O comando BETWEEN é usado em SQL para selecionar valores dentro de um intervalo específico. Ele é usado com a cláusula WHERE e é especialmente útil quando queremos selecionar registros que têm valores em uma faixa específica de uma determinada coluna.
Por exemplo, se tivermos uma tabela de funcionários e quisermos selecionar todos os funcionários que foram contratados entre 2019 e 2021, podemos usar o comando BETWEEN da seguinte maneira:

SELECT * FROM funcionarios WHERE data_contratacao BETWEEN '2019-01-01' AND '2021-12-31';

Neste exemplo, a cláusula BETWEEN é usada para selecionar todos os funcionários que foram contratados entre 2019 e 2021. A condição é especificada usando a sintaxe "coluna BETWEEN valor1 AND valor2", onde a coluna é a coluna na tabela que estamos avaliando e valor1 e valor2 são os valores que definem o intervalo que estamos procurando.
Também é possível usar o comando NOT BETWEEN para selecionar valores fora de um intervalo específico. Por exemplo, se quisermos selecionar todos os funcionários que não foram contratados entre 2019 e 2021, podemos usar o comando NOT BETWEEN da seguinte maneira:

SELECT * FROM funcionarios WHERE data_contratacao NOT BETWEEN '2019-01-01' AND '2021-12-31';

Neste exemplo, a cláusula NOT BETWEEN é usada para selecionar todos os funcionários que não foram contratados entre 2019 e 2021.
O comando BETWEEN é uma das cláusulas mais usadas em SQL e é frequentemente usado em conjunto com outras cláusulas como ORDER BY, GROUP BY e HAVING para gerar informações mais precisas e relevantes sobre os dados em uma tabela.

IN / NOT IN
usamos juntamente do where para saber se correspondem com qualquer valor passado na lista de valores. Facilita para não utilizar operadores. 
EX: 
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (	2,7,13);

LIKE 
quando quer encontrar algo no banco que você sabe parte do nome ou conteudo

O comando LIKE é usado em SQL para procurar padrões em uma determinada coluna de uma tabela. Ele é usado com a cláusula WHERE e é especialmente útil quando queremos selecionar registros que contêm um padrão específico, como um nome ou uma palavra-chave.
Por exemplo, se tivermos uma tabela de clientes e quisermos selecionar todos os clientes cujo nome começa com a letra "A", podemos usar o comando LIKE da seguinte maneira:

SELECT * FROM clientes WHERE nome LIKE 'A%';

Neste exemplo, a cláusula LIKE é usada para selecionar todos os clientes cujo nome começa com a letra "A". A condição é especificada usando a sintaxe "coluna LIKE padrão", onde a coluna é a coluna na tabela que estamos avaliando e o padrão é o padrão que estamos procurando. O símbolo "%" é usado como um caractere curinga que representa qualquer sequência de caracteres.

SELECT *
FROM Person.Person
WHERE FirstName like '%ro_';

Com _ substitui apenas um caracter

MIN-MAX-SUM-AVG
funções que agregam ou combinam dados de uma tabela em 1 resultado só

SELECT TOP 10 sum(linetotal) as 'Soma total'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 min(linetotal) as 'Menor valor'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 max(linetotal) as 'Maior valor'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 AVG(linetotal) as 'Média de valor produto'
FROM Sales.SalesOrderDetail;

GROUP BY
divide resultado da pesquisa em grupos; para cada grupo pode aplicar função de agregação 
Ex: soma de itens; contar numero de itens no grupos
SELECT column1, funcaoAgregacao (coluna2) FROM table1 GROUP BY column1;

O comando GROUP BY é uma cláusula em SQL que é usada para agrupar os resultados da consulta por um ou mais campos. É comumente usado com funções de agregação, como COUNT, SUM, AVG, MIN e MAX para gerar um resumo dos dados em uma tabela.
Por exemplo, se tivermos uma tabela de vendas que inclua informações sobre o produto, a quantidade vendida e o preço de venda, podemos usar a cláusula GROUP BY para agrupar as vendas por produto e, em seguida, usar a função SUM para calcular o total vendido de cada produto. O comando seria assim:

SELECT produto, SUM(quantidade * preco) as total_vendido FROM vendas GROUP BY produto;

Neste exemplo, a cláusula GROUP BY é usada para agrupar as vendas por produto e a função SUM é usada para calcular o total vendido de cada produto. O resultado será uma tabela com duas colunas: uma com o nome do produto e outra com o total vendido.
Também é possível agrupar por mais de um campo usando a cláusula GROUP BY. Por exemplo, se tivermos uma tabela de vendas que inclua informações sobre o produto, a data da venda e o preço de venda, podemos agrupar as vendas por produto e data da seguinte maneira:

SELECT produto, data_venda, SUM(quantidade * preco) as total_vendido FROM vendas GROUP BY produto, data_venda;

Neste exemplo, a cláusula GROUP BY é usada para agrupar as vendas por produto e data da venda e a função SUM é usada para calcular o total vendido de cada combinação produto-data.
O comando GROUP BY é uma ferramenta poderosa para gerar resumos de dados em SQL e pode ser usado em conjunto com outras cláusulas, como ORDER BY, para classificar os resultados de maneira mais precisa e relevante.

-- No entanto, é comum que as cláusulas SELECT, FROM e WHERE apareçam primeiro na consulta, seguidas por outras cláusulas, como GROUP BY, ORDER BY e outras funções de agregação.

HAVING 
é usado em junção do group by, para filtrar resultados de um agrupamento.
funciona como um where para dados agrupados.
diferença entre having e where = é que o having é aplicado depois que os dados já foram agrupados, enquanto o WHERE é aplicado antes de serem agrupados

SELECT coluna1, funcaoAgregacao(coluna2) FROM table1
GROUP BY coluna1
HAVING condicao;

INNER JOIN
As funções JOIN em SQL são usadas para combinar dados de duas ou mais tabelas em uma única tabela. As duas tabelas são combinadas com base em uma ou mais colunas comuns. Existem vários tipos de JOIN disponíveis em SQL, incluindo INNER JOIN, LEFT JOIN, RIGHT JOIN e FULL OUTER JOIN.
Aqui estão alguns exemplos de como usar as funções JOIN em SQL:

    INNER JOIN:
A cláusula INNER JOIN retorna apenas os registros que possuem correspondências nas duas tabelas envolvidas. Por exemplo, se tivermos duas tabelas "clientes" e "pedidos", poderíamos usar a cláusula INNER JOIN para retornar apenas os registros que têm um cliente com um pedido associado.
SELECT *
FROM clientes
INNER JOIN pedidos
ON clientes.id = pedidos.cliente_id;

As funções JOIN em SQL são usadas para combinar dados de duas ou mais tabelas em uma única tabela. As duas tabelas são combinadas com base em uma ou mais colunas comuns. Existem vários tipos de JOIN disponíveis em SQL, incluindo INNER JOIN, LEFT JOIN, RIGHT JOIN e FULL OUTER JOIN.

Aqui estão alguns exemplos de como usar as funções JOIN em SQL:

    INNER JOIN:
A cláusula INNER JOIN retorna apenas os registros que possuem correspondências nas duas tabelas envolvidas. Por exemplo, se tivermos duas tabelas "clientes" e "pedidos", poderíamos usar a cláusula INNER JOIN para retornar apenas os registros que têm um cliente com um pedido associado.

SELECT *
FROM clientes
INNER JOIN pedidos
ON clientes.id = pedidos.cliente_id;

    LEFT JOIN:
A cláusula LEFT JOIN retorna todos os registros da tabela da esquerda e os registros correspondentes da tabela da direita. Se não houver correspondência, os valores da tabela da direita serão NULL. Por exemplo, se tivermos uma tabela "clientes" e uma tabela "pedidos", poderíamos usar a cláusula LEFT JOIN para retornar todos os clientes, independentemente de terem ou não um pedido associado.

SELECT *
FROM clientes
LEFT JOIN pedidos
ON clientes.id = pedidos.cliente_id;


    RIGHT JOIN:
A cláusula RIGHT JOIN retorna todos os registros da tabela da direita e os registros correspondentes da tabela da esquerda. Se não houver correspondência, os valores da tabela da esquerda serão NULL. Por exemplo, se tivermos uma tabela "clientes" e uma tabela "pedidos", poderíamos usar a cláusula RIGHT JOIN para retornar todos os pedidos, independentemente de terem ou não um cliente associado.

SELECT *
FROM clientes
RIGHT JOIN pedidos
ON clientes.id = pedidos.cliente_id;

    FULL OUTER JOIN:
A cláusula FULL OUTER JOIN retorna todos os registros de ambas as tabelas, combinando-os com base na coluna comum. Se não houver correspondência, os valores serão NULL. Por exemplo, se tivermos uma tabela "clientes" e uma tabela "pedidos", poderíamos usar a cláusula FULL OUTER JOIN para retornar todos os clientes e todos os pedidos, independentemente de terem correspondências.

SELECT *
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.id = pedidos.cliente_id;

 ** É NECCESÁRIO TER COLUNAS EM COMUM

 UNION
 -- COMBINA 2+ RESULTADOS DE SELECT DIFERENTES EM 1 MESMO 
 -- remove resultados duplicados, a menos que insira o ALL 
 SELECT coluna1, coluna2
 FROM tabela1
 UNION
 SELECT coluna1, coluna2
 FROM tabela2;

 DATEPART
A função DATEPART() é uma função do SQL que permite extrair uma parte específica (como ano, mês, dia, hora, minuto, segundo) de uma data ou hora.
A sintaxe básica da função DATEPART() é a seguinte:

DATEPART(part, date)

Onde "part" é a parte específica da data ou hora que se deseja extrair, e "date" é a data ou hora da qual se deseja extrair essa parte.
Por exemplo, para extrair o ano de uma data, pode-se usar a seguinte consulta:

SELECT DATEPART(year, '2023-05-07') as Ano;

Isso retornará o valor 2023.

Alguns exemplos de partes que podem ser extraídas com a função DATEPART() são:

    year: ano
    quarter: trimestre
    month: mês
    dayofyear: dia do ano
    day: dia
    weekday: dia da semana (1 para segunda-feira, 2 para terça-feira, e assim por diante)
    hour: hora
    minute: minuto
    second: segundo

A função DATEPART() é útil para filtrar e agrupar dados por período de tempo específico em consultas SQL, bem como para realizar cálculos envolvendo datas e horas.

SUBQUERY/SUBSELECT
Uma subquery (também conhecida como subseleção ou subconsulta) é uma consulta SQL aninhada dentro de outra consulta SQL. Em outras palavras, é uma consulta que é incorporada em outra consulta para fornecer resultados mais precisos ou refinados.
A subquery é usada dentro de uma cláusula WHERE, HAVING ou FROM da consulta externa. Ela é usada para fornecer um conjunto de resultados que é então usado como entrada para a consulta externa.
Por exemplo, suponha que se tenha duas tabelas "Clientes" e "Pedidos". Pode-se usar uma subquery para selecionar todos os clientes que fizeram pedidos nos últimos 30 dias:

SELECT *
FROM Clientes
WHERE IdCliente IN (
    SELECT IdCliente
    FROM Pedidos
    WHERE DataPedido >= DATEADD(day, -30, GETDATE())
)

Neste exemplo, a subquery está incorporada na cláusula WHERE da consulta externa. A subquery seleciona todos os Ids de clientes que fizeram pedidos nos últimos 30 dias, e essa lista é usada como entrada para a cláusula IN da consulta externa, que seleciona todos os clientes que têm um Id presente na lista.
As subqueries podem ser aninhadas várias vezes, o que permite realizar consultas complexas e refinadas. Elas também podem ser usadas para calcular valores para colunas, ordenar e agrupar resultados e muitas outras tarefas.
No entanto, é importante ter cuidado ao usar subqueries, pois elas podem afetar significativamente o desempenho da consulta, especialmente se houver muitas subqueries aninhadas ou grandes conjuntos de dados. Portanto, é recomendável testar e otimizar consultas que usam subqueries para garantir que elas sejam executadas de maneira eficiente.

SELF JOIN

SELECT NOME_COLUNA 
FROM TABELA A, TABELA B
WHERE CONDICAO

TIPOS DE DADOS

SQL suporta vários tipos de dados, que podem ser usados para definir o tipo de uma coluna de uma tabela. Os principais tipos de dados em SQL incluem:

1. Numéricos: São tipos de dados que armazenam valores numéricos, como inteiros, números decimais ou números reais.

- INTEGER: valores inteiros de tamanho fixo (geralmente 4 bytes).
- BIGINT: valores inteiros maiores que o tipo INTEGER (geralmente 8 bytes).
- DECIMAL/NUMERIC: valores decimais com uma precisão específica (número de dígitos) e escala (número de casas decimais).
- FLOAT/REAL: valores numéricos com uma precisão menor que DECIMAL/NUMERIC, mas com um intervalo maior.
- DOUBLE PRECISION: valores numéricos com uma precisão dupla em relação ao FLOAT/REAL.

2. Texto e caracteres: São tipos de dados que armazenam valores de texto ou caracteres.

- CHAR: valores de caracteres de tamanho fixo.
- VARCHAR: valores de caracteres de tamanho variável.
- TEXT: valores de texto de tamanho variável.
- NCHAR/NVARCHAR/NTEXT: versões Unicode de CHAR/VARCHAR/TEXT, que permitem armazenar caracteres de vários idiomas.

3. Data e hora: São tipos de dados que armazenam valores de data e hora.

- DATE: valores de data, com a precisão de um dia.  aaaa/mm/dd
- TIME: valores de hora, com a precisão de um segundo.
- DATETIME/TIMESTAMP: valores de data e hora combinados, com a precisão de um segundo ou frações de segundo.  aaaa/mm/dd:hh:mm:ss

4. Binários: São tipos de dados que armazenam valores binários, como imagens ou arquivos.

- BINARY: valores binários de tamanho fixo. 
- VARBINARY: valores binários de tamanho variável.
- BLOB: valores binários de tamanho variável para armazenar grandes objetos binários, como imagens ou arquivos.

5. Outros tipos de dados: São tipos de dados que armazenam outros tipos de valores.

- BOOLEAN/BOOL: valores booleanos (verdadeiro ou falso).
- XML: valores de dados XML.
- JSON: valores de dados JSON.

É importante escolher o tipo de dados correto para cada coluna, a fim de garantir a precisão e a eficiência do armazenamento e da manipulação dos dados.

CREATE 
CREATE TABLE nometabela (
    coluna1 tipo_dado,
    coluna2 tipo_dado,
    coluna3 tipo_dado restricaoColuna
)

CONSTRAINTS
As constraints (restrições) em SQL são usadas para impor regras de integridade de dados em tabelas. Elas são usadas para garantir que os dados armazenados em uma tabela sejam precisos e consistentes. As principais constraints em SQL são:

    PRIMARY KEY: É usada para definir uma coluna ou um conjunto de colunas como chave primária de uma tabela. A chave primária garante que cada linha na tabela seja exclusiva e identificável.

    FOREIGN KEY: É usada para criar uma relação entre duas tabelas. A foreign key é uma coluna (ou conjunto de colunas) que faz referência à chave primária de outra tabela. Ela garante a integridade referencial entre as duas tabelas.

    UNIQUE: É usada para garantir que os valores em uma coluna (ou conjunto de colunas) sejam exclusivos. A unique constraint é semelhante à primary key, mas permite valores nulos.

    CHECK: É usada para impor uma condição específica em uma coluna. A check constraint garante que os valores inseridos na coluna atendam a uma condição específica, como valores positivos ou datas válidas.

    NOT NULL: É usada para garantir que uma coluna não aceite valores nulos. A not null constraint garante que a coluna tenha um valor obrigatório em cada linha.

    DEFAULT: força um valor padrão quando nenhum valor é passado

INSERT
INSERT INTO nomeTabela (col1, col2)
VALUES (valor1, valor2);

UPDATE
atualizar linhas
SEMPRE PASSAR WHERE
UPDATE nomeTabel
SET col1 = valor1
    col2 = valor2
WHERE condicao

DELETE
apagar algum registro
sempre usar where

DELETE FROM table
WHERE col = 'condicao'

ALTER TABLE 
alterando estrutura de uma tabela
ALTER TABLE nomeTable
ACAO    

*PRINCIPAIS ACOES ALTER TABLE
- ADD, REMOVE, OR ALTER column
- SET valores padroes para uma coluna
- ADD OU REMOVE restrições de colunas
- RENAME table

A função ALTER TABLE é usada em SQL para modificar a estrutura de uma tabela existente. Aqui está um resumo das principais ações que podem ser executadas usando a função ALTER TABLE:

1. ADD COLUMN: adiciona uma nova coluna à tabela especificada.

2. MODIFY COLUMN: modifica uma coluna existente, alterando seu tipo de dados, tamanho ou propriedades.

3. DROP COLUMN: remove uma coluna existente da tabela.

4. RENAME COLUMN: renomeia uma coluna existente na tabela.

5. ADD CONSTRAINT: adiciona uma nova constraint (restrição) à tabela, como uma chave primária ou uma chave estrangeira.

6. DROP CONSTRAINT: remove uma constraint existente da tabela.

7. RENAME TABLE: renomeia a tabela especificada.

8. ALTER TABLE ... ENABLE TRIGGER: ativa um trigger previamente desabilitado em uma tabela.

9. ALTER TABLE ... DISABLE TRIGGER: desativa um trigger previamente habilitado em uma tabela.

10. SET DEFAULT: define um valor padrão para uma coluna específica na tabela.

Essas ações podem ser usadas para modificar a estrutura de uma tabela de maneira segura e controlada. É importante lembrar que a função ALTER TABLE pode ser usada para modificar a estrutura de uma tabela existente, mas é recomendável fazer backup dos dados antes de executar qualquer alteração.

DROP TABLE
DROP TABLE nomeTable;

CHECK CONSTRAINT
CREATE TABLE CNH (
    id int, not null,
    nome varchar(30),
    idade int CHECK (idade >= 18)
);

VIEWS
tabelas criadas para consulta onde você usa outras tabelas como base para criar uma nova tabela de pesquisa com apenas dados especificos que voce precisa de uma tabela
CREATE VIEW [pessoas simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM PERSON.PERSON
WHERE Title = 'Ms.';