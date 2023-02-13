create database pratica01;
use pratica01;

create table professor (
idProfessor int primary key auto_increment,
nome varchar (50),
especialidade varchar (40),
dtNasc date
);

insert into professor (nome, especialidade, dtNasc) values
('Jobson', 'Matematica', 19800923),
('Kleber', 'Matematica', 19900301),
('Rosana', 'Portugues', 19780220),
('Sonia', 'Portugues', 19701210),
('Glauber', 'Filosofia', 19660410),
('Antonio', 'Filosofia', 19601108);

-- Exibir todos os dados da tabela.
select*from professor;

-- Exibir apenas as especialidades dos professores.
select especialidade from professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.
select * from professor where especialidade = 'Matematica';

-- Exibir os dados da tabela ordenados pelo nome do professor.
select * from professor order by nome desc;

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem
decrescente.
select * from professor where nome like 'S%';

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada
letra.
select * from professor where nome like '%_r';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada
letra.
select * from professor where nome like '_o%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
select * from professor where nome like '%i_';

-- Elimine a tabela.
drop table professor;
