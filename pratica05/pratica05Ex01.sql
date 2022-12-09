create database pet;
use pet;

create table cliente (
idCliente int primary key auto_increment,
nome varchar (45),
sobrenome varchar (45),
telFixo char (8),
telCel char (11),
rua varchar (45),
numCasa char (10),
bairro varchar (30),
cidade varchar (30),
estado varchar (30),
CEP char (8)
);

select*from cliente;

insert into cliente (idCliente, nome, sobrenome, telFixo, telCel, rua, numCasa, bairro, cidade, estado, CEP) values 
(null, 'Gabriel', 'Silva', '38761264', '11982327654', 'Rua dos Andradas', '22', 'Jd. do Rum', 'Guarulhos', 'SP', '09812876'), 
(null, 'Antonio', 'Silva', '43215674', '11965437622', 'Rua Anglo', '324', 'Jd. Parangolé', 'Pirituba', 'SP', '02266124'),
(null, 'Rafaela', 'Souza', '39821256', '11925621279', 'Rua das flores', '36', 'Jd. Floral',  'São Paulo', 'SP', '12432111'),
(null, 'Ana', 'Almeida', null, '1132328975', 'Rua Beira Mar', '2333', 'Jd. Alto Mar', 'Barbacena', 'MG', '43222212'),
(null, 'Julio', 'Diamante', null, '1162124567', 'Avenida Prestes', '21231', 'Jd. Presidente', 'Piripiri', 'PI', '09976123');

create table pet ( 
idPet int primary key auto_increment,
tipo varchar (45),
nome varchar (45),
raça varchar (45),
dtNasc date 
)auto_increment = 101;

alter table pet add column fkcliente int;
alter table pet add constraint ctFkcliente foreign key (fkCliente)
	references cliente(idCliente);
    
    select*from pet;
    
insert into pet values
(null, 'Iguana', 'Sebastiana', 'Iguana do deserto', 20171014, 3),
(null, 'Gato', 'Francisco', 'Sphynx', 20140628, 3),
(null, 'Gato', 'Hobs', 'Siamês', 20171204, 1),
(null, 'Cachorro', 'Bidu', 'Pitbull', 20100922, 5),
(null, 'Peixe', 'Ramos', 'Beta', 20220409, 2),
(null, 'Passáro', 'Chica', 'Calopsita', 20121231, 4);

-- Exibir todos os dados de cada tabela criada, separadamente.
select * from pet;
select*from cliente;

-- Altere o tamanho da coluna nome do cliente.
alter table cliente modify column nome varchar (50);
desc cliente;

-- Exibir os dados de todos os pets que são de um determinado tipo (por exemplo: cachorro).
select * from pet where tipo = 'cachorro';

-- Exibir apenas os nomes e as datas de nascimento dos pets.
select nome, dtNasc from pet;

-- Exibir os dados dos pets ordenados em ordem crescente pelo nome.
select * from pet order by nome asc;

-- Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro.
select * from cliente order by bairro desc;

 -- Exibir os dados dos pets cujo nome comece com uma determinada letra.
 select * from pet where nome like 's%';
 
 -- Exibir os dados dos clientes que têm o mesmo sobrenome.
 select * from cliente where sobrenome like 'silva';
 
 -- Alterar o telefone de um determinado cliente.
 update cliente set telFixo = 23433432 where idCliente = 2;
 
 -- Exibir os dados dos clientes para verificar se alterou.
 select*from cliente;
 
 -- Exibir os dados dos pets e dos seus respectivos donos.
 select pet.*, cliente.* from pet join cliente
	on idCliente = fkcliente;

-- Exibir os dados dos pets e dos seus respectivos donos, mas somente de um determinado cliente.
select pet.*, cliente.* from pet join cliente on idCliente = fkcliente where idCliente = 4;

-- Excluir algum pet.
delete from pet where idPet = 102;

-- Exibir os dados dos pets para verificar se excluiu.
select*from pet;

-- Excluir as tabelas.
drop table pet, cliente;
