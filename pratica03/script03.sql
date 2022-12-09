CREATE DATABASE sprint2;

USE sprint2;

CREATE TABLE empresa (
idEmpresa int primary key auto_increment,
nome varchar(45),
responsavel varchar(45));

CREATE TABLE aluno (
ra char(8) primary key,
nome varchar(45),
email varchar(45)-- ,
-- fkEmpresa int, 
-- constraint ctfkEmpresa 
	-- foreign key (fkEmpresa) references Empresa(idEmpresa)
);

INSERT INTO aluno VALUES 
	('01222999', 'Vivian', 'vivian@sptech.school'),
	('01222998', 'Rafael', 'rafa@sptech.school');
    
INSERT INTO empresa (nome, responsavel) VALUES
	('Sptech', 'Petry'),
	('Accenture', 'Ana');
    
SELECT * FROM aluno;
SELECT * FROM empresa;

ALTER TABLE aluno add column fkEmpresa int;
ALTER TABLE aluno add constraint ctFkEmpresa foreign key (fkEmpresa)
	references empresa(idEmpresa);
    
DESC aluno;

UPDATE aluno set fkEmpresa = 1 WHERE ra in ('01222999','01222998');

-- nosso primeiro join
SELECT * FROM aluno JOIN empresa 
	ON idEmpresa = fkEmpresa;
    
-- melhorar a exibição
SELECT aluno.*,
	   empresa.nome
       FROM aluno JOIN empresa
		ON idEmpresa = fkEmpresa;
        
-- melhorando mais um cadinho
SELECT aluno.nome as 'Nome do Aluno',
	   empresa.nome as 'Nome da Empresa'
       FROM aluno JOIN empresa
		ON idEmpresa = fkEmpresa;
        
SELECT a.nome as 'Aluno',
	   e.nome as 'Empresa',
       a.email as 'Email do Aluno'
       FROM aluno as a JOIN empresa as e
		ON e.idEmpresa = a.fkEmpresa;
        
SELECT concat('O aluno ', alunico.nome, ' está interessado na ',
				empresica.nome, '!') as 'Frase de impacto'
	FROM aluno as alunico JOIN empresa as empresica
    ON idEmpresa = fkEmpresa;
    
SELECT * FROM aluno JOIN empresa
	ON idEmpresa = fkEmpresa 
    WHERE aluno.nome LIKE 'V%';
    
SELECT 
    aluno.nome, empresa.nome
FROM
    aluno
        JOIN
    empresa ON idEmpresa = fkEmpresa;