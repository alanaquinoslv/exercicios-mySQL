show databases;
use pratica01;

create table curso (
idCuros int primary key auto_increment,
nome varchar (50),
sigla varchar (3),
coordenador varchar (50)
);

insert into curso (nome, sigla, coordenador) values 
('Anatomia', 'ANT', 'Diego'),
('Cinesiologia', 'CNS', 'Josefina'),
('Psicologia', 'PSI', 'Andre');

-- Exibir todos os dados da tabela
select * from curso;

-- Exibir apenas os coordenadores dos cursos.
select coordenador from curso;

-- Exibir apenas os dados dos cursos de uma determinada sigla.
select * from curso where sigla = 'ANT';

-- Exibir os dados da tabela ordenados pelo nome do curso.
select * from curso order by nome;

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
select * from curso order by coordenador desc;

-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
select * from curso where nome like 'a%';

-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
select * from curso where nome like '%a';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
select * from curso where nome like '_n%';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
select * from curso where nome like '%_i%';

-- Elimine a tabela.
drop table curso;