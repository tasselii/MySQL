CREATE DATABASE IF NOT EXISTS db_pizzaria;
USE db_pizzaria;

CREATE TABLE IF NOT EXISTS tb_categorias (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_pizzas (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    ingredientes TEXT NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES 
('Tradicional', 'Pizzas salgadas clássicas com ingredientes tradicionais'),
('Especial', 'Pizzas salgadas com combinações exclusivas e gourmet'),
('Doce', 'Pizzas doces com coberturas variadas'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal'),
('Calzone', 'Pizzas fechadas com recheios variados');

INSERT INTO tb_pizzas (nome, ingredientes, tamanho, preco, categoria_id) VALUES
('Margherita', 'Molho de tomate, muçarela, manjericão', 'Média', 39.90, 1),
('Pepperoni', 'Molho, muçarela, pepperoni', 'Grande', 59.90, 1),
('4 Queijos', 'Muçarela, parmesão, gorgonzola, catupiry', 'Grande', 64.90, 2),
('Frango com Catupiry', 'Frango desfiado, catupiry', 'Média', 47.00, 2),
('Brigadeiro', 'Chocolate, granulado, leite condensado', 'Média', 42.00, 3),
('Prestígio', 'Chocolate, coco ralado', 'Grande', 53.50, 3),
('Vegetariana Especial', 'Tomate seco, rúcula, muçarela vegana', 'Grande', 58.00, 4),
('Calzone de Frango', 'Frango, catupiry, orégano', 'Grande', 49.00, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%' OR nome LIKE '%M%';

SELECT 
    p.id, p.nome AS nome_pizza, p.preco, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT 
    p.id, p.nome AS nome_pizza, p.preco, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Doce';

SELECT * 
FROM tb_categorias
LEFT JOIN tb_pizzas
ON tb_pizzas.categoria_id = tb_categorias.id
ORDER BY tb_pizzas.id;
