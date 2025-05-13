CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id bigint AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	idade int NOT NULL,
	salario decimal(10,2) NOT NULL, 
	funcao varchar (255) NOT NULL,
	setor varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios (nome, idade, salario, funcao, setor)
VALUES 
	('João Silva', 30, 3500.00, 'Analista de Sistemas', 'TI'),
	('Maria Oliveira', 25, 2800.00, 'Desenvolvedora', 'TI'),
	('Carlos Almeida', 40, 4500.00, 'Gerente de Projetos', 'Gestão'),
	('Fernanda Costa', 32, 3900.00, 'Designer Gráfico', 'Marketing'),
	('Luís Pereira', 29, 3200.00, 'Assistente Administrativo', 'Administrativo'),
    ('Bruna Martins', 22, 1800.00, 'Estagiária de TI', 'TI'),
	('Rafael Nunes', 24, 1900.00, 'Auxiliar Administrativo', 'Administrativo'),
	('Larissa Freitas', 21, 1700.00, 'Estagiária de Marketing', 'Marketing'),
	('André Lopes', 23, 1600.00, 'Assistente de RH', 'Recursos Humanos'),
	('Camila Ribeiro', 20, 1500.00, 'Estagiária Financeira', 'Financeiro');

SELECT * FROM tb_funcionarios WHERE salario > 2000 ORDER BY salario;

SELECT * FROM tb_funcionarios WHERE salario < 2000 ORDER BY salario;

UPDATE tb_funcionarios SET salario = 5000 WHERE id = 1;

SELECT * FROM tb_funcionarios ORDER BY nome;







