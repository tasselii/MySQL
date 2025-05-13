CREATE DATABASE db_quitanda;

-- referencia para usar no CREATE TABLE
USE db_quitanda;

-- Cria a tabela com os atributos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL(10, 2),
    PRIMARY KEY (id)
);

-- Insere os dados do produto
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Banana", 1000, "2025-06-12", 12.49);

-- Visualiza a tabela
SELECT * FROM tb_produtos;

-- Insere os dados do produto
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES 	("Maçã", 1500, "2025-06-12", 10.00),
		("Cenoura", 1500, "2025-07-15", 12.00),
        ("Alface", 3500, "2025-06-19", 4.00);

-- Filtra a tabela para visualizar pelo nome e preco
SELECT nome, preco FROM tb_produtos;

-- Filtra a tabela para visualizar
SELECT * FROM tb_produtos WHERE id = 3;

-- por id e nome
SELECT * FROM tb_produtos WHERE id = 2 OR nome = "Maçã";

-- preco menor que 5
SELECT * FROM tb_produtos WHERE preco > 5.00;

-- preco diferente de 10
SELECT * FROM tb_produtos WHERE preco != 10.00;

-- nome igual Banana
SELECT * FROM tb_produtos WHERE nome = "Banana";

-- Altera o preco no produto de id 1
UPDATE tb_produtos SET preco = 5.49 WHERE id = 1;

-- Desliga a trava de APAGAR OU ATUALIZAR sem o WHERE
SET SQL_SAFE_UPDATES = 0;

-- Deleta o produto de id 4
DELETE FROM tb_produtos WHERE id = 4;

-- Insere os dados do produto
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Banana Nanica", 1000, "2025-06-12", 14.49);

-- Modifica o preco do produto para 2 casas depois da vírgula
ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

-- Adiciona um atributo da tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Remove o Atributo da tabela
ALTER TABLE tb_produtos DROP descricao;

-- muda o nome do atributo -- Exclusivo do MySQL -- CHANGE
ALTER TABLE tb_produtos CHANGE nome nome_produto varchar (255); 
