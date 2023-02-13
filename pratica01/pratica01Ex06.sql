use pratica01;

create table revista (
idRevista int primary key auto_increment,
nome varchar (40), 
categoria varchar (30)
);

insert into revista (nome, categoria) values
('quatroRodas', null),
('Veja', null),
('Epoca', null),
('duasRodas', null);

-- Exibir todos os dados da tabela.
select * from revista;

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabelanovamente para verificar se atualizou corretamente.
update revista set categoria = 'Automobilismo' where idRevista in (1,4);
update revista set categoria = 'Entretenimento' where idRevista in (2,3);
select * from revista;

-- Insira mais 3 registros completos.
-- Exibir novamente os dados da tabela.
insert into revista (nome, categoria) values
('Lance', 'Esporte'),
('PlayTV', 'Games'),
('Capricho', 'Moda');
select * from revista;

-- Exibir a descrição da estrutura da tabela.
desc revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
alter table revista modify categoria varchar(40);
desc revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
alter table revista add column periodicidade varchar (15);

-- Exibir os dados da tabela.
select * from revista;

-- Excluir a coluna periodicidade da tabela.
alter table revista
	drop column periodicidade;
