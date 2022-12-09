create database treinador;
use treinador;create table treinador (
idTreinador int primary key auto_increment,
nome varchar (45),
telefone char (11),
email varchar (45),
fktreinadorExp int, 
constraint ctfktreinador foreign key (fktreinadorExp)
references treinador (idTreinador)
) auto_increment = 10;

select* from treinador;

insert into treinador values 
(null, 'Souza', 11983213478, 'souza.silva@peck.com', null),
(null, 'Carlos', 11934671234, 'carlitos@hotmail.com', null),
(null, 'Rafael', 11967120972, 'rafa_marins@peck.com', 10),
(null, 'Douglas', 11998767231, 'douglas_brou@peck.com', 10),
(null, 'Rita', 11932128965, 'rita_123@gmail.com', 11);

select*from  treinador;

create table nadador (
idNadador int primary key auto_increment,
nome varchar (45),
estadoNasc varchar (2),
dtNasc date,
fktreinador int,
constraint  ctfknadador  foreign key nadador(fktreinador) references treinador (idTreinador)
)auto_increment = 100;

insert into nadador values 
(null, 'Vinicius', 'SP', 20010918, 11), 
(null, 'Anderson', 'SP', 20001029, 11),
(null, 'Fabricio', 'RJ', 19950408, 13),
(null, 'Sabrina', 'MG', 20020910, 10),
(null, 'Flávia', 'RS', 19990506, 14);


--  Exibir todos os dados de cada tabela criada, separadamente.
select*from treinador;
select*from nadador;


select * from treinador join nadador 
on idTreinador = fktreinador;


select * from treinador inner join nadador 
on idTreinador = fktreinador where treinador.nome = 'Carlos';

select * from treinador Aluno
 join treinador Orientador  
on Orientador.idTreinador = Aluno.fktreinadorExp;

select * from treinador Aluno inner join treinador Orientador  
on Orientador.idTreinador = Aluno.fktreinadorExp
where Orientador.nome = 'Carlos';

select * from treinador Aluno join treinador Orientador  
on Orientador.idTreinador = Aluno.fktreinadorExp
join nadador N on fktreinador = Aluno.idTreinador;

select * from treinador Aluno join treinador Orientador  
on Orientador.idTreinador = Aluno.fktreinadorExp
join nadador N on fktreinador = Aluno.idTreinador
where Aluno.nome = 'Rita';









