CREATE TABLE aulas (
	"id_aula" VARCHAR PRIMARY KEY,
	"data_aula" DATE DEFAULT CURRENT_DATE,
	"status_aula" VARCHAR not null  CHECK  ("status_aula" IN ('Prevista', 'Ministrada', 'Suspensa')),
	"fk_turma" VARCHAR NOT NULL REFERENCES "turmas" ("id_turma"),
	"fk_unidade" VARCHAR NOT NULL REFERENCES "unidades" ("id_unidade"),
	"fk_sala" VARCHAR NOT NULL REFERENCES "salas" ("id_sala")
);

CREATE TABLE "cursos" (
  "id_curso" varchar PRIMARY KEY,
  "descricao_curso" varchar NOT NULL,
  "carga_horaria_curso" integer NOT NULL,
  "modalidade" varchar NOT NULL CHECK ("modalidade" IN ( 'Iniciação', 'Capacitação', 
  'Qualificação', 'Aperfeiçoamento', 'Técnico, Superior - Licenciatura', 
  'Superior - Bacharel, Superior - Tecnologia', 'Pós Graduação Lato Sensu - Especialização',
  'Pós-Graduação Stricto Sensu - Mestrado', 'Pós-Graduação Stricto Sensu - Doutorado')),
  "eixo" varchar NOT NULL
);
CREATE TABLE "unidades" (
  "id_unidade" varchar PRIMARY KEY,
  "descricao_unidade" varchar NOT NULL,
  "carga_horaria_unidade" integer NOT NULL,
  "ordem" int NOT NULL,
  "fk_curso" varchar NOT NULL REFERENCES cursos(id_curso),
  "fk_instrutor" varchar NOT NULL REFERENCES instrutores(id_instrutor)
);

CREATE TABLE instrutores (
	id_instrutor VARCHAR PRIMARY KEY NOT NULL, 
	matricula VARCHAR(50) NOT NULL UNIQUE,
	nome_completo VARCHAR NOT NULL
);

CREATE TABLE turmas (
  id_turma varchar PRIMARY KEY,
  polo_educacional varchar,
  turno varchar NOT NULL,
  presencial boolean,
  data_inicio date NOT NULL,
  data_fim date,
  horas_aula_dia integer NOT NULL,
  fk_curso varchar REFERENCES "cursos" ("id_curso")
);
CREATE TABLE salas(
    id_sala VARCHAR PRIMARY KEY,
    nome_sala VARCHAR(20),
    tipo_sala   VARCHAR(20),
    lousa_digital BOOLEAN,
    projetor BOOLEAN,
    ar_condicionado BOOLEAN
);

create table aulas_suspensoes (
  id_aulas varchar NOT NULL REFERENCES "aulas" ("id_aula"), 
  id_suspensao varchar NOT NULL REFERENCES "suspensoes" ("id_suspensao"),
  PRIMARY KEY (id_aulas,id_suspensao)
);

---------------------------------------população---------------------------------------------------------

INSERT INTO aulas VALUES
('01', '2024-05-09', 'ministrada', '003', '01', '01'),
('02', '2024-04-10', 'pendente', '01', '01', '01'),
('03', '2024-02-15', 'ministrada', '01', '01', '01'),
('04', '2024-06-05', 'ministrada', '01', '01', '01'),
('05', '2024-04-06', 'pendente', '01', '01', '01'),
('06', '2024-04-08', 'pendente', '01', '01', '01'),
('07', '2024-03-02', 'pendente', '01', '01', '01'),
('08', '2024-06-05', 'pendente', '01', '01', '01'),
('09', '2024-05-08', 'ministrada', '01', '01', '01'),
('10', '2024-02-28', 'ministrada', '01', '01', '01');

SELECT * FROM 
 
INSERT INTO aulas (id_turma, data_aula, status_aula)
SELECT t.id_turma, '2023-07-01', 'Prevista'
FROM turmas t
WHERE t.data_inicio > '2023-06-30';

INSERT INTO aulas (id_turma, data_aula, status_aula)
SELECT t.id_turma, '2023-07-02', 'Ministrada'
FROM turmas t
WHERE t.data_inicio > '2023-06-30';

INSERT INTO aulas (id_turma, data_aula, status_aula)
SELECT t.id_turma, '2023-07-03', 'Suspensa com reposição'
FROM turmas t
WHERE t.data_inicio > '2023-06-30';

INSERT INTO aulas (id_turma, data_aula, status_aula)
SELECT t.id_turma, '2023-07-04', 'Suspensa sem reposição'
FROM turmas t
WHERE t.data_inicio > '2023-06-30';

SELECT aulas.id_aula, aulas.data_aula, aulas.status_aula, turmas.nome AS nome_turma, unidades.nome AS nome_unidade, salas.nome AS nome_sala
FROM aulas
JOIN turmas ON aulas.fk_turma = turmas.id_turma
JOIN unidades ON aulas.fk_unidade = unidades.id_unidade
JOIN salas ON aulas.fk_sala = salas.id_sala;

