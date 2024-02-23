---1)
INSERT INTO aulas
VALUES ('1', '2024-04-24', 'Ministrada', '14', '1', '10'),
    ('2', '2023-09-20', 'Prevista', '14', '2', '1'),
    ('3', '2024-04-01', 'Suspensa', '14', '5', '2'),
    ('4', '2023-11-24', 'Suspensa', '14', '6', '4'),
    ('5', '2024-01-24', 'Ministrada', '12', '6', '20'),
    ('6', '2023-09-22', 'Prevista', '12', '2', '9'),
    ('7', '2023-09-01', 'Suspensa', '12', '7', '18'),
    ('8', '2023-06-30', 'Suspensa', '12', '6', '14'),
    ('9', '2024-02-24', 'Ministrada', '18', '19', '10'),
    ('10', '2023-12-20', 'Prevista', '18', '20', '11'),
    ('11', '2024-04-11', 'Suspensa', '18', '15', '12'),
    ('12', '2023-12-12', 'Suspensa', '18', '2', '8'),
    ('13', '2024-04-24', 'Ministrada', '20', '1', '18'),
    ('14', '2023-09-20', 'Prevista', '20', '2', '14'),
    ('15', '2024-04-01', 'Suspensa', '20', '20', '20'),
    ('16', '2023-11-29', 'Suspensa', '20', '12', '4'),
    ('17', '2023-07-24', 'Ministrada', '2', '1', '10'),
    ('18', '2024-01-08', 'Prevista', '2', '3', '15'),
    ('19', '2024-02-01', 'Suspensa', '2', '10', '18'),
    ('20', '2023-12-18', 'Suspensa', '2', '18', '14'),
    ('21', '2024-04-02', 'Ministrada', '4', '16', '10'),
    ('22', '2023-07-02', 'Prevista', '4', '14', '20'),
    ('23', '2023-08-01', 'Suspensa', '4', '20', '18'),
    ('24', '2023-09-01', 'Suspensa', '4', '18', '13'),
    ('25', '2024-04-24', 'Ministrada', '11', '11', '10'),
    ('26', '2023-07-02', 'Prevista', '11', '6', '12'),
    ('27', '2023-10-14', 'Suspensa', '11', '7', '20'),
    ('28', '2023-11-24', 'Suspensa', '11', '8', '14'),
    ('29', '2024-04-24', 'Ministrada', '8', '19', '12'),
    ('30', '2023-09-20', 'Prevista', '8', '20', '18'),
    ('31', '2024-04-01', 'Suspensa', '8', '5', '20'),
    ('32', '2023-11-24', 'Suspensa', '8', '16', '4');
INSERT INTO aulas_suspensoes
VALUES ('3', '1'),
    ('4', '2'),
    ('7', '3'),
    ('8', '4'),
    ('11', '5'),
    ('12', '6'),
    ('15', '1'),
    ('16', '2'),
    ('19', '3'),
    ('20', '4'),
    ('23', '5'),
    ('24', '6'),
    ('27', '1'),
    ('28', '2'),
    ('31', '3'),
    ('32', '4');
---2)
SELECT COUNT(
        CASE
            WHEN status_aula = 'Ministrada' THEN 1
        END
    ) as aulas_ministradas,
    COUNT(
        CASE
            WHEN status_aula = 'Prevista' THEN 1
        END
    ) as aulas_previstas,
    COUNT(
        CASE
            WHEN status_aula = 'Suspensa'
            AND reposicao = true THEN 1
        END
    ) as "aula com reposição",
    COUNT(
        CASE
            WHEN status_aula = 'Suspensa'
            AND reposicao = false THEN 1
        END
    ) as "aula sem reposição"
FROM aulas
    LEFT JOIN turmas ON turmas.id_turma = aulas.fk_turma
    LEFT JOIN aulas_suspensoes ON aulas.id_aula = aulas_suspensoes.id_aula
    LEFT JOIN suspensoes ON aulas_suspensoes.id_suspensao = suspensoes.id_suspensao;
---3)
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
SELECT *
FROM instrutores_competencias ---4)
SELECT instrutores.nome_completo,
    COUNT(instrutores_competencias.id_competencia)
FROM instrutores_competencias
    LEFT JOIN instrutores ON instrutores_competencias.id_instrutor = instrutores.id_instrutor
GROUP BY instrutores.nome_completo
ORDER BY instrutores.nome_completo;