use sprint1;

create table Curso (
idCurso int primary key auto_increment,
nome varchar (50),
sigla varchar (3),
coordenador varchar (10)
);

insert into Curso values
(null, 'Fisioterapia', 'FST', 'Roberta'), 
(null, 'Medicina', 'MED', 'Amadeu'),
(null, 'Jornalismo', 'JOR', 'Rúbens'),
(null, 'Arquitetura', 'ARQ', 'Carlos'),
(null, 'Direito', 'DIR', 'Francisco');

-- Exibir todos os dados da tabela.
select*from Curso;

-- Exibir apenas os coordenadores dos cursos.
select coordenador from Curso;

-- Exibir apenas os dados dos cursos de uma determinada sigla.
select * from Curso where sigla = 'ARQ';

-- Exibir os dados da tabela ordenados pelo nome do curso.
select * from Curso order by nome;

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
select * from Curso order by coordenador desc;

-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra
select * from Curso where nome like 'M%';

-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
select * from Curso where nome like '%a';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
select * from Curso where nome like '_o%';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
select * from Curso where nome like '%i_';

-- Elimine a tabela.
drop table Curso;
