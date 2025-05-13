CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_status (
    id BIGINT AUTO_INCREMENT,
    status VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_status (status)
VALUES
    ('Aprovado'),
    ('Recuperação'),
    ('Reprovado');

CREATE TABLE tb_aluno (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(50) NOT NULL,
    turma VARCHAR(10) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    status_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (status_id) REFERENCES tb_status(id)
);

INSERT INTO tb_aluno (nome, idade, serie, turma, nota, status_id)
VALUES
    ('Ana Clara', 14, '8º Ano', 'A', 8.5, 1),
    ('Bruno Henrique', 15, '9º Ano', 'B', 9.2, 1),
    ('Carlos Eduardo', 13, '7º Ano', 'A', 7.0, 1),
    ('Daniele Souza', 14, '8º Ano', 'C', 7.8, 1),
    ('Eduardo Lima', 12, '6º Ano', 'B', 8.0, 1),
    ('Fernanda Gomes', 13, '7º Ano', 'C', 6.4, 2),
    ('Gustavo Ferreira', 15, '9º Ano', 'A', 5.2, 3),
    ('Helena Martins', 12, '6º Ano', 'A', 6.8, 2),
    ('Igor Rocha', 14, '8º Ano', 'B', 4.9, 3),
    ('Julia Nascimento', 13, '7º Ano', 'B', 6.5, 2);

SELECT * FROM tb_aluno WHERE nota > 7 ORDER BY nota;

SELECT * FROM tb_aluno WHERE nota < 7 ORDER BY nota;

UPDATE tb_aluno SET nota = 7.00 WHERE status_id = 3;

SELECT * 
FROM tb_aluno
RIGHT JOIN tb_status
ON tb_aluno.status_id = tb_status.id
ORDER BY tb_aluno.id;
