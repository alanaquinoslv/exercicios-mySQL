INSERT INTO Aula (id, nome)
VALUES
(2, 'Aula02'),
(3, 'Aula03'),
(4, 'Aula04');

-- inserindo dados de uma tabela em outra
SELECT * INTO tabelaNova FROM Aula
