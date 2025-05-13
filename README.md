
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
| Exercício SQL         | [Abrir](https://github.com/tasselii/mysql-exercicio)         | Exercício completo envolvendo criação de tabelas, inserção de dados, consultas e relacionamentos |


<br />

## 📝 Exemplos de Comandos

```sql
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

com fechar esse código
```

## 📬 Contato

Caso queira entrar em contato para trocar ideias, tirar dúvidas ou simplesmente se conectar:

- 📧 E-mail: [tasselii.dev@outlook.com.br](mailto:tasselii.dev@outlook.com.br)
- 💼 LinkedIn: [linkedin.com/in/thiagotasseli](https://www.linkedin.com/in/thiagotasseli-tech/)
- 💻 GitHub: [github.com/tasselii](https://github.com/tasselii)

Sinta-se à vontade para mandar uma mensagem! 🚀
