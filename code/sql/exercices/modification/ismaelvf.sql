CREATE TABLE aulas (
	"id_aula" VARCHAR PRIMARY KEY,
	"data_aula" DATE DEFAULT 'CURRENT_DATE',
	"status_aula" VARCHAR DEFAULT 'Prevista' CHECK "status_aula" IN ('Prevista', 'Ministrada', 'Suspensa'),
	"fk_turma" VARCHAR NOT NULL REFERENCES "turmas" ("id_turma"),
	"fk_unidade" VARCHAR NOT NULL REFERENCES "unidades" ("id_unidade"),
	"fk_sala" VARCHAR NOT NULL REFERENCES "salas" ("id_sala")
);

INSERT INTO aulas VALUES
('01', '2024-02-09', 'ministrada', '003', '01', '01'),
('02', '2024-02-10', 'pendente', '01', '01', '01'),
('03', '2024-02-15', 'ministrada', '01', '01', '01'),
('04', '2024-02-05', 'ministrada', '01', '01', '01'),
('05', '2024-02-06', 'pendente', '01', '01', '01'),
('06', '2024-02-08', 'pendente', '01', '01', '01'),
('07', '2024-03-02', 'pendente', '01', '01', '01'),
('08', '2024-03-05', 'pendente', '01', '01', '01'),
('09', '2024-03-08', 'ministrada', '01', '01', '01'),
('10', '2024-02-29', 'ministrada', '01', '01', '01');

SELECT * FROM aulas

create table aulas_suspensoes (
  id_aulas varchar NOT NULL REFERENCES "aulas" ("id_aula"), 
  id_suspensao varchar NOT NULL REFERENCES "suspensoes" ("id_suspensao"),
  PRIMARY KEY (id_aulas,id_suspensao)
);

INSERT INTO aulas_suspensoes (id_aulas, id_suspensao) VALUES
('aula1', 'suspensao1'),
('aula1', 'suspensao2'),
('aula2', 'suspensao3'),
('aula3', 'suspensao1');


CREATE TABLE instrutores (
	id_instrutor VARCHAR PRIMARY KEY NOT NULL, 
	matricula VARCHAR(50) NOT NULL UNIQUE,
	nome_completo VARCHAR NOT NULL
);

INSERT INTO instrutores (id_instrutor, matricula, nome_completo) 
VALUES 
('i-01', '1234', 'Fabiana'),
('i-02', '5678', 'Danielle'),
('i-03', '9012', 'Jose Carlos'),
('i-04', '8562', 'Taynan'),
('i-05', '7980', 'Ludmilla'),
('i-06', '4156', 'Camila'),
('i-07', '2323', 'Matsui'),
('i-08', '0195', 'Luis'),
('i-09', '7238', 'Yasmine'),
('i-10', '0023', 'Debora');

CREATE TABLE instrutores_competencias (
    competencia VARCHAR NOT NULL,
    instrutor VARCHAR NOT NULL
);

('1','Redes de Computadores'),
('2','Banco de Dados','Programação Python','Programação Javascript'),
('3','Programação Java','Programação Python','Power BI'),
('4', 'Redes de Computadores','Banco de Dados'),
('5','Saúde e Segurança do Trabalho'),
('6','Programação Web','Banco de Dados'),
('7','Programação Python','Programação Java'),
('8','Administração','Business Model Canvas','Power BI'),
('9','Business Model Canvas','Administração'),
('10','Business Model Canvas','Power BI');

ALTER TABLE instrutores_competencias ADD FOREIGN KEY (instrutor) REFERENCES instrutores (id_instrutor);

ALTER TABLE instrutores_competencias ADD FOREIGN KEY (competencia) REFERENCES competencias (id_competencia);

INSERT INTO instrutores_competencias (competencia, instrutor) 
VALUES 
('m-01', 'i-01'),
('m-02', 'i-02'),
('m-03', 'i-02'),
('m-04', 'i-04'),
('m-05', 'i-05'),
('m-06', 'i-06'),
('m-07', 'i-06'),
('m-08', 'i-08'),
('m-09', 'i-09'),
('m-10', 'i-10');
