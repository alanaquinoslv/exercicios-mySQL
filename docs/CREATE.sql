CREATE TABLE Canal (
CanalId int primary key,
Nome varchar(150) not null,
ContagemInscritos INT DEFAULT 0,
DataCriacao DATETIME NOT NULL
);


CREATE TABLE Video (
VideoId int primary key,
Nome varchar(150) not null,
Visualizacoes int DEFAULT 0,
Likes int default 0,
Dislikes int default 0,
Duracao int not null,
CanalId FOREIGN KEY REFERENCES Canal(CanalId)
);

CREATE TABLE aula (
id int primary key,
nome varchar(200)
);