INSERT INTO cursos VALUES
('1', 'Programador de Sistemas', 200, 'Qualificação', 'Tecnologia da Informação'),
('2', 'Técnico em Informática', 1200, 'Técnico', 'Tecnologia da Informação'),
('3', 'Técnico em Adminitração', 1100, 'Técnico', 'Gestão e Negócios'),
('4', 'Programação em Python', 156, 'Qualificação', 'Tecnologia da Informação'),
('5', 'Especialização em Instrumentação Cirúrgica', 360, 'Pós Graduação Lato Sensu - Especialização', 'Saúde'),
('6', 'Design de Sobrancelhas', 130, 'Aperfeiçoamento', 'Moda e Beleza'),
('7', 'Técnico em Segurança do Trabalho', 1200, 'Técnico', 'Segurança'),
('8', 'Assistente de Contabilidade', 160, 'Qualificação', 'Gestão e Negócios'),
('9', 'Técnico em Logística', 800, 'Técnico', 'Transportes'),
('10', 'Atendente de Farmácia', 240, 'Qualificação', 'Saúde'),
('11', 'Tecnólogo - Analise e Desenvolvimento Sistemas', 1600, 'Superior - Tecnologia', 'Tecnologia da Informação'),
('12', 'Programador de Sistemas', 180, 'Qualificação', 'Tecnologia da Informação'),
('13', 'Desenvolvedor Web Python', 150, 'Qualificação', 'Tecnologia da Informação'),
('14', 'Mestrado Profissional em Ciência de Dados', 360, 'Pós Graduação Lato Sensu - Especialização', 'Tecnologia da Informação'),
('15', 'Lógica de Programação', 40, 'Capacitação', 'Tecnologia da Informação'),
('16', 'Desenvolvedor Web PHP', 150, 'Qualificação', 'Tecnologia da Informação'),
('17', 'Tecnólogo - Redes de Computadores', 2200, 'Superior - Tecnologia', 'Tecnologia da Informação'),
('18', 'Automaquiagem', 40, 'Capacitação', 'Moda e Beleza'),
('19', 'Engenharia de Software', 3400, 'Superior - Bacharel', 'Tecnologia da Informação'),
('20', 'Sistemas de Informação', 2600, 'Superior - Bacharel', 'Tecnologia da Informação');

INSERT INTO suspensoes VALUES
('1', 'Feriado Nacional - Carnaval', '2024-02-10', 'Integral', true),
('2', 'Feriado Nacional - Finados', '2024-11-02', 'Noturno', false),
('3', 'Feriado Nacional - Páscoa', '2024-03-31', 'Noturno', true),
('4', 'Data Comemorativa - Dia dos Povos Originários', '2024-04-19', 'Matutino', false),
('5', 'Feriado Nacional - Independência', '2024-09-07', 'Integral', true),
('6', 'Feriado Nacional - Dia de Reis', '2024-01-06', 'Vespertino', false),
('7', 'Feriado Nacional - Proclamação da República', '2024-11-15', 'Integral', true),
('8', 'Feriado Nacional - Dia do trabalho', '2024-05-01', 'Integral', true),
('9', 'Feriado Nacional - Tiradentes', '2024-04-21', 'Vespertino', true),
('10', 'Data Comemorativa - Dia da Mentira', '2024-04-01', 'Matutino', false),
('11', 'Atestado Médico Instrutor', '2024-02-10', 'Integral', true);

INSERT INTO salas VALUES
('1','Sala 101','S', false, true, false),
('2','Laboratório de Anatomia','L', true, true, true),
('3','Auditório A','A', true, true, false),
('4','Sala 102','S', false, true, false),
('5','Sala 103','S', true, true, false),
('6','Auditório B','A', true, false, true),
('7','Sala 104','S', true, true, false),
('8','Laboratório de Química','L', false, false, false),
('9','Sala 105','S', true, false, true),
('10','Laboratório de Informática','L', false, true, false),
('11','Sala 106','S', true, false, true),
('12','Sala 201','S', true, true, true),
('13','Auditório C','A', true, false, true),
('14','Sala 202','S', false, false, true),
('15','Sala 203','S', false, false, false),
('16','Auditório D','A', true, false, true),
('17','Sala 204','S', false, true, true),
('18','Laboratório de Estética','L', false, false, false),
('19','Sala 205','S', true, false, true),
('20','Sala 206','S', true, true, false);

