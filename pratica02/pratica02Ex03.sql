use sprint1;

create table Professor (
idProfessor int primary key auto_increment,
nome varchar (50),
especialidade varchar (40),
dtNasc datetime
);

insert into Professor values
(null, 'Ledo Vaccaro', 'Matemática', 19600220),
(null, 'Jorge Saad', 'Matemática', 19740315),
(null, 'Flávio Antunes', 'História', 19800101),
(null, 'Roberta Castro', 'História', 19790824),
(null, 'Sebastiana Kaneda', 'Português', 19550823),
(null, 'Adolfo Lima', 'Português', 19900504),
(null, 'Rangel Silva', 'Física', 19840203),
(null, 'Antônia Medeiros', 'Física', 19730101);

-- Exibir todos os dados da tabela
select * from Professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’;
alter table Professor add column posição varchar (50), add constraint chkposicao
check (posição in ('Titular', 'Assistente'));

-- Atualizar os professores inseridos e suas respectivas funções;
update Professor set posição = 'Titular' where idProfessor = 1;
update Professor set posição = 'Titular' where idProfessor = 2;
update Professor set posição = 'Assistente' where idProfessor = 3;
update Professor set posição = 'Titular' where idProfessor = 4;
update Professor set posição = 'Assistente' where idProfessor = 5;
update Professor set posição = 'Assistente' where idProfessor = 6;
update Professor set posição = 'Titular' where idProfessor = 7;
update Professor set posição = 'Titular' where idProfessor = 8;

-- Inserir um novo professor;
insert into Professor values
 (null, 'Rodrigo Miranda', 'Matemática', 19890910, 'Assistente');
 
 -- Excluir o professor onde o idProfessor é igual a 5;
delete from Professor where idProfessor = 5;

-- Exibir apenas os nomes dos professores titulares;
select * from Professor where posição = 'Titular';

-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
select dtNasc, especialidade from Professor where posição = 'Assistente';

-- Atualizar a data de nascimento do idProfessor igual a 3;
update Professor set dtNasc = 19970522 where idProfessor = 3;

--  Limpar a tabela Professor;
truncate table Professor; 