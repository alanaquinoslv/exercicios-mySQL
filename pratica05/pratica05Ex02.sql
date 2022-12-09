use sprint2;

create table pessoa (
idPessoa int primary key auto_increment,
nome varchar (45),
dtNasc date,
profissão varchar (30)
);

insert into pessoa values
(null, 'Roberta', 19920922, 'medica'),
(null, 'Carlos', 19981008, 'pedreiro'),
(null, 'Antonio', 19770201, 'carpinteiro'),
(null, 'Sabrina', 20000315, 'vendedora');

create table gasto (
idGasto int primary key auto_increment,
dt date,
valor decimal (10,2),
descrição varchar(45),
fkpessoa int,
constraint foreign key (fkpessoa)
	references pessoa(idPessoa)
);

insert into gasto values 
(null, 20220814, 102.99, 'internet', 2),
(null, 20220524, 2000.00, 'madeira', 3),
(null, 20220814, 550.00, 'estetoscópio', 1),
(null, 20220814, 249.99, 'tenis', 4);

-- Exiba os dados de cada tabela individualmente.
select*from pessoa;
select*from gasto;

-- Exiba somente os dados de cada tabela, mas filtrando por algum dado da tabela (por exemplo, as pessoas de alguma profissão, etc).
select gasto.*, pessoa.* from gasto join pessoa on idPessoa = fkpessoa where profissão = 'carpinteiro';

-- Exiba os dados das pessoas e dos seus gastos correspondentes
select pessoa.nome as 'Nome', pessoa.profissão as 'Profissão', pessoa.dtNasc as 'Data de nascimento', 
gasto.dt as 'Data da despesa', gasto.valor as 'Valor', gasto.descrição as 'Descrição'
from gasto join pessoa on idPessoa = fkpessoa;

-- Exiba os dados de uma determinada pessoa e dos seus gastos correspondentes.
select pessoa.nome as 'Nome', pessoa.profissão as 'Profissão', pessoa.dtNasc as 'Data de Nascimento',
gasto.dt as 'Data da despesa', gasto.valor as 'Valor', gasto.descrição as 'Descrição' 
from gasto join pessoa on idPessoa = fkpessoa where idPessoa = 2;

-- Atualize valores já inseridos na tabela.
update gasto set valor = 370.00 where idGasto = 4;

-- Exclua um ou mais registros de alguma tabela.
delete from gasto where idGasto = 1;

 