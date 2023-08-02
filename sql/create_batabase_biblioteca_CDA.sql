# Criação do banco de dados para a biblioteca
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

# Criação da tabela autor, se ela já não existir
CREATE TABLE IF NOT EXISTS autor(
id INT PRIMARY KEY NOT NULL UNIQUE,
nome VARCHAR(50),
sobre VARCHAR(1500),
nascimento DATE,
falescimento DATE,
pais_origem VARCHAR(20),
registrado_em TIMESTAMP
);

# Criação da tabela editora, se ela já não existir
CREATE TABLE IF NOT EXISTS editora(
id INT PRIMARY KEY NOT NULL UNIQUE,
razao_social VARCHAR(50),
endereco VARCHAR(100),
cnpj VARCHAR(20),
telefone VARCHAR(15),
registrado_em TIMESTAMP
);

# Criação da tabela genero, se ela já não existir
CREATE TABLE IF NOT EXISTS genero(
id INT PRIMARY KEY NOT NULL UNIQUE,
nome VARCHAR(20),
publico_alvo VARCHAR(20),
idade_restrita BOOLEAN,
registrado_em TIMESTAMP
);

# Criação da tabela livro, se ela já não existir
CREATE TABLE IF NOT EXISTS livro(
isbn VARCHAR(15) PRIMARY KEY NOT NULL UNIQUE,
titulo VARCHAR(50),
sub_titulo VARCHAR(50),
idioma VARCHAR(20),
sinopse VARCHAR(1500),
autor_id INT,
editora_id INT,
genero_id INT,
registrado_em TIMESTAMP
);

# Definindo as chaves estrangeiras da tabela livro
ALTER TABLE livro ADD FOREIGN KEY (autor_id) REFERENCES autor (id);
ALTER TABLE livro ADD FOREIGN KEY (editora_id) REFERENCES editora (id);
ALTER TABLE livro ADD FOREIGN KEY (genero_id) REFERENCES genero (id);

