use sprint2;

create table musica (
idMusica int primary key auto_increment,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);

insert into musica values
(null,'Fear of the dark', 'Iron Maiden', 'Rock'),
(null,'The trooper', 'Iron Maiden', 'Rock'),
(null,'Sorry', 'Justin Bieber', 'Pop'),
(null,'Love Yourself', 'Justin Bieber', 'Pop'),
(null,'Animals', 'Martin Garrix', 'Eletronica'),
(null,'Forbbiden voices', 'Martin Garrix', 'Eletronica');

create table album (
idAlbum int primary key,
nome varchar (30),
tipo varchar (30), constraint chktipo
check (tipo in ('digital', 'fisico')),
dtLancamento date
);

insert into album values
('1', 'Piece of Mind', 'fisico', '1983-05-16'),
('2', 'Purpose', 'digital', '2015-11-13'),
('3', 'Gold skies', 'digital', '2014-07-14');

alter table musica add column fkalbum int;
alter table musica add constraint cktalbum foreign key (fkalbum) references album (idAlbum);

update musica set fkalbum = '1' where idMusica in ('1','2');
update musica set fkalbum = '2' where idMusica in ('3','4');
update musica set fkalbum = '3' where idMusica in ('5','6');

select musica.*, album.nome,
album.tipo,
album.dtLancamento 
from musica join album on idAlbum = fkalbum;

select musica.titulo as 'Título da música', 
album.nome as 'Nome do Album' 
from musica join album on idAlbum = fkalbum;

select musica.titulo, 
musica.artista,
musica.genero, 
album.nome,
album.tipo,
album.dtLancamento 
from musica join album on idAlbum = fkalbum where genero = 'rock';

 








