use sprintdomeio;

create table professor (
idProfessor int primary key auto_increment,
nome varchar (50),
sobrenome varchar (30),
especialidade1 varchar (40),
especialidade2 varchar (40)
);

insert into professor (nome, sobrenome, especialidade1, especialidade2) values
('Alan', 'Aquino', 'Física', 'Matemática'),
('Roger', 'Flores', 'Português', 'Inglês'),
('Sônia', 'Barbosa', 'Geografia', 'História'),
('Douglas', 'Arcanjo', 'História', 'Artes'),
('Cinthia', 'Ramos', 'Matemática', null),
('Amanda', 'Silva', 'Química', 'Física');

create table disciplina (
idDisc int primary key auto_increment,
nomeDisc varchar (45),
fkProfessor int, 
constraint ctfkProfessor 
foreign key (fkProfessor) references Professor(idProfessor)
);

select*from disciplina;

insert into disciplina (nomeDisc, fkProfessor) values
('Física', '1'),
('Química', '6'),
('Português', '2'),
('Geografia', '3'),
('Artes', '4'),
('Matemática', '5');

-- Exibir os professores e suas respectivas disciplinas;
select disciplina.*, professor.* from disciplina join professor 
on idProfessor = fkprofessor;

-- Exibir apenas o nome da disciplina e o nome do respectivo professor;
select disciplina.nomeDisc as 'Nome da disciplina', professor.nome as 'Nome do professor' 
from disciplina join professor on idProfessor = fkprofessor;

-- Exibir os dados dos professores, suas respectivas disciplinas de um determinado sobrenome;
select disciplina.nomeDisc as 'Nome da disciplina', professor.nome as 'Nome do Professor', 
professor.sobrenome as 'Sobrenome do professor', professor.especialidade1 as 'Primeira especialidade', 
professor.especialidade2 as 'Segunda especialidade' 
from disciplina join professor on idProfessor = fkprofessor where sobrenome = 'barbosa';

-- Exibir apenas a especialidade1 e o nome da disciplina, de um determinado professor, ordenado de forma crescente pela especialidade1;
select disciplina.nomeDisc as 'Nome da disciplina', professor.especialidade1 as 'Primeira especialidade' 
from disciplina join professor on idProfessor = fkprofessor where nome = 'douglas' order by especialidade1 asc;



