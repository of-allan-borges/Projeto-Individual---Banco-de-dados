-- Tabela: autor
CREATE TABLE autor (
    id_autor SERIAL PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL,
    biografia TEXT,
    nacionalidade VARCHAR(50),
    data_nascimento DATE
);

-- Tabela: biblioteca
CREATE TABLE biblioteca (
    id_biblioteca SERIAL PRIMARY KEY,
    nome_biblioteca VARCHAR(100) NOT NULL,
    endereco TEXT NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    horario_abertura TIME NOT NULL,
    horario_fechamento TIME NOT NULL,
    quantidade_funcionarios INT NOT NULL
);

-- Tabela: emprestimo
CREATE TABLE emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    status VARCHAR(20) NOT NULL,
    tipo_emprestimo VARCHAR(50) NOT NULL,
    id_funcionario_responsavel INT NOT NULL
);

-- Tabela: funcionario
CREATE TABLE funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    data_contratacao DATE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    id_biblioteca INT NOT NULL
);

-- Tabela: genero
CREATE TABLE genero (
    id_genero SERIAL PRIMARY KEY,
    nome_genero VARCHAR(50) NOT NULL,
    tipo_genero VARCHAR(50),
    data_criacao DATE NOT NULL
);

-- Tabela: livro_autor
CREATE TABLE livro_autor (
    id_livro INT NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (id_livro, id_autor)
);

-- Tabela: livro_genero
CREATE TABLE livro_genero (
    id_livro INT NOT NULL,
    id_genero INT NOT NULL,
    PRIMARY KEY (id_livro, id_genero)
);

-- Tabela: livro
CREATE TABLE livro (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    editora VARCHAR(100) NOT NULL,
    data_publicacao DATE NOT NULL,
    quantidade_disponivel INT NOT NULL,
    id_local INT NOT NULL,
    quantidade_total INT NOT NULL
);

-- Tabela: local
CREATE TABLE local (
    id_local SERIAL PRIMARY KEY,
    descricao TEXT NOT NULL,
    andar INT NOT NULL,
    prateleira VARCHAR(20) NOT NULL,
    tipo_local VARCHAR(50) NOT NULL,
    capacidade INT NOT NULL
);

-- Tabela: multa
CREATE TABLE multa (
    id_multa SERIAL PRIMARY KEY,
    id_funcionario_responsavel INT NOT NULL,
    id_usuario INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_multa DATE NOT NULL,
    status_multa VARCHAR(20) NOT NULL,
    descricao TEXT NOT NULL,
    data_pagamento DATE,
    id_emprestimo INT
);

-- Tabela: reserva
CREATE TABLE reserva (
    id_reserva SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_reserva DATE NOT NULL,
    status_reserva VARCHAR(20) NOT NULL,
    data_validade DATE NOT NULL,
    tipo_reserva VARCHAR(50) NOT NULL,
    id_funcionario_responsavel INT NOT NULL
);

-- Tabela: usuario
CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    data_registro DATE NOT NULL,
    endereco TEXT NOT NULL,
    data_nascimento DATE NOT NULL
);
