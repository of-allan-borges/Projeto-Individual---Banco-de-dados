--Atualizar a view de Empréstimos e Reservas de um Usuário

CREATE OR REPLACE PROCEDURE sp_atualizar_mv_emprestimos_reservas_usuario()
LANGUAGE plpgsql
AS $$
BEGIN
	REFRESH MATERIALIZED VIEW mv_emprestimos_reservas_usuario;
END;
$$;



--Atualizar a view de Livros disponíveis por Biblioteca

CREATE OR REPLACE PROCEDURE sp_atualizar_mv_livros_disponiveis_por_biblioteca()
LANGUAGE plpgsql
AS $$
BEGIN
	REFRESH MATERIALIZED VIEW mv_livros_disponiveis_por_biblioteca;
END;
$$;


--Atualizar a view de Multas aplicadas por Usuário

CREATE OR REPLACE PROCEDURE sp_atualizar_mv_multas_por_usuario()
LANGUAGE plpgsql
AS $$
BEGIN
	REFRESH MATERIALIZED VIEW mv_multas_por_usuario;
END;
$$;