INSERT INTO instrutores VALUES 
('1', '1234', 'Fabiana'),
('2', '5678', 'Danielle'),
('3', '9012', 'José Carlos'),
('4', '8562', 'Taynan'),
('5', '7980', 'Ludmilla'),
('6', '4156', 'Camila'),
('7', '2323', 'Matsui'),
('8', '0195', 'Luís'),
('9', '7238', 'Yasmine'),
('10', '0023', 'Débora');

INSERT INTO competencias VALUES
('1', 'Redes de Computadores'),
('2', 'Banco de Dados'),
('3', 'Programação Web'),
('4', 'Programação Java'),
('5', 'Programação Python'),
('6', 'Programação JavaScript'),
('7', 'Administração'),
('8', 'Business Model Canvas'),
('9', 'Power BI'),
('10', 'Saúde e Segurança do Trabalho');

INSERT INTO unidades_curriculares VALUES
('1', 'Introdução ao Python', 40, 1, '1', '1'),
('2', 'Estruturas de Dados em Python', 60, 2, '1', '2'),
('3', 'SEO - Otimização para Motores de Busca', 12, 1, '2', '3'),
('4', 'Análise de Dados com Pandas', 56, 3, '1', '4'),
('5', 'Planejamento e Escopo de Projetos', 30, 1, '3', '5'),
('6', 'Negociação e Gestão de Conflitos', 20, 2, '3', '6'),
('7', 'Conversação Avançada em Inglês', 30, 4, '4', '7'),
('8', 'Princípios de Design Gráfico', 36, 1, '5', '8'),
('9', 'Orçamento Pessoal e Investimentos', 40, 1, '6', '9'),
('10', 'Composição Fotográfica', 20, 2, '7', '10'),
('11', 'Introdução ao Python', 80, 1, '1', '1'),
('12', 'Estruturas de Dados em Python', 40, 2, '1', '2'),
('13', 'SEO - Otimização para Motores de Busca', 20, 1, '2', '3'),
('14', 'Análise de Dados com Pandas', 60, 3, '1', '4'),
('15', 'Planejamento e Escopo de Projetos', 44, 1, '3', '5'),
('16', 'Negociação e Gestão de Conflitos', 16, 2, '3', '6'),
('17', 'Conversação Avançada em Inglês', 30, 4, '4', '7'),
('18', 'Princípios de Design Gráfico', 20, 1, '5', '8'),
('19', 'Orçamento Pessoal e Investimentos', 44, 1, '6', '9'),
('20', 'Composição Fotográfica', 52, 2, '7', '10');

