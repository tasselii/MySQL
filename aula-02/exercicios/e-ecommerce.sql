CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    categoria varchar(255) NOT NULL,
    preco decimal(10,2) NOT NULL,
    quantidade_estoque int NOT NULL, 
    status varchar(50) NOT NULL, -- Ex: 'Disponível', 'Indisponível'
    PRIMARY KEY (id)
);

INSERT INTO tb_ecommerce (nome, categoria, preco, quantidade_estoque, status)
VALUES 
	('Echo Dot 5ª Geração', 'Eletrônicos', 399.00, 300, 'Disponível'),
	('Fone de Ouvido JBL Tune 500', 'Eletrônicos', 279.00, 150, 'Disponível'),
	('Carregador Sem Fio Anker', 'Eletrônicos', 199.00, 200, 'Disponível'),
	('Controle Sem Fio Xbox Series S', 'Eletrônicos', 299.00, 180, 'Disponível'),
	('Cabo HDMI 2.1 4K', 'Eletrônicos', 89.00, 500, 'Disponível'),
	('Smartwatch Xiaomi Mi Band 7', 'Eletrônicos', 429.00, 100, 'Disponível'),
	('Smartphone Motorola Moto G200', 'Eletrônicos', 2899.00, 50, 'Disponível'),
	('Fone de Ouvido Sony WH-1000XM5', 'Eletrônicos', 2399.00, 50, 'Disponível'),
	('Câmera Digital Canon EOS 90D', 'Eletrônicos', 6999.00, 30, 'Disponível'),
	('Smart TV Samsung 50" 4K', 'Eletrônicos', 3199.00, 40, 'Disponível');

SELECT * FROM tb_ecommerce WHERE preco > 500;

SELECT * FROM tb_ecommerce WHERE preco < 500;

UPDATE tb_ecommerce SET status = "Indisponível", quantidade_estoque = 0 WHERE id IN (1, 3, 5, 7, 9);

SELECT * FROM tb_ecommerce;


    
    





