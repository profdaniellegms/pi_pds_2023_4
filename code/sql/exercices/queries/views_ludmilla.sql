-- Liste todos os cursos em ordem alfabética pela Descrição. Mostre no Result Set todos os campos, menos o ID.

SELECT 
  descricao_curso,
  carga_horaria_curso,
  modalidade,
  eixo
FROM cursos
ORDER BY descricao_curso ASC;

-- Conte os cursos por modalidade, ordenando do maior para o menor. Mostre no Result Set as colunas Modalidade e Quantidade.

SELECT 
  modalidade,
  COUNT(*) AS Quantidade
FROM cursos
GROUP BY modalidade
ORDER BY Quantidade DESC;

-- Conte as turmas por curso. Mostre no Result Set as colunas Descrição do Curso e Quantidade.

SELECT 
 descricao_curso AS descricao, 
 COUNT (id_turma) AS quantidade
FROM cursos
INNER JOIN turmas
 on turmas.fk_curso = cursos.id_curso
GROUP BY descricao
