-- CRIAR BANCO DE DADOS
CREATE DATABASE faculdade;
-- SELECIONAR O BANCO DE DADOS
USE faculdade;

-- TODA TABELA TEM QUE TER CHAVE PRIMÁRIA
CREATE TABLE aluno (
ra char(8) primary key,
nome varchar(45),
bairro varchar(45)
);

-- NOSSO PRIMEIRO SELECT
SELECT * FROM aluno;

-- INSERIR DADOS NA TABELA ALUNO
INSERT INTO aluno VALUES 
	('01222999','Vivian Silva', 'Paraíso');
    
-- INSERINDO VÁRIOS ALUNOS NUM COMANDO
INSERT INTO aluno VALUES 
	('01212072', 'Sara', 'Consolação'),
	('01222063', 'Paulo', 'Guaianazes'),
	('01222998', 'Rafael', 'Bom Retiro');
    