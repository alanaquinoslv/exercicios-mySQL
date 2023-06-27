CHECK CONSTRAINT
CREATE TABLE CNH (
    id int, not null,
    nome varchar(30),
    idade int CHECK (idade >= 18)
);

INSERT INTO CNH (id, nome, idade)
VALUES (1, 'Alan', 19);