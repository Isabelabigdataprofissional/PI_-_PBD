-- 1 Stored procedure com cursor não vinculado de query dinâmica (PL/pgSQL)
-- Escreva um stored procedure que usa um cursor não vinculado de query dinâmica para percorrer os registros de uma ou mais tabelas da sua base de dados e calcular uma estatística relevante para o seu domínio. 
--A estatística pode ser, por exemplo
-- - Média, soma, contagem ou proporção de registros com alguma condição.
-- - Cálculo de desvio padrão, máximo, mínimo ou mediana.
-- - Taxa de crescimento ou queda entre períodos.
-- - Frequência de ocorrência de um valor específico.

DO $$
DECLARE
-- --1. declaração do cursor Esse tbm é cursor nao vinculado
cur_valor_entregas_mes REFCURSOR;

variavel_status VARCHAR(200):= 	'order_status';
variavel_valor_entregas_mes INT;
variavel_mes TEXT;
variavel_nome_tabela VARCHAR(200) := 'tb_order';

BEGIN
--2.abra o cursor 
OPEN cur_valor_entregas_mes  FOR EXECUTE

format('
	SELECT
 SUM(order_amount) AS valor_entrega ,
 EXTRACT ( MONTH FROM order_moment_created) :: TEXT AS mes
	FROM 	%s
	WHERE order_status >= $1
GROUP BY mes 
ORDER BY mes
 '
				,variavel_nome_tabela )
USING variavel_status ;

--3. Recuperação dos dados de interesse
LOOP
FETCH cur_valor_entregas_mes  INTO variavel_valor_entregas_mes, variavel_mes ;
EXIT WHEN NOT FOUND;
RAISE NOTICE 'Mês: %, Valor total entregue: %', variavel_mes, variavel_valor_entregas_mes;
END LOOP;

--4. Fechamento do cursos
CLOSE cur_valor_entregas_mes;
END; $$

SELECT
 SUM(order_amount) AS valor_entrega ,
 EXTRACT ( MONTH FROM order_moment_created) :: TEXT AS mes
	FROM 	tb_order
	WHERE order_status >= 'DE'
GROUP BY mes 
ORDER BY mes

-- 2 Trigger (PL/pgSQL)
-- Crie um trigger (e sua função associada) que execute uma ação automática sempre que um evento relevante ocorrer em uma ou mais tabelas da sua base de dados. 
--O trigger pode ser definido para responder a eventos como
-- - Inserção de novos registros
-- - Atualização de campos críticos
-- - Remoção de dados importantes
-- Exemplos de ações que podem ser implementadas
-- - Registro automático de logs em uma tabela auxiliar.
-- - Atualização de dados agregados em outra tabela.
-- - Envio de alerta ou bloqueio de alterações específicas.


