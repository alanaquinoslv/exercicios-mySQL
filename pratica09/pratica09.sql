use sprintdomeio;

create table grupo (
idGrupo int primary key auto_increment,
nome varchar (45),
descricao varchar (50)
) auto_increment = 1;

create table aluno (
ra char (8) primary key,
nome varchar (45),
email varchar (45),
fkGrupo int,
foreign key (fkGrupo) references grupo (idGrupo)
);

create table professor1 (
idProfessor int primary key auto_increment,
nome varchar (45),
disciplina varchar (45)
) auto_increment = 10000;

create table avaliacao (
fkProfessor int,
foreign key (fkProfessor) references professor1 (idProfessor),
fkGrupo int, 
foreign key (fkGrupo) references grupo (idGrupo),
primary key (fkProfessor, fkGrupo),
data_hora datetime,
nota decimal (2,1)
);

insert into grupo values 
(null, 'Avesz', 'controle de temperatura em avioes'),
(null, 'Clocks', 'controle do fluxo em relojoarias'),
(null, 'Buks', 'controle de temperatura e umidade em bibliotecas');

insert into aluno values 
(34538900, 'Alan', 'alan.sptech@school', 3),
(22358900, 'Gabriel', 'gabriel@sptech.school', 3),
(99878900, 'Sabrina', 'sabrina@school.sptech', 3),
(21368900, 'Diego', 'diego.fiap@school', 2),
(12218900, 'Douglas', 'douglas.sptech@fiap', 2),
(99998900, 'Victoria', 'victoria@sptech.school', 2),
(43288900, 'Maria', 'mariazinha@fiap.com', 1),
(87678900, 'Lucio', 'lucio.sptech@school', 1),
(65898900, 'Carlos', 'carlos@sptech.school', 1);

insert into professor1 values
(null, 'Antonio', 'Banco de dados'),
(null, 'Antonieta', 'Pesquisa e Inovacao'),
(null, 'Julia', 'Pesquisa e Inovacao');

insert into avaliacao values 
(10002, 2, 20220918, 8.5),
(10000, 2, 20220918, 8.5),
(10002, 1, 20220918, 9.0),
(10001, 1, 20220918, 9.0),
(10000, 3, 20220918, 6.7),
(10001, 3, 20220918, 6.7);

select*from grupo;
select*from aluno;
select*from professor1;
select*from avaliacao;

select grupo.*, aluno.* from grupo 
	join aluno on grupo.idGrupo = aluno.fkGrupo;
    
select grupo.*, aluno.* from grupo 
	join aluno on grupo.idGrupo = aluno.fkGrupo
		where grupo.nome = 'buks';
        
select truncate (avg(nota),2) 'média das notas' from avaliacao;

select min(nota) 'menor nota', max(nota) 'maior nota' from avaliacao;

select sum(nota) 'soma das notas' from avaliacao;

select p.*, g.*, a.data_hora from avaliacao as a
	join professor1 as p on a.fkProfessor = p.idProfessor
		join grupo as g on a.fkGrupo = g.idGrupo order by g.idGrupo;
        
select p.*, g.*, a.data_hora from avaliacao as a
	join professor1 as p on a.fkProfessor = p.idProfessor
		join grupo as g on a.fkGrupo = g.idGrupo
			where g.nome = 'avesz';

select  g.* from avaliacao as a
	join professor1 as p on a.fkProfessor = p.idProfessor
		join grupo as g on a.fkGrupo = g.idGrupo
			where p.nome = 'antonieta';

select g.*, a.*, p.*, av.data_hora from avaliacao as av
join aluno as a 
	join professor1 as p on av.fkProfessor = p.idProfessor
		join grupo as g on av.fkGrupo = g.idGrupo;
        
select distinct count(nota) from avaliacao;

select p.nome, truncate (avg(nota),2) 'media', sum(nota) 'soma das notas' from avaliacao 
	join professor1 as p on avaliacao.fkProfessor = p.idProfessor
		group by p.nome;
        
select g.nome, truncate(avg(nota),2), sum(nota) from avaliacao 
	join grupo as g on avaliacao.fkGrupo = g.idGrupo
		group by g.nome;
        
select p.nome, min(nota) 'menor nota', max(nota) 'maior nota' from avaliacao 
	join professor1 as p on avaliacao.fkProfessor = p.idProfessor
		group by p.nome;
        
select g.nome, min(nota) 'menor nota', max(nota) 'maior nota' from avaliacao 
	join grupo as g on avaliacao.fkGrupo = g.idGrupo
		group by g.nome;
