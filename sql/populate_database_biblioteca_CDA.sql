SELECT * FROM biblioteca.autor;
SELECT * FROM biblioteca.editora;
SELECT * FROM biblioteca.genero;
SELECT * FROM biblioteca.livro;

INSERT INTO autor (id, nome, sobre, nascimento, falescimento, pais_origem, registrado_em) VALUES
(0,'maria','famosa escritora','1997-06-26',null,'BR','1997-06-26 00:00:00'),
(1,'joão','escritor clássico','1957-06-26','1998-06-26','BR','1997-06-26 00:00:00'),
(2,'josé','novato','1997-06-26',null,'BR','1997-06-26 00:00:00');

INSERT INTO editora (id, razao_social, endereco, cnpj, telefone, registrado_em) VALUES
(0,'cultura','Rua da Sé, 5230, Sé, SP','45.123.789/0001-59','(11)1234-5678','1997-06-26 00:00:00'),
(1,'paramore','Av Brasilia, 461, Copacana, RJ','32.652.423/0001-78','(21)4321-9876','1997-06-26 00:00:00');

INSERT INTO genero (id, nome, publico_alvo, idade_restrita, registrado_em) VALUES
(0,'drama','todos',0,'1997-06-26 00:00:00'),
(1,'fantasia','juvenil',1,'1997-06-26 00:00:00');

INSERT INTO livro (isbn, titulo, sub_titulo, idioma, sinopse, autor_id, editora_id, genero_id, registrado_em) VALUES
('453-7512364523','Amora','E seus amigos','português',null,0,0,1,'1997-06-26 00:00:00'),
('196-4531986428','A Colina','Parte II','espanhol',null ,1,1,0,'1997-06-26 00:00:00');
