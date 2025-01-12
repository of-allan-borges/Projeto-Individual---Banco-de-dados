-- reserva
ALTER TABLE reserva
ADD CONSTRAINT unica_reserva_usuario_livro UNIQUE (id_usuario, id_livro);

-- multa
ALTER TABLE multa
ADD CONSTRAINT unica_multa_funcionario UNIQUE (id_funcionario_responsavel, id_multa);

-- livro_genero
ALTER TABLE livro_genero
ADD CONSTRAINT unica_livro_genero UNIQUE (id_livro, id_genero);

-- livro_autor
ALTER TABLE livro_autor
ADD CONSTRAINT unica_livro_autor UNIQUE (id_livro, id_autor);

--emprestimo
ALTER TABLE emprestimo
ADD CONSTRAINT unica_emprestimo_usuario_livro UNIQUE (id_usuario, id_livro);
