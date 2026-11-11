CREATE TABLE cliente (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    telefone TEXT
);

INSERT INTO cliente (id, nome, telefone) VALUES (1,'Ana', '11 99999-9991' );
INSERT INTO cliente (id, nome, telefone) VALUES (2, 'Italo', '11 99999-9992');
INSERT INTO cliente (id, nome, telefone) VALUES (3, 'Murilo', '11 99999-9993');

SELECT * FROM  cliente;
SELECT * FROM cliente WHERE nome = 'Italo';

CREATE TABLE animal (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

INSERT INTO animal (id, nome, id_cliente) VALUES (1, ' princesa ', 1);
INSERT INTO animal (id, nome, id_cliente) VALUES (2, ' belinha ', 2);
INSERT INTO animal (id, nome, id_cliente) VALUES (3, ' THOR ', 3);

SELECT animal.nome, cliente.nome
FROM animal
JOIN cliente ON animal.id_cliente = cliente.id;

SELECT animal.nome AS animal, cliente.nome AS dono
FROM animal
JOIN cliente ON animal.id_cliente = cliente.id;
