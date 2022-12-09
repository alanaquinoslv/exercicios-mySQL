create database venda;
use venda;

create table cliente (
idcliente int primary key auto_increment,
nome varchar (45),
email varchar (45),
cep char (9),
numero int, 
complemento varchar (45),
cidade varchar (45),
fkindicador int, 
foreign key (fkindicador) references cliente (idcliente)
);

create table venda (
idvenda int,
fkcliente int,
foreign key (fkcliente) references cliente (idcliente),
total decimal (10,2),
dt date, 
primary key (idvenda, fkcliente)
);

create table produto (
idproduto int primary key auto_increment,
nome varchar (45),
descricao varchar (45),
preco decimal (10,2)
);

create table carrinho (
idcar int, 
fkvenda int, 
foreign key (fkvenda) references venda (idvenda),
fkproduto int,
foreign key (fkproduto) references produto (idproduto),
qtdproduto varchar (45),
valordesconto decimal (10,2),
primary key (idcar, fkvenda, fkproduto)
);

desc cliente;

insert into cliente values
(null, 'Alan', 'alan.silva@sptech.school', '02877-165', 292, 'A', 'Sao Paulo', null),
(null, 'Lucas', 'lucas.milagres@sptech.school', '24955-291', 21, null, 'Sao Paulo', null),
(null, 'Mariana', 'mari.21@gmail.com', '78211-642', 1000, 'apto-25', 'Rio de Janeiro', 1),
(null, 'Douglas', 'dougjefs@outlook.com', '12345-989', 98, 'apto-309', 'Barbacena', 1),
(null, 'Markus', 'mark_marks@bol.com', '03245-000', 292, 'A', 'Xique-Xique', 2),
(null, 'Rafaela', 'rafaelamacedo321@hotmail.com', '33786-111', 12, null, 'Guarulhos', 1),
(null, 'Rubens', 'rub_asx@gmail.com', '12886-644', 3452, 'apto-2', 'Sao Paulo', null);

insert into produto values 
(null, 'Coca-Cola', 'Refrigerante', 7.99),
(null, 'Fandangos', 'Salgadinho', 4.99),
(null, 'Trakinas', 'Bolacha', 3.50),
(null, 'Rexona', 'Desodorante', 12.90);

insert into venda values 
(1, 1, 7.99, 20221021),
(2, 3, 11.49, 20221019),
(3, 5, 12.90, 20220919),
(4, 1, 4.99, 20221015),
(5, 7, 7.99, 20221021),
(6, 6, 3.50, 20221020);

insert into carrinho values 
(1, 3, 4, 1, 0.50), 
(2, 4, 2, 1, 0.35),
(3, 1, 1, 1, 1.20);

-- Exibir todos os dados de cada tabela criada, separadamente.
select * from cliente;
select * from produto;
select * from venda;
select * from carrinho;

-- Exibir os dados dos clientes e os dados de suas respectivas vendas.
select * from cliente 
	join venda on fkcliente = idcliente;
    
--  Exibir os dados de um determinado cliente (informar o nome do cliente na consulta) e os dados de suas respectivas vendas.
select * from cliente 
	join venda on fkcliente = idcliente 
		where nome = 'Markus';
    
--  Exibir os dados dos clientes e de suas respectivas indicações de clientes.
select * from cliente indicado
	join cliente indicador 
		on indicador.idcliente = indicado.fkindicador;
        
-- Exibir os dados dos clientes indicados e os dados dos respectivos clientes indicadores, 
-- porém somente de um determinado cliente indicador (informar o nomedo cliente que indicou na consulta).
select * from cliente indicado
	join cliente indicador 
		on indicador.idcliente = indicado.fkindicador 
			where indicador.nome = 'Alan';
        
-- Exibir os dados dos clientes, os dados dos respectivos clientes que indicaram, 
-- os dados das respectivas vendas e dos produtos. 
select * from cliente indicado
	join cliente indicador on indicador.idcliente = indicado.fkindicador
		join  venda on venda.fkcliente = indicado.idcliente;
        
-- Exibir apenas a data da venda, o nome do produto e a quantidade do produto numa determinada venda.
select v.dt, p.nome, c.qtdproduto from carrinho as c
	join venda as v on c.fkvenda = v.idvenda
		join produto as p on c.fkproduto = p.idproduto;
        
-- Exibir apenas o nome do produto, o valor do produto e a soma da quantidade de
-- produtos vendidos agrupados pelo nome do produto.
select p.nome, p.preco, sum(c.qtdproduto) 'soma qtd produtos' from carrinho as c
	join produto as p on c.fkproduto = p.idproduto
		group by p.nome;
        
-- Inserir dados de um novo cliente. Exibir os dados dos clientes, das respectivas
-- vendas, e os clientes que não realizaram nenhuma venda.
insert into cliente values
(null, 'Roger', 'rogerinho@icloud.com', 98922-762, 34, 'casa-2', 'Piraporinha', 7); select*from cliente;

select * from cliente 
	left join venda on fkcliente = idcliente;
    
-- Exibir o valor mínimo e o valor máximo dos preços dos produtos;
select min(preco) 'menor preco', max(preco) 'maior preco' from produto;
    
-- Exibir a soma e a média dos preços dos produtos;
select avg(preco) 'media de preco' from produto;

--  Exibir a quantidade de preços acima da média entre todos os produtos;
select nome, descricao, preco from produto 
	where preco > (select avg (preco) from produto); 
    
-- Exibir a soma dos preços distintos dos produtos;
select distinct sum(preco) 'soma distinta' from produto;

-- Exibir a soma dos preços dos produtos agrupado por uma determinada venda;
select sum(p.preco) 'soma dos precos' from carrinho as c
	join produto as p on c.fkproduto = p.idproduto
		join venda as v on c.fkvenda = v.idvenda 
			group by c.fkvenda = 3;
    





