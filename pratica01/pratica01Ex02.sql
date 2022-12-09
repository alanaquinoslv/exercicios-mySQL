use sprint1;
create table Musica (
idMusica int primary key,
título varchar(40),
artista varchar(40),
gênero varchar (40)
);

insert into Musica values
(1, 'Symphony Of Destruction', 'Megadeth', 'Rock'),
(2, 'Dystopia', 'Megadeth', 'Rock'),
(3, 'Night Stalkers', 'Megadeth', 'Rock'),
(4, 'Alone Road', 'LetoDie', 'Rap'),
(5, 'Memento Mori', 'LetoDie', 'Rap'),
(6, 'Santé', 'Stromae', 'Pop'),
(7, 'Lenfer', 'Stromae', 'Pop'),
(8, 'Mande um sinal', 'Pixote', 'Pagode'),
(9, 'Insegurança', 'Pixote', 'Pagode');

-- Exibir todos os dados da tabela
select * from Musica;

-- Exibir apenas os títulos e os artistas das músicas.
select título, artista from Musica;

-- Exibir apenas os dados das músicas de um determinado gênero.
select * from Musica where gênero = 'Rock';

-- Exibir apenas os dados das músicas de um determinado artista.
select * from Musica where artista = 'LetoDie';

-- Exibir os dados da tabela ordenados pelo título da música.
select * from Musica order by título;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
select * from Musica order by artista desc; 

-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
select * from Musica where título like 'i%';

-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
select * from Musica where artista like '%e'; 

-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra
select * from Musica where gênero like '_o%';

-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
select * from Musica where título like '%ç_';

-- Elimine a tabela.
drop table Musica;

