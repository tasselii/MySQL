
<div align="center">
	<img src="https://github.com/user-attachments/assets/697e3d6a-d164-4227-a877-a35d2c319e4b" title="MySQL Workbench" width="35%"/>
</div>
<br />


## 📖 Sobre o Repositório

Este repositório contém **exercícios e anotações práticas sobre bancos de dados relacionais usando MySQL**, com foco no uso da ferramenta **MySQL Workbench 8.0**. Aqui você encontrará desde os primeiros comandos SQL até consultas mais avançadas, modelagem de dados e manipulação de registros.

O conteúdo foi desenvolvido como parte do módulo de banco de dados do Bootcamp Java Full Stack da [Generation Brasil](https://brazil.generation.org/), com o objetivo de aplicar conceitos fundamentais de forma prática.

<br />

## 🧠 Habilidades Desenvolvidas

- Criação e modelagem de bancos de dados relacionais  
- Manipulação de dados com comandos `INSERT`, `UPDATE` e `DELETE`  
- Recuperação de dados com `SELECT`, `WHERE`, `JOIN`, `GROUP BY` e funções agregadas  
- Criação de relacionamentos entre tabelas com chaves primárias e estrangeiras  
- Utilização do MySQL Workbench como ferramenta de visualização e consulta  
- Aplicação de boas práticas na modelagem de dados  

<br />

## 💻 Ferramentas e Tecnologias

- **Banco de Dados:** MySQL 8.0  
- **Interface Gráfica:** MySQL Workbench 8.0 CE  
- **Sistema Operacional:** Windows 10/11 (compatível também com Linux e macOS)  

<br />

## 🧪 Exercício Prático

| Tópico                 | Acesso                                                       | Descrição                                                      |
| --------------------- | ------------------------------------------------------------ | -------------------------------------------------------------- |
| Exercício SQL         | [Abrir](https://github.com/tasselii/MySQL/tree/main/aula-02/exercicios)         | Exercício completo envolvendo criação de tabelas, inserção de dados, consultas e relacionamentos |


<br />

## 📜 Modelo de Comandos SQL 

```sql
-- 📌 Seleciona o banco de dados
USE db_quitanda;

-- 📦 Cria a tabela com os atributos principais de um produto
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,                  -- ID único do produto, gerado automaticamente
    nome VARCHAR(255) NOT NULL,                -- Nome do produto, obrigatório
    quantidade INT,                            -- Quantidade em estoque
    data_validade DATE,                        -- Data de validade do produto
    preco DECIMAL(10, 2),                      -- Preço com duas casas decimais
    PRIMARY KEY (id)                           -- Define o campo 'id' como chave primária
);

-- ➕ Insere um produto na tabela
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Banana", 1000, "2025-06-12", 12.49);

-- ➕ Insere vários produtos de uma vez
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES 
    ("Maçã", 1500, "2025-06-12", 10.00),
    ("Cenoura", 1500, "2025-07-15", 12.00),
    ("Alface", 3500, "2025-06-19", 4.00);

-- 👀 Exibe todos os dados da tabela
SELECT * FROM tb_produtos;

-- 🔍 Mostra apenas os campos nome e preço
SELECT nome, preco FROM tb_produtos;

-- 🎯 Filtra pelo ID
SELECT * FROM tb_produtos WHERE id = 3;

-- 🎯 Filtra por ID ou nome
SELECT * FROM tb_produtos WHERE id = 2 OR nome = "Maçã";

-- 🎯 Mostra produtos com preço maior que 5
SELECT * FROM tb_produtos WHERE preco > 5.00;

-- 🎯 Mostra produtos com preço diferente de 10
SELECT * FROM tb_produtos WHERE preco != 10.00;

-- 🎯 Mostra produtos com nome específico
SELECT * FROM tb_produtos WHERE nome = "Banana";

-- ✏️ Atualiza o preço do produto com ID = 1
UPDATE tb_produtos SET preco = 5.49 WHERE id = 1;

-- ⚠️ Desativa a segurança que impede UPDATE/DELETE sem WHERE (MySQL)
SET SQL_SAFE_UPDATES = 0;

-- ❌ Deleta o produto com ID = 4
DELETE FROM tb_produtos WHERE id = 4;

-- ➕ Insere outro produto na tabela
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Banana Nanica", 1000, "2025-06-12", 14.49);

-- 🛠 Altera o tipo do campo preco para decimal(6, 2)
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6, 2);

-- ➕ Adiciona uma nova coluna chamada descricao
ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- ❌ Remove a coluna descricao
ALTER TABLE tb_produtos DROP descricao;

-- 🔄 Renomeia o campo nome para nome_produto (exclusivo MySQL)
ALTER TABLE tb_produtos CHANGE nome nome_produto VARCHAR(255);

```

## 📬 Contato

Caso queira entrar em contato para trocar ideias, tirar dúvidas ou simplesmente se conectar:

- 📧 E-mail: [tasselii.dev@outlook.com.br](mailto:tasselii.dev@outlook.com.br)
- 💼 LinkedIn: [linkedin.com/in/thiagotasseli](https://www.linkedin.com/in/thiagotasseli-tech/)
- 💻 GitHub: [github.com/tasselii](https://github.com/tasselii)

Sinta-se à vontade para mandar uma mensagem! 🚀
