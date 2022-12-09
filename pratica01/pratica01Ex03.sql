use sprint1;
create table Filme (
idFilme int primary key, 
título varchar (50),
gênero varchar (50),
diretor varchar (50)
); 

insert into Filme values
(1, 'Psicose', 'Terror', 'Alfred Hitchcock'),
(2, 'Os Pássaros', 'Terror', 'Alfred Hitchcock'),
(3, 'Pânico', 'Terror', 'Wes Craven'),
(4, 'A hora do pesadelo', 'Terror', 'Wes Craven'),
(5, 'Esqueceram de mim', 'Comédia', 'John Hughes'),
(6, 'Ela vai ter um bebê', 'Comédia', 'John Hughes'),
(7, 'Distrito 9', 'Ação', 'Neil Blomkamp'),
(8, 'Elysium', 'Ação', 'Neil Blomkamp'); 

-- Exibir todos os dados da tabela
select * from Filme; 

-- Exibir apenas os títulos e os diretores dos filmes.
select título, diretor from Filme; 

-- Exibir apenas os dados dos filmes de um determinado gênero.
select * from Filme where gênero = 'Terror';

-- Exibir apenas os dados dos filmes de um determinado diretor.
select * from Filme where diretor = 'Wes Craven';

-- Exibir os dados da tabela ordenados pelo título do filme.
select * from Filme order by título; 

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
select * from Filme order by diretor desc; 

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra
select * from Filme where título like 'e%';

-- Exibir os dados da tabela, dos filmes cujo artista termine com uma determinada letra.
select * from Filme where diretor like '%p'; 

-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
select * from Filme where gênero like '_o%';

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
select * from Filme where título like '%u_';

--  Elimine a tabela.
drop table Filme; 