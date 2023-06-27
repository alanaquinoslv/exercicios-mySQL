-- add coluna 
ALTER TABLE canal
ADD ativo bit

-- alterando qtd caracteres
ALTER TABLE canal
ALTER COLUMN nome varchar (300) not null