INSERT INTO turmas VALUES
('1', 'CEP Cora Coralina', 'Matutino', true, '2023-01-18', '2024-03-18', 5, '1'),
('2', 'CEP Cora Coralina', 'Matutino', true, '2024-01-18', '2025-03-18', 5, '2'),
('3', 'CEP Cora Coralina', 'Matutino', true, '2023-01-18', '2024-03-18', 5, '3'),
('4', 'CEP Cora Coralina', 'Vespertino', true, '2024-02-02', '2025-05-15', 5, '1'),
('5', 'CEP Cora Coralina', 'Vespertino', true, '2023-02-02', '2024-05-15', 5, '2'),
('6', 'CEP Cora Coralina', 'Vespertino', true, '2023-02-02', '2024-05-15', 5, '3'),
('7', 'CEP Cora Coralina', 'Noturno', true, '2023-02-06', '2024-03-15', 5, '1'),
('8', 'CEP Cora Coralina', 'Noturno', true, '2024-02-06', '2025-03-15', 5, '3'),
('9', 'CEP Aparecida de Goiânia', 'Noturno', true, '2023-02-03', '2024-03-15', 5, '2'),
('10', 'CEP Aparecida de Goiânia', 'Noturno', false, '2023-02-03', '2024-03-15', 5, '3'),
('11', 'CEP Aparecida de Goiânia', 'Matutino', true, '2024-02-05', '2024-03-15', 4, '4'),
('12', 'CEP Aparecida de Goiânia', 'Vespertino', false, '2023-11-03', '2024-01-22', 4, '3'),
('13', 'CEP Jataí', 'Noturno', true, '2022-06-05', '2024-06-04', 3, '5'),
('14', 'CEP Jataí', 'Noturno', true, '2023-08-10', '2023-12-20', 5, '1'),
('15', 'CEP Jataí', 'Vespertino', false, '2022-09-15', '2023-06-30', 3, '2'),
('16', 'CEP Jataí', 'Matutino', true, '2023-02-20', '2023-11-30', 4, '3'),
('17', 'CEP Jataí', 'Matutino', false, '2022-05-01', '2023-03-15', 5, '1'),
('18', 'CEP Porangatu', 'Noturno', true, '2023-12-05', '2024-09-30', 3, '4'),
('19', 'CEP Porangatu', 'Matutino', false, '2022-08-08', '2023-04-25', 4, '2'),
('20', 'CEP Porangatu', 'Vespertino', true, '2024-01-10', '2024-07-01', 5, '5');

-- INSERT INTO aulas VALUES
-- ('1', '2024-02-09', 'Ministrada', '3', '1', '1'),
-- ('2', '2024-02-10', 'Prevista', '1', '1', '1'),
-- ('3', '2024-02-15', 'Ministrada', '1', '1', '1'),
-- ('4', '2024-02-05', 'Ministrada', '1', '1', '1'),
-- ('5', '2024-02-06', 'Prevista', '1', '1', '1'),
-- ('6', '2024-02-08', 'Prevista', '1', '1', '1'),
-- ('7', '2024-03-02', 'Suspensa', '1', '1', '1'),
-- ('8', '2024-03-05', 'Prevista', '1', '1', '1'),
-- ('9', '2024-03-08', 'Ministrada', '1', '1', '1'),
-- ('10', '2024-02-29', 'Ministrada', '1', '1', '1');

-- INSERT INTO instrutores_competencias VALUES 
-- ('1', '1'),
-- ('2', '2'),
-- ('3', '2'),
-- ('4', '4'),
-- ('5', '5'),
-- ('6', '6'),
-- ('7', '6'),
-- ('8', '8'),
-- ('9', '9'),
-- ('10', '10');


1--Acrescente às tabelas “aulas” e “aulas_suspensoes” novos registros, de modo que todas as turmas com data de início posterior a 30/06/2023 tenham 4 aulas cada:
--uma prevista, uma ministrada, uma suspensa com reposição e outra suspensa sem reposição.
SELECT aulas.id_aula::integer, status_aula, reposicao FROM aulas
LEFT OUTER JOIN turmas
	ON turmas.id_turma = aulas.fk_turma
LEFT OUTER JOIN aulas_suspensoes
	ON aulas.id_aula = aulas_suspensoes.id_aula
LEFT OUTER JOIN suspensoes
	ON aulas_suspensoes.id_suspensao = suspensoes.id_suspensao
WHERE data_inicio > '30/06/2023' 
ORDER BY aulas.id_aula::integer

INSERT INTO aulas (id_aula, data_aula, status_aula, fk_turma, fk_unidade, fk_sala)
VALUES
('1', '2024-04-21', 'Suspensa', '4', '1', '1'),
('2', '2024-02-04', 'Ministrada', '4', '1', '2'),
('3', '2024-04-01', 'Suspensa', '4', '1', '3'),
('4', '2024-02-06', 'Prevista', '4', '1', '4'),

('5', '2024-03-02', 'Prevista', '5', '2', '5'),
('6', '2024-03-03', 'Ministrada', '5', '2', '6'),
('7', '2024-03-04', 'Suspensa', '5', '2', '7'),
('8', '2024-03-05', 'Suspensa', '5', '2', '8'),

('9', '2024-03-18', 'Prevista', '6', '3', '9'),
('10', '2024-03-31', 'Ministrada', '6', '3', '10'),
('11', '2024-03-20', 'Suspensa', '6', '3', '11'),
('12', '2024-03-21', 'Suspensa', '6', '3', '12'),

('13', '2024-03-19', 'Ministrada', '8', '4', '13'),
('14', '2024-02-10', 'Suspensa', '8', '4', '14'),
('15', '2024-01-06', 'Suspensa', '8', '4', '15'),
('16', '2024-03-22', 'Prevista', '8', '4', '16'),

('17', '2024-09-07', 'Suspensa', '11', '1', '1'),
('18', '2024-03-19', 'Ministrada', '11', '1', '2'),
('19', '2024-04-19', 'Suspensa', '11', '1', '3'),
('20', '2024-03-21', 'Prevista', '11', '1', '4'),

('21', '2024-02-10', 'Suspensa', '18', '2', '5'),
('22', '2024-03-19', 'Ministrada', '18', '2', '6'),
('23', '2024-04-19', 'Suspensa', '18', '2', '7'),
('24', '2024-03-21', 'Prevista', '18', '2', '8'),

('25', '2024-03-18', 'Prevista', '19', '3', '9'),
('26', '2024-03-19', 'Ministrada', '19', '3', '10'),
('27', '2024-03-20', 'Suspensa', '19', '3', '11'),
('28', '2024-03-21', 'Suspensa', '19', '3', '12'),

('29', '2024-04-21', 'Suspensa', '20', '4', '13'),
('30', '2024-03-19', 'Prevista', '20', '4', '14'),
('31', '2024-04-01', 'Suspensa', '20', '4', '15'),
('32', '2024-03-21', 'Ministrada', '20', '4', '16'),

('33', '2023-02-10', 'Prevista', '1', '1', '1'),
('34', '2023-02-11', 'Suspensa', '1', '2', '2'),
('35', '2023-02-12', 'Suspensa', '1', '3', '3'),
('36', '2023-02-13', 'Ministrada', '1', '4', '4'),

('37', '2024-11-02', 'Suspensa', '2', '5', '5'),
('38', '2024-02-21', 'Ministrada', '2', '6', '6'),
('39', '2024-05-01', 'Suspensa', '2', '7', '7'),
('40', '2024-02-23', 'Prevista', '2', '8', '8'),

('41', '2023-02-15', 'Prevista', '3', '9', '9'),
('42', '2023-02-16', 'Suspensa', '3', '10', '10'),
('43', '2023-02-17', 'Ministrada', '3', '11', '11'),
('44', '2023-02-18', 'Suspensa', '3', '12', '12'),

('45', '2023-02-10', 'Prevista', '7', '1', '1'),
('46', '2023-02-11', 'Ministrada', '7', '2', '2'),
('47', '2023-02-12', 'Suspensa', '7', '3', '3'),
('48', '2023-02-13', 'Suspensa', '7', '4', '4'),

('49', '2023-02-15', 'Prevista', '9', '5', '5'),
('50', '2023-02-16', 'Suspensa', '9', '6', '6'),
('51', '2023-02-17', 'Suspensa', '9', '7', '7'),
('52', '2023-02-18', 'Ministrada', '9', '8', '8'),

('53', '2024-02-10', 'Prevista', '10', '9', '9'),
('54', '2024-02-11', 'Suspensa', '10', '10', '10'),
('55', '2024-02-12', 'Suspensa', '10', '11', '11'),
('56', '2024-02-13', 'Ministrada', '10', '12', '12'),

('57', '2024-02-04', 'Ministrada', '12', '4', '7'),
('58', '2024-03-31', 'Suspensa', '12', '4', '6'),
('59', '2024-04-01', 'Suspensa', '12', '4', '5'),
('60', '2024-02-03', 'Prevista', '12', '4', '8'),

('61', '2024-03-03', 'Ministrada', '14', '6', '3'),
('62', '2024-01-06', 'Suspensa', '14', '6', '2'),
('63', '2024-09-07', 'Suspensa', '14', '6', '1'),
('64', '2024-03-02', 'Prevista', '14', '6', '4');


