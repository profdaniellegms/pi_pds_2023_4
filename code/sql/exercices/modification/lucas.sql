INSERT INTO aulas VALUES
('1', '2024-02-09', 'Ministrada', '3', '1', '1'),
('2', '2024-02-10', 'Prevista', '2', '1', '1'),
('3', '2024-02-10', 'Ministrada', '2', '1', '1'),
('4', '2024-02-10', 'Suspensa', '2', '1', '1'),
('5', '2024-02-10', 'Suspensa', '2', '1', '1'),
('6', '2024-02-15', 'Ministrada', '4', '1', '1'),
('7', '2024-02-15', 'Suspensa', '4', '1', '1'),
('8', '2024-02-15', 'Suspensa', '4', '1', '1'),
('9', '2024-02-15', 'Prevista', '4', '1', '1'),
('10', '2024-02-05', 'Suspensa', '8', '1', '1'),
('11', '2024-02-05', 'Prevista', '8', '1', '1'),
('12', '2024-02-05', 'Suspensa', '8', '1', '1'),
('13', '2024-02-05', 'Ministrada', '8', '1', '1'),
('14', '2024-02-06', 'Suspensa', '18', '1', '1'),
('15', '2024-02-06', 'Ministrada', '18', '1', '1'),
('16', '2024-02-06', 'Prevista', '18', '1', '1'),
('17', '2024-02-06', 'Suspensa', '18', '1', '1'),
('18', '2024-02-08', 'Suspensa', '20', '1', '1'),
('19', '2024-02-08', 'Prevista', '20', '1', '1'),
('20', '2024-02-08', 'Suspensa', '20', '1', '1'),
('21', '2024-02-08', 'Ministrada', '20', '1', '1'),
('22', '2024-03-02', 'Suspensa', '6', '1', '1'),
('23', '2024-03-05', 'Prevista', '11', '1', '1'),
('24', '2024-03-05', 'Suspensa', '11', '1', '1'),
('25', '2024-03-05', 'Suspensa', '11', '1', '1'),
('26', '2024-03-05', 'Ministrada', '11', '1', '1'),
('27', '2024-03-08', 'Suspensa', '12', '1', '1'),
('28', '2024-03-08', 'Ministrada', '12', '1', '1'),
('29', '2024-03-08', 'Prevista', '12', '1', '1'),
('30', '2024-03-08', 'Suspensa', '12', '1', '1'),
('31', '2024-02-29', 'Ministrada', '14', '1', '1'),
('32', '2024-02-29', 'Prevista', '14', '3', '1'),
('33', '2024-02-27', 'Suspensa', '14', '5', '1'),
('34', '2024-02-29', 'Suspensa', '14', '6', '1');

INSERT INTO aulas_suspensoes VALUES

('1', '7'),
('2', '2'),
('3', '2'),
('4', '10'),
('5', '3'),
('6', '2'),
('7', '1'),
('8', '3'),
('9', '2'),
('10', '4'),
('11', '2'),
('12', '6'),
('13', '9'),
('14', '11'),
('15', '5'),
('16', '7'),
('17', '10'),
('18', '6'),
('19', '2'),
('20', '1'),
('21', '7'),
('22', '2'),
('23', '9'),
('24', '8'),
('26', '10'),
('27', '7'),
('28', '3'),
('29', '9'),
('30', '9'),
('31', '11'),
('32', '2'),
('33', '8'),
('34', '10');


INSERT INTO instrutores_competencias VALUES 

('1', '1'),
('2', '2'),
('2', '5'),
('2', '6'),
('3', '4'),
('3', '5'),
('3', '9'),
('4', '1'),
('4', '2'),
('5', '10'),
('6', '3'),
('6', '2'),
('7', '5'),
('7', '4'),
('8', '7'),
('8', '8'),
('8', '9'),
('9', '8'),
('9', '7'),
('10', '8'),
('10', '9');


SELECT d.data_aula,
    a.status_aula,
    s.motivo_suspensao,
    r.reposicao,
    COUNT(*) AS total
FROM aulas a
    LEFT JOIN aulas_suspensoes ON a.id_aula = aulas_suspensoes.id_aula
    LEFT JOIN suspensoes s ON aulas_suspensoes.id_suspensao = s.id_suspensao
    INNER JOIN suspensoes r ON aulas_suspensoes.id_suspensao = r.id_suspensao
    INNER JOIN aulas d ON aulas_suspensoes.id_suspensao = d.id_aula
GROUP BY d.data_aula,
    a.status_aula,
    s.motivo_suspensao,
    r.reposicao;


SELECT 
    i.nome_completo,
    COUNT(*) AS quantidade 
FROM instrutores i
    INNER JOIN instrutores_competencias ic ON i.id_instrutor = ic.id_instrutor
GROUP BY 
    i.nome_completo
ORDER BY 
    quantidade ASC, 
    nome_completo ASC;