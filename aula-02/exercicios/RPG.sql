CREATE DATABASE IF NOT EXISTS db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE IF NOT EXISTS tb_classe (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_personagem (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    raca VARCHAR(255) NOT NULL,
    arma VARCHAR(255) NOT NULL,
    vida INT NOT NULL,
    inteligencia INT NOT NULL,
    agilidade INT NOT NULL,
    forca INT NOT NULL,
    mana INT NOT NULL,
    classe_id BIGINT NOT NULL,  
    nivel INT NOT NULL,
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id) 
);

INSERT IGNORE INTO tb_classe (nome_classe) VALUES 
('Guerreiro'), 
('Mago'), 
('Arqueiro'), 
('Paladino'), 
('Elfo'),  
('Necromante'), 
('Druida');

INSERT INTO tb_personagem (nome, raca, arma, vida, inteligencia, agilidade, forca, mana, classe_id, nivel) VALUES
('Aragorn', 'Humano', 'Espada', 1800, 1500, 1300, 1700, 300, 1, 20),
('Gandalf', 'Maiar', 'Cajado', 1200, 5000, 900, 900, 4000, 2, 50), 
('Legolas', 'Elfo', 'Arco e Flechas', 1400, 1400, 3000, 1300, 600, 3, 25), 
('Frodo', 'Hobbit', 'Adaga', 900, 1100, 1200, 800, 200, 5, 15), 
('Boromir', 'Humano', 'Espada e Escudo', 1700, 1200, 1100, 1900, 250, 1, 18), 
('Gimli', 'Anão', 'Machado', 2000, 800, 1000, 2200, 150, 1, 18), 
('Saruman', 'Maiar', 'Magia Negra', 1100, 4800, 700, 900, 3900, 2, 48),
('Elrond', 'Elfo', 'Magia e Espada', 1600, 3200, 1400, 1500, 1800, 4, 30),
('Galadriel', 'Elfa', 'Magia', 1300, 4500, 1000, 1200, 3600, 2, 45),
('Sauron', 'Maiar', 'Magia Sombria', 2500, 6000, 1500, 2000, 5000, 6, 100); 

SELECT * FROM tb_classe;

SELECT * FROM tb_personagem WHERE forca < 1500;

SELECT * FROM tb_personagem WHERE forca > 1500;

SELECT * FROM tb_personagem WHERE nome LIKE '%a%';

SELECT * 
FROM tb_classe
LEFT JOIN tb_personagem
ON tb_personagem.classe_id = tb_classe.id
ORDER BY tb_personagem.id;

SELECT 
    c.nome_classe, 
    ROUND(AVG(p.vida), 0) AS media_vida,
    ROUND(AVG(p.inteligencia), 0) AS media_inteligencia,
    ROUND(AVG(p.forca), 0) AS media_forca
FROM tb_personagem p
JOIN tb_classe c ON p.classe_id = c.id
GROUP BY c.nome_classe
ORDER BY c.nome_classe;


