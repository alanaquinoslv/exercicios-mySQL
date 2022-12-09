USE faculdade;

-- Criar a tabela empresa
CREATE TABLE empresa (
id int primary key auto_increment,
nome varchar(45),
responsavel varchar(45),
dtInaugura DATETIME,
tipo varchar(20), constraint chkTipo 
	check (tipo in ('Filial','Matriz'))
);

desc empresa;

-- Inserir dados na tabela empresa
INSERT INTO empresa (nome, responsavel, dtInaugura, Tipo) 
	VALUES ('SPTech', 'Petry', '2016-01-01 08:00:00','Matriz');
    
SELECT * FROM empresa;
    
-- Inserir dados na tabela empresa (comando abaixo dará erro)
INSERT INTO empresa (nome, responsavel, dtInaugura, Tipo) 
	VALUES ('FLOTech', 'Vivian', '2022-08-01 08:00:00','Loja');
    
-- Error Code: 3819. Check constraint 'chkTipo' is violated.

-- Inserir dados na tabela empresa (comando abaixo dará erro)
INSERT INTO empresa (nome, responsavel, dtInaugura, Tipo) 
	VALUES ('Accenture', 'Ariel', '2022-08-01 08:00:00','Matriz'),
	('C6Bank', 'Rosana', '2022-08-01 08:00:00','Matriz');
    
SELECT * FROM empresa;

INSERT INTO empresa VALUES 
	(null, 'Safra', 'Rafael', '2018-09-30', 'Filial');
    
-- Exibir as empresas onde a penúltima letra é r
SELECT nome FROM empresa WHERE nome LIKE '%r_';

-- Exibir as empresas onde a segunda letra é 6
SELECT nome FROM empresa WHERE nome LIKE '_6%';

ALTER TABLE empresa drop constraint chkTipo;

ALTER TABLE empresa add constraint chkTipo
	check (tipo in ('Matriz', 'Filial', 'Loja'));
    
-- Inserir dados na tabela empresa 
INSERT INTO empresa (nome, responsavel, dtInaugura, Tipo) 
	VALUES ('FLOTech', 'Vivian', '2022-08-01 08:00:00','Loja');
    
SELECT * FROM empresa;
    
INSERT INTO empresa 
	VALUES (21, 'DaniBoy', 'Daniel', '2022-08-01','Loja');
    
INSERT INTO empresa
	VALUES (null, 'RafasPlace', 'Rafael', '2022-08-10','Filial');
    
-- Excluir a tabela empresa;
DROP TABLE empresa;

-- Excluir um registro 
DELETE FROM empresa WHERE id = 22;

INSERT INTO empresa
	VALUES (null, 'RafasPlace', 'Rafael', '2022-08-10','Filial');

-- Limpar a tabela
TRUNCATE TABLE empresa;

INSERT INTO empresa
	VALUES (null, 'RafasPlace', 'Rafael', '2022-08-10','Filial');

SELECT * FROM empresa;

DESC empresa;

CREATE TABLE empresa (
id int primary key auto_increment,
nome varchar(45) NOT NULL,
responsavel varchar(45) DEFAULT 'Alguém',
dtInaugura DATETIME default current_timestamp,
tipo varchar(20), constraint chkTipo 
	check (tipo in ('Filial','Matriz'))
)auto_increment = 200;

INSERT INTO empresa (nome, tipo) VALUES 
	('SPTech', 'Matriz');
    
SELECT * FROM empresa;

INSERT INTO empresa (nome, tipo) VALUES 
	('Safra', 'Matriz'),
	('C6Bank', 'Matriz'),
	('Accenture', 'Matriz'),
	('Deloitte', 'Matriz');

SELECT concat(nome, tipo) from empresa;
SELECT concat(nome, ' ', tipo) as Xablau from empresa;

-- A Empresa XPTO, tem o responsavel XPTO e é do tipo XPTO...
SELECT concat('A Empresa ', nome, ' tem o responsavel ', 
responsavel, ' e é do tipo ', tipo) as Frase FROM empresa;