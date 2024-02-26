

CREATE TABLE cursos (
  id_curso VARCHAR PRIMARY KEY,
  descricao_curso VARCHAR NOT NULL,
  carga_horaria_curso INTEGER NOT NULL,
  modalidade VARCHAR NOT NULL CHECK ( 
	  modalidade IN (
		'Iniciação', 'Capacitação', 'Qualificação', 
		'Aperfeiçoamento', 'Técnico', 'Superior - Licenciatura', 
		'Superior - Bacharel', 'Superior - Tecnologia', 
		'Pós Graduação Lato Sensu - Especialização',
		'Pós-Graduação Stricto Sensu - Mestrado', 
		'Pós-Graduação Stricto Sensu - Doutorado'
	  )
  ),
  eixo VARCHAR NOT NULL
);

CREATE TABLE suspensoes (
  id_suspensao VARCHAR PRIMARY KEY,
  motivo_suspensao VARCHAR NOT NULL,
  data_suspensao DATE NOT NULL DEFAULT CURRENT_DATE,
  turno_suspensao VARCHAR NOT NULL DEFAULT 'Integral',
  reposicao BOOLEAN DEFAULT true
);

CREATE TABLE salas (
  id_sala VARCHAR PRIMARY KEY,
  nome_sala VARCHAR NOT NULL,
  tipo_sala CHAR(1) CHECK ( 
	  tipo_sala IN ('L', 'A', 'S')
  ),
  lousa_digital BOOLEAN DEFAULT false,
  projetor BOOLEAN DEFAULT true,
  ar_condicionado BOOLEAN DEFAULT true
);

CREATE TABLE instrutores (
	id_instrutor VARCHAR PRIMARY KEY, 
	matricula VARCHAR(50) NOT NULL UNIQUE,
	nome_completo VARCHAR NOT NULL
);

CREATE TABLE competencias (
    id_competencia VARCHAR PRIMARY KEY NOT NULL,
    descricao VARCHAR NOT NULL
);

--Tabela Modelo Primárias

CREATE TABLE unidades_curriculares (
  id_unidade VARCHAR PRIMARY KEY,
  descricao_unidade VARCHAR NOT NULL,
  carga_horaria_unidade INTEGER NOT NULL,
  ordem INT NOT NULL,
  fk_curso VARCHAR NOT NULL REFERENCES cursos (id_curso),
  fk_instrutor VARCHAR NOT NULL REFERENCES instrutores (id_instrutor)
);

CREATE TABLE turmas (
	id_turma VARCHAR PRIMARY KEY,
	polo_educacional VARCHAR NOT NULL,
	turno VARCHAR NOT NULL CHECK (
		turno IN ('Matutino', 'Vespertino', 'Noturno')
	),
	presencial BOOLEAN DEFAULT true,
	data_inicio DATE NOT NULL DEFAULT CURRENT_DATE,
	data_fim DATE CHECK( data_fim > data_inicio ),
	horas_aula_dia INTEGER NOT NULL,
	fk_curso VARCHAR REFERENCES cursos(id_curso)
);

-- Tabelas Fato

CREATE TABLE aulas (
	id_aula VARCHAR PRIMARY KEY,
	data_aula DATE DEFAULT CURRENT_DATE,
	status_aula VARCHAR DEFAULT 'Prevista' CHECK (
		status_aula IN ('Prevista', 'Ministrada', 'Suspensa')
	),
	fk_turma VARCHAR NOT NULL REFERENCES turmas (id_turma),
	fk_unidade VARCHAR NOT NULL REFERENCES unidades_curriculares (id_unidade),
	fk_sala VARCHAR NOT NULL REFERENCES salas (id_sala)
);

-- Tabelas Relação

CREATE TABLE instrutores_competencias (
    id_competencia VARCHAR NOT NULL REFERENCES competencias (id_competencia),
    id_instrutor VARCHAR NOT NULL REFERENCES instrutores (id_instrutor),
	PRIMARY KEY (id_competencia, id_instrutor)
);

CREATE TABLE aulas_suspensoes (
  id_aula varchar NOT NULL REFERENCES aulas (id_aula), 
  id_suspensao varchar NOT NULL REFERENCES suspensoes (id_suspensao),
  PRIMARY KEY (id_aula, id_suspensao)
);

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
('14', 'Mestrado Profissional em Ciência de Dados', 360, 'Pós-Graduação Stricto Sensu - Mestrado', 'Tecnologia da Informação'),
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

INSERT INTO aulas VALUES
('11', '2024-02-12', 'Prevista', '2', '1', '1'),
('12', '2024-02-18', 'Ministrada', '2', '1', '1'),

('13', '2024-02-10', 'Suspensa', '2', '1', '1'),

('14', '2024-11-02', 'Suspensa', '2', '1', '5'),

('15', '2024-02-25', 'Prevista', '4', '1', '1'),
('16', '2024-02-27', 'Ministrada', '4', '1', '1'),

('17', '2024-03-31', 'Suspensa', '4', '1', '1'),

('27', '2024-04-19', 'Suspensa', '4', '1', '7'),

('18', '2024-03-04', 'Prevista', '8', '1', '1'),
('19', '2024-03-07', 'Ministrada', '8', '1', '1'),

('23', '2024-09-07', 'Suspensa', '8', '1', '1'),

('24', '2024-01-06', 'Suspensa', '8', '1', '9'),

('20', '2024-03-10', 'Ministrada', '11', '1', '1'),
('21', '2024-03-13', 'Prevista', '11', '1', '1'),

('34', '2024-11-15', 'Suspensa', '11', '1', '1'),

('33', '2024-04-01', 'Suspensa', '11', '1', '8'),

('22', '2024-03-16', 'Ministrada', '12', '1', '1'),
('25', '2024-03-23', 'Prevista', '12', '1', '1'),

('26', '2024-05-01', 'Suspensa', '12', '1', '1'),

('28', '2024-02-10', 'Suspensa', '12', '1', '15'),

('29', '2024-04-04', 'Ministrada', '14', '1', '1'),
('31', '2024-04-10', 'Prevista', '14', '1', '1'),

('30', '2024-04-21', 'Suspensa', '14', '1', '1'),

('32', '2024-03-31', 'Suspensa', '14', '1', '18'),

('35', '2024-04-20', 'Prevista', '18', '1', '1'),
('36', '2024-04-22', 'Ministrada', '18', '1', '1'),

('37', '2024-02-10', 'Suspensa', '18', '1', '1'),

('38', '2024-09-07', 'Suspensa', '18', '1', '13'),

('39', '2024-05-02', 'Ministrada', '20', '1', '1'),
('40', '2024-05-05', 'Prevista', '20', '1', '1'),

('41', '2024-10-02', 'Suspensa', '20', '1', '1'),

('42', '2024-05-14', 'Ministrada', '20', '1', '1'),
('43', '2024-11-02', 'Suspensa', '20', '1', '1');

select * from aulas where status_aula = 'Suspensa'

INSERT INTO aulas_suspensoes VALUES 
('14','2'),
('13','11'),
('14','2'),
('17','3'),
('27','4'),
('23','5'),
('24','6'),
('34','7'),
('33','10'),
('26','8'),
('28','1'),
('30','9'),
('32','3'),
('37','1'),
('38','5'),
('41','1'),
('43','2');
select * from aulas_suspensoes

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

SELECT * FROM turmas WHERE data_inicio > '2023-06-30';

SELECT * FROM aulas WHERE data_aula >= '2024-11-02' and status_aula = 'Suspensa';

select * from suspensoes

select * from aulas where status_aula

SELECT 
    CASE 
		WHEN a.status_aula = 'Prevista' THEN 'Prevista'
		WHEN a.status_aula = 'Ministrada' THEN 'Ministrada'
        WHEN s.reposicao = true THEN 'Cancelada com reposição' ELSE 'Cancelada sem reposição'
    END AS status,
    COUNT(*) AS quantidade
FROM 
    aulas a
    LEFT JOIN aulas_suspensoes aus ON a.id_aula = aus.id_aula
    LEFT JOIN suspensoes s ON aus.id_suspensao = s.id_suspensao
GROUP BY 
  status
  
INSERT INTO instrutores_competencias
VALUES ('1', '1'),
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
		
SELECT * FROM instrutores_competencias

SELECT instrutores.nome_completo,
    COUNT(instrutores_competencias.id_competencia)
FROM instrutores_competencias
    LEFT JOIN instrutores ON instrutores_competencias.id_instrutor = instrutores.id_instrutor
GROUP BY instrutores.nome_completo
ORDER BY instrutores.nome_completo;



