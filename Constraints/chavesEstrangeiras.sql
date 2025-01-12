ALTER TABLE local
ADD CONSTRAINT fk_local_biblioteca
FOREIGN KEY (id_biblioteca) REFERENCES biblioteca(id_biblioteca);

-- FOREIGN KEY para emprestimo (id_usuario)
ALTER TABLE emprestimo
ADD CONSTRAINT fk_emprestimo_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);

-- FOREIGN KEY para emprestimo (id_livro)
ALTER TABLE emprestimo
ADD CONSTRAINT fk_emprestimo_livro FOREIGN KEY (id_livro) REFERENCES livro(id_livro);

-- FOREIGN KEY para emprestimo (id_funcionario_responsavel)
ALTER TABLE emprestimo
ADD CONSTRAINT fk_emprestimo_funcionario FOREIGN KEY (id_funcionario_responsavel) REFERENCES funcionario(id_funcionario);

-- FOREIGN KEY para funcionario (id_biblioteca)
ALTER TABLE funcionario
ADD CONSTRAINT fk_funcionario_biblioteca FOREIGN KEY (id_biblioteca) REFERENCES biblioteca(id_biblioteca);

-- FOREIGN KEY para livro_autor (id_livro)
ALTER TABLE livro_autor
ADD CONSTRAINT fk_livro_autor_livro FOREIGN KEY (id_livro) REFERENCES livro(id_livro);

-- FOREIGN KEY para livro_autor (id_autor)
ALTER TABLE livro_autor
ADD CONSTRAINT fk_livro_autor_autor FOREIGN KEY (id_autor) REFERENCES autor(id_autor);

-- FOREIGN KEY para livro_genero (id_livro)
ALTER TABLE livro_genero
ADD CONSTRAINT fk_livro_genero_livro FOREIGN KEY (id_livro) REFERENCES livro(id_livro);

-- FOREIGN KEY para livro_genero (id_genero)
ALTER TABLE livro_genero
ADD CONSTRAINT fk_livro_genero_genero FOREIGN KEY (id_genero) REFERENCES genero(id_genero);

-- FOREIGN KEY para livro (id_local)
ALTER TABLE livro
ADD CONSTRAINT fk_livro_local FOREIGN KEY (id_local) REFERENCES local(id_local);

-- FOREIGN KEY para multa (id_funcionario_responsavel)
ALTER TABLE multa
ADD CONSTRAINT fk_multa_funcionario FOREIGN KEY (id_funcionario_responsavel) REFERENCES funcionario(id_funcionario);

-- FOREIGN KEY para multa (id_usuario)
ALTER TABLE multa
ADD CONSTRAINT fk_multa_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);

-- FOREIGN KEY para multa (id_emprestimo)
ALTER TABLE multa
ADD CONSTRAINT fk_multa_emprestimo FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo);

-- FOREIGN KEY para reserva (id_usuario)
ALTER TABLE reserva
ADD CONSTRAINT fk_reserva_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);

-- FOREIGN KEY para reserva (id_livro)
ALTER TABLE reserva
ADD CONSTRAINT fk_reserva_livro FOREIGN KEY (id_livro) REFERENCES livro(id_livro);

-- FOREIGN KEY para reserva (id_funcionario_responsavel)
ALTER TABLE reserva
ADD CONSTRAINT fk_reserva_funcionario FOREIGN KEY (id_funcionario_responsavel) REFERENCES funcionario(id_funcionario);


