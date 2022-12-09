use sprint1;
create table Musica (
idMusica int primary key auto_increment,
título varchar(40),
artista varchar(40),
gênero varchar (40)
);

insert into Musica values
(null, 'Symphony Of Destruction', 'Megadeth', 'Rock'),
(null, 'Dystopia', 'Megadeth', 'Rock'),
(null, 'Night Stalkers', 'Megadeth', 'Rock'),
(null, 'Alone Road', 'LetoDie', 'Rap'),
(null, 'Memento Mori', 'LetoDie', 'Rap'),
(null, 'Santé', 'Stromae', 'Pop'),
(null, 'Lenfer', 'Stromae', 'Pop'),
(null, 'Mande um sinal', 'Pixote', 'Pagode'),
(null, 'Insegurança', 'Pixote', 'Pagode');

-- Exibir todos os dados da tabela.
select * from Musica;

-- Adicionar o campo curtidas do tipo int na tabela;
alter table Musica add column curtidas int;

-- Modificar o campo artista do tamanho 40 para o tamanho 80;
alter table Musica modify artista varchar (80);

-- Atualizar a quantidade de curtidas da música com id=1;
update Musica set curtidas = 78 where idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3; 
update Musica set curtidas = 87 where idMusica in (2, 3);

--  Atualizar o nome da música com o id=5;
update Musica set Título = 'Rivais' where idMusica = 5;

-- Excluir a música com o id=4;
delete from Musica where idMusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk;
select*from Musica where gênero <> 'funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
select * from Musica where curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista;
desc Musica;

-- Limpar os dados da tabela;
truncate table Musica;

select * from Musica




