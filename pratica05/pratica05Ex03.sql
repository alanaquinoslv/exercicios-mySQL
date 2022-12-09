create database PraticaFuncionario;
use PraticaFuncionario;

create table setor (
idSetor int primary key auto_increment,
nome varchar (45),
numAndar char (2)
);

insert into setor values
(null, 'Financeiro', 3),
(null, 'Administração', 5),
(null, 'RH', 1),
(null, 'Logística', 2),
(null, 'Qualidade', 4);

create table funcionario (
idFunc int primary key auto_increment,
nome varchar (45),
sobrenome varchar (45),
telCel char (11),
telFixo char (8),
salario decimal (10,2) not null,
fksetor int,
constraint foreign key (fksetor)
references setor (idSetor)
);

insert into funcionario values
(null, 'Felipe', 'Alves', 11987652332, null, 1899.00, 1),
(null, 'Samara', 'Lopes', 11987563211, 43213455, 1899.00, 1),
(null, 'Alison', 'Silva', 11943251628, 34567899, 2200.00, 2),
(null, 'Antonio', 'Silva', 11965426712, null, 2200.00, 2),
(null, 'Philipe', 'Coutinho', 11934431212, null, 2200.00, 2),
(null, 'Gabriela', 'Souza', 11986712121, null, 2800.00, 3),
(null, 'João', 'Almeida', 11952127878, 21219872, 2800.00, 3),
(null, 'Douglas', 'Pacheco', 11912879812, null, 3300.60, 4),
(null, 'Paula', 'Aragão', 11969652172, 78219821, 3300.60, 4),
(null, 'Patricia', 'Sousa', 11932139872, 89212347, 5000.20, 5),
(null, 'Isaac', 'Aguiar', 11998764531, null, 5000.20, 5);

create table acompanhante (
idAcomp int,
fkfunc int, 
constraint fkfunc foreign key (fkfunc)
references funcionario (idFunc),
primary key (idAcomp, fkfunc),
nome varchar (45),
relacao varchar (45),
dtNasc date
);

insert into acompanhante values
(1, 2, 'Jorge', 'Pai', 19780922),
(2, 5, 'Sabrina', 'Amiga', 20001018),
(3, 11, 'Francisco', 'Primo', 19990210),
(4, 8, 'Diego', 'Amigo', 19871002),
(5, 7, 'Rafaela', 'Irmã', 20010130),
(6, 4, 'Bruno', 'Sobrinho', 20021215),
(7, 3, 'Mateus', 'Amigo', 19990824);

-- Exibir todos os dados de cada tabela criada, separadamente.
select*from setor;
select*from funcionario;
select*from acompanhante;

-- Exibir os dados dos setores e dos seus respectivos funcionários.
select funcionario.nome as 'Nome', funcionario.sobrenome as 'Sobrenome', funcionario.salario as 'Salário', setor.nome as 'Setor', setor.numAndar as 'Andar do prédio'
from funcionario join setor on idSetor = fksetor;

-- - Exibir os dados de um determinado setor (informar o nome do setor na consulta e dos seus respectivos funcionários.
select setor.nome as 'Setor', setor.numAndar as 'Andar do prédio', funcionario.nome as 'Nome do funcionário' 
from funcionario join setor on idSetor = fksetor where idSetor = 5;

-- Exibir os dados dos funcionários e de seus acompanhantes.
select funcionario.nome as 'Nome do funcionário', funcionario.telCel as 'Celular do funcionário', acompanhante.nome as 'Nome do acompanhante', 
acompanhante.relacao as 'Relação', acompanhante.dtNasc as 'Data de nascimento do acompanhante' from acompanhante join funcionario on idFunc = fkfunc;

-- - Exibir os dados de apenas um funcionário (informar o nome do funcionário) e os dados de seus acompanhantes.
select funcionario.nome as 'Nome do funcionário', funcionario.salario as 'Salario', acompanhante.nome as 'Nome do acompanhante', 
acompanhante.relacao as 'Relacão com funcionário', acompanhante.dtNasc as 'Data de nascimento do acompanhante' 
from acompanhante join funcionario on idFunc = fkfunc where idFunc = 11;

-- Exibir os dados dos funcionários, dos setores em que trabalham e dos seus acompanhantes.
select f.nome as 'Nome do Funcionário', f.sobrenome as 'Sobrenome do Funcionário', f.telCel as 'Tel.cel do funcionário',
f.telFixo as 'Tel.fixo do funcionário', f.salario as 'Salário', s.nome as 'Setor', s.numAndar as 'Andar do prédio', a.nome as 'Nome do acompanhante',
a.relacao as 'Relacão com funcionário', a.dtNasc as 'Data de nascimento do acompanhante' from funcionario as f join setor as s on idSetor =fksetor
join acompanhante as a on idFunc = fkfunc;