use sprint2;

create table atleta (
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int
);

insert into atleta values 
('1', 'Douglas', 'Natação', '3'),
('2', 'Rodrigo', 'Natação', '4'),
('3', 'Josué', 'Boxe', '1'),
('4', 'Antony', 'Boxe', '2'),
('5', 'Tiago', 'Atletismo', '8'),
('6', 'Bruno', 'Atletismo', '5');

create table pais (
idPais int primary key,
nome varchar (30),
capital varchar (40)
);

insert into pais values
('1', 'Brasil', 'Brasilia'),
('2', 'Uruguai', 'Montevideo'),
('3', 'Argentina', 'Buenos Aires'),
('4', 'Peru', 'Lima');

alter table atleta add column fkpais int;
alter table atleta add constraint ctfkpais foreign key (fkpais) 
references pais (idPais);

update atleta set fkpais = 1 where idAtleta in ('1', '3');
update atleta set fkpais = 2 where idAtleta in ('2', '4');
update atleta set fkpais = 3 where idAtleta in ('5');
update atleta set fkpais = 4 where idAtleta in ('6');

select atleta.*, pais.nome from atleta join pais 
on idPais = fkpais;

select atleta.nome as 'Nome do atleta', pais.nome as 'Nome do país' from atleta join pais 
on idPais = fkpais;

select 
atleta.nome as 'Nome do atleta',
atleta.modalidade,
atleta.qtdMedalha, 
pais.nome as 'Nome do país'
from atleta join pais
on idPais = fkpais where capital = 'Lima';