INSERT INTO aulas_suspensoes(id_aula, id_suspensao) VALUES 
('39', '8'),	    
('37', '2'),		
('3', '10'),	
('1', '9'),	    
('15', '6'),		
('14', '11'),	
('19', '4'),	
('17', '5'),		
('58', '3'),		
('59', '10'),	
('62', '6'),	
('63', '5'),		
('23', '4'),		
('21', '11'),
('29', '9'),	    
('31', '10');

2--Crie uma consulta utilizando JOIN que conte as aulas por status: previstas, ministradas, canceladas com reposição e canceladas sem reposição. 
--O Result Set deverá conter as colunas “status”, “aulas previstas”, “aulas ministradas”, “aulas suspensas c/ reposição”, “aulas suspensas s/ reposição”.

SELECT
(SELECT COUNT(id_aula) FROM aulas
LEFT OUTER JOIN turmas
	ON turmas.id_turma = aulas.fk_turma
WHERE data_inicio > '30/06/2023' AND status_aula = 'Ministrada') as aulas_ministradas,
(SELECT COUNT(id_aula) FROM aulas
LEFT OUTER JOIN turmas
	ON turmas.id_turma = aulas.fk_turma
WHERE data_inicio > '30/06/2023' AND status_aula = 'Prevista') as aulas_previstas,
(SELECT COUNT(aulas.id_aula) FROM aulas
LEFT OUTER JOIN turmas
	ON turmas.id_turma = aulas.fk_turma
LEFT OUTER JOIN aulas_suspensoes
	ON aulas.id_aula = aulas_suspensoes.id_aula
LEFT OUTER JOIN suspensoes
	ON aulas_suspensoes.id_suspensao = suspensoes.id_suspensao
WHERE data_inicio > '30/06/2023' AND status_aula = 'Suspensa' AND reposicao = true ) as "aulas suspensas c/ reposição",
(SELECT COUNT(aulas.id_aula) FROM aulas
LEFT OUTER JOIN turmas
	ON turmas.id_turma = aulas.fk_turma
LEFT OUTER JOIN aulas_suspensoes
	ON aulas.id_aula = aulas_suspensoes.id_aula
LEFT OUTER JOIN suspensoes
	ON aulas_suspensoes.id_suspensao = suspensoes.id_suspensao
WHERE data_inicio > '30/06/2023' AND status_aula = 'Suspensa' AND reposicao = false ) as "aulas suspensas s/ reposição"

3--Acrescente às tabelas “instrutores” e “instrutores_competencias” novos registros, de modo que cada instrutor possua as seguintes competências:
--Fabiana - Redes de Computadores
--Danielle - Banco de Dados, Programação Python, Programação Javascript
--José Carlos - Programação Java, Programação Python, Power BI
--Taynan - Redes de Computadores, Banco de Dados
--Ludmilla - Saúde e Segurança do Trabalho
--Camila - Programação Web, Banco de Dados
--Matsui - Programação Python, Programação Java
--Luís - Administração, Business Model Canvas, Power BI
--Yasmine - Business Model Canvas, Administração
--Débora - Business Model Canvas, Power BI

INSERT INTO instrutores_competencias(id_competencia, id_instrutor) VALUES
('1', '1'),
('2', '2'),
('5', '2'),
('6', '2'),
('4', '3'),
('5', '3'),
('9', '3'),
('1', '4'),
('2', '4'),
('10', '5'),
('3', '6'),
('2', '6'),
('5', '7'),
('4', '7'),
('7', '8'),
('8', '8'),
('9', '8'),
('8', '9'),
('7', '9'),
('8', '10'),
('9', '10');


4--Crie uma consulta utilizando JOIN que mostre a quantidade de competências que cada instrutor possui. 
--O Result Set deverá conter as seguintes colunas: “nome do instrutor” e “total de competências”.

SELECT nome_completo AS nome_do_instrutor , COUNT(id_competencia) AS total_de_competências FROM instrutores
LEFT OUTER JOIN instrutores_competencias
	ON instrutores.id_instrutor = instrutores_competencias.id_instrutor
GROUP BY nome_do_instrutor



