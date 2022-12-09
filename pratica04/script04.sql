-- tipos de atributos - Aula 7
CREATE DATABASE sprintdomeio;

USE sprintdomeio;

-- CRIAR A TABELA funcionario
CREATE TABLE funcionario (
idFunc int primary key auto_increment, -- identificador
nome varchar(45), -- + sobrenome = COMPOSTO
sobrenome varchar(50),
telFixo char(11), -- + telCel = MULTIVALORADO
telCel char(12),
CEP char(9), -- + num + cidade = COMPOSTO
numEnd int,
cidade varchar(45)
);

INSERT INTO funcionario (nome, sobrenome, telCel, CEP) values
	('Chefe da Paula', 'Silva', '11-987654321', '01515-000'),
	('Chefe do Rafa', 'Figueredo', '11-988776655', '01111-000');
    
SELECT * FROM funcionario;

INSERT INTO funcionario (nome, telFixo, cidade) VALUES
	('Chefe do Caliu', '11-34567899', 'Florianópolis'),
	('Chefe do Jonathan', '11-33447899', 'São Paulo');
    
INSERT INTO funcionario VALUES 
	(null, 'Chefe da Sala', 'Cabral', '11-23345677', '11-990908877',
		'09898-000', 145, 'São Paulo');
    
SELECT nome, telFixo FROM funcionario WHERE telFixo LIKE '%7899';

SELECT concat('O funcionário ', nome, ' ', 
	IFNULL(sobrenome, 'NÃO CADASTRADO')) as Func
	FROM funcionario;
    
SELECT concat('O funcionário ', nome, 'tem o telefone ', ifnull(telFixo, 'sem num'),
	' e o telefone Celular ', ifnull(telCel, 'sem num')) as Func FROM funcionario;

