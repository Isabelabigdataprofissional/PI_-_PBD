-- 1 Stored procedure com cursor não vinculado de query dinâmica (PL/pgSQL)
-- Escreva um stored procedure que usa um cursor não vinculado de query dinâmica para percorrer os registros de uma ou mais tabelas da sua base de dados e calcular uma estatística relevante para o seu domínio. 
--A estatística pode ser, por exemplo
-- - Média, soma, contagem ou proporção de registros com alguma condição.
-- - Cálculo de desvio padrão, máximo, mínimo ou mediana.
-- - Taxa de crescimento ou queda entre períodos.
-- - Frequência de ocorrência de um valor específico.


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

-- 3 Modelo de machine learning (classifi cação) com scikit-learn e validação cruzada (Python)
-- Implemente um experimento de machine learning em Python, utilizando a biblioteca scikit-learn, com validação cruzada para avaliar a qualidade do modelo. O objetivo é treinar um modelo simples de classifi cação que aprenda um padrão a partir dos dados do seu projeto. Escolha um dos seguintes modelos, de acordo com o seu problema
-- - Regressão linear
-- - Árvore de decisão
-- - Random Forest
-- - KNN
-- Sua implementação deve conter
-- - Leitura dos dados a partir de um banco gerenciado pelo PostgreSQL.
-- - Treinamento do modelo com scikit-learn.
-- - Avaliação com validação cruzada usando pelo menos 5 folds.
