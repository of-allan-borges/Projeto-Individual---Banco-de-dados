--View para empréstimos e reservas de um Usuário

--Permite consultar todos os empréstimos e reservas feitas por um determinado usuário, com detalhes sobre o status, datas e livros envolvidos.

CREATE MATERIALIZED VIEW mv_emprestimos_reservas_usuario AS
SELECT
	u.id_usuario AS usuario_id,
	u.nome AS usuario_nome,
	l.titulo AS livro_titulo,
	e.data_emprestimo AS data_emprestimo,
	e.data_devolucao AS data_devolucao,
	e.status AS status_emprestimo,
	r.data_reserva AS data_reserva,
	r.status_reserva AS status_reserva,
	r.data_validade AS data_validade_reserva
FROM
	usuario u
JOIN emprestimo e ON u.id_usuario = e.id_usuario
JOIN livro l ON e.id_livro = l.id_livro
LEFT JOIN reserva r ON u.id_usuario = r.id_usuario AND l.id_livro = r.id_livro;


--View para Livros disponíveis por Biblioteca

--Exibe todos os livros disponíveis em cada biblioteca, com suas respectivas localizações (prateleira, andar), e a quantidade disponível para empréstimo.
CREATE MATERIALIZED VIEW mv_livros_disponiveis_por_biblioteca AS
SELECT
	b.id_biblioteca AS biblioteca_id,
	b.nome_biblioteca AS biblioteca_nome,
	l.descricao AS local_descricao,
	l.andar AS local_andar,
	l.prateleira AS local_prateleira,
	l.tipo_local AS tipo_local,
	l.capacidade AS capacidade_local,
	livro.titulo AS livro_titulo,
	livro.quantidade_disponivel AS quantidade_disponivel
FROM
	biblioteca b
JOIN local l ON b.id_biblioteca = l.id_biblioteca
JOIN livro ON l.id_local = livro.id_local
WHERE
	livro.quantidade_disponivel > 0;

--View para multas aplicadas por Usuário

--Exibe todas as multas aplicadas aos usuários, com informações sobre o valor, status e a razão da multa.

CREATE MATERIALIZED VIEW mv_multas_por_usuario AS
SELECT
	u.id_usuario AS usuario_id,
	u.nome AS usuario_nome,
	m.valor AS valor_multa,
	m.status_multa AS status_multa,
	m.descricao AS descricao_multa,
	m.data_multa AS data_multa,
	m.data_pagamento AS data_pagamento
FROM
	multa m
JOIN usuario u ON m.id_usuario = u.id_usuario;

