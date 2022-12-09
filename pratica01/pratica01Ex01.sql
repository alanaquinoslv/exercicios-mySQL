create database sprint1;
use sprint1;
create table atleta (
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int 
);

insert into atleta values
(23, 'Alan Silva', 'Natação', 8),
(18, 'Tiago Medeiros', 'Natação', 3),
(4, 'Carlos Damasceno', 'Tiro ao alvo', 2),
(9, 'Douglas Fernandes', 'Tiro ao alvo', 1),
(2, 'Pedro Antunes', 'Surf', 5),
(72, 'João Barbosa', 'Surf', 9),
(15, 'Alice Souza', 'Vôlei', 6),
(17, 'Ingrid Almeida', 'Vôlei', 6);

-- Exibir todos os dados da tabela.
select * from atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
select nome, qtdMedalha from atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.
select * from atleta where modalidade = 'Natação';

-- Exibir os dados da tabela ordenados pela modalidade.
select * from atleta order by modalidade;
 
 -- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente
select * from atleta order by qtdMedalha desc;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
select * from atleta where nome like '%s%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
select * from atleta where nome like 'A%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
select * from atleta where nome like '%o %';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
select * from atleta where nome like '%r_';

-- Eliminar a tabela.
drop table atleta;



