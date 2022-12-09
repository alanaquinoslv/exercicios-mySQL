create database sprint2;
use sprint2;

create table curso (
idCurso int primary key auto_increment,
nome varchar (50),
sigla char (3),
coordenador varchar (30)
);

insert into curso (nome, sigla, coordenador) values
('Análise e desenvolvimento de sistemas', 'ADS', 'Alan'),
('Ciências da computação', 'CCO', 'Jonas'),
('Sistemas de Informação', 'SIS', 'Roberta');

create table aluno (
ra char (5) primary key,
nome varchar (40),
sobrenome varchar (30),
processoSeletivo varchar (20) constraint chkprocessoSeletivo check (processoSeletivo in ('Vestibular', 'Preparatório'))
);

alter table aluno add column fkCurso int;
alter table aluno add constraint ctFkcurso foreign key (fkcurso)
	references curso(idCurso);
    
insert into aluno (ra, nome, sobrenome, processoSeletivo, fkCurso) values
('22809', 'Carlos', 'Friederich', 'Vestibular', '1'),
('21244', 'Ana', 'Souza', 'Preparatório', '2'),
('23471', 'Joana', 'Silva', 'Vestibular', '2'),
('21922', 'Diogo', 'Conceição', 'Vestibular', '3'),
('12458', 'Gabriel', 'Machado', 'Preparatório', '1');

-- Faça um JOIN entre as duas tabelas;
select aluno.*, curso.nome from aluno join curso on idCurso = fkcurso;

-- Faça um JOIN com WHERE entre as duas tabelas;
select aluno.ra as 'RA do aluno',
aluno.nome  as 'Nome do aluno',
curso.nome as 'Nome do curso',
curso.coordenador as 'Coordenador do curso' 
from aluno join curso on idCurso = fkcurso where processoSeletivo = 'Vestibular';  


