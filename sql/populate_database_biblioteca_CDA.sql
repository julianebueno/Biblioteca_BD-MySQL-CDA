# Inserindo registros na tabela autor
INSERT INTO autor (id, nome, sobre, nascimento, falescimento, pais_origem, registrado_em) VALUES
(0,'maria','famosa escritora','1980-10-07',null,'BR','2023-08-01 00:00:00'),
(1,'joão','escritor clássico','1957-02-13','2005-07-25','BR','2023-08-01 00:00:00'),
(2,'fernado','prodígio da literatura','2004-08-06',null,'BR','2023-08-01 00:00:00'),
(3,'clarice','aprendiz de filósofo','1994-05-18',null,'BR','2023-08-01 00:00:00'),
(4,'josé','contador de histórias','1945-01-05','2018-09-28','BR','2023-08-01 00:00:00');

# Inserindo registros na tabela editora
INSERT INTO editora (id, razao_social, endereco, cnpj, telefone, registrado_em) VALUES
(0,'cultura','Rua da Sé, 5230, Sé, SP/SP','44.128.789/0001-57','(11)1234-5678','2023-08-01 00:00:00'),
(1,'paramore','Av Brasilia, 461, Copacana, RJ/RJ','22.652.423/0001-79','(21)4321-9876','2023-08-01 00:00:00'),
(2,'futurama','Rua 3, 152, Paraíso, NH/SP','20.216.598/0001-13','(17)8412-6912','2023-08-01 00:00:00'),
(3,'globo','Av dos Santos, 1756, Viva Velha, CT/PR','33.741.324/0001-71','(41)8152-9145','2023-08-01 00:00:00'),
(4,'platão','Av da Saudade, 889, Aparecida, FR/SC','21.612.888/0001-12','(48)4412-6213','2023-08-01 00:00:00');

# Inserindo registros na tabela genero
INSERT INTO genero (id, nome, publico_alvo, idade_restrita, registrado_em) VALUES
(0,'drama','todos',0,'2023-08-01 00:00:00'),
(1,'fantasia','juvenil',0,'2023-08-01 00:00:00'),
(2,'terror','adulto',1,'2023-08-01 00:00:00'),
(3,'ação','todos',0,'2023-08-01 00:00:00'),
(4,'romance','adulto',1,'2023-08-01 00:00:00');

# Inserindo registros na tabela livro
INSERT INTO livro (isbn, titulo, sub_titulo, idioma, sinopse, autor_id, editora_id, genero_id, registrado_em) VALUES
('153-7512364523','Amora','E seus amigos','português',null,3,2,1,'2023-08-01 00:00:00'),
('261-5115656849','Jolene','A Mulher escolhida','português',null,0,0,4,'2023-08-01 00:00:00'),
('399-5665003215','O Chamado','O Retorno','português',null,2,1,2,'2023-08-01 00:00:00'),
('424-7983451232','Vingadoras','Final','português',null,4,3,3,'2023-08-01 00:00:00'),
('596-4531986428','A Colina','Parte II','espanhol',null,1,1,0,'2023-08-01 00:00:00');

# Cada select para mostrar uma tabela da biblioteca
SELECT * FROM biblioteca.autor;
SELECT * FROM biblioteca.editora;
SELECT * FROM biblioteca.genero;
SELECT * FROM biblioteca.livro;
