CREATE DATABASE db_generation_game_online;
 USE db_generation_game_online;
 

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT, 
    nome_classe VARCHAR(255) NOT NULL, -- Nome da classe (ex.: Guerreiro, Mago)
    descricao VARCHAR(255) NOT NULL,  -- Descrição ou especialidade da classe
    PRIMARY KEY (id)
);

-- Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,         -- Nome do personagem
    habilidade VARCHAR(255) NOT NULL,   -- Habilidade especial do personagem
    poder_defesa DECIMAL(6,2) NOT NULL, -- Atributo e defesa
    poder_ataque DECIMAL(6,2) NOT NULL, -- Atributo de ataque
    classesid BIGINT,                   -- Relacionamento com a tabela tb_classes
    PRIMARY KEY (id),
    FOREIGN KEY (classesid) REFERENCES tb_classes(id)
);

-- INSERINDO REGISTROS DE CLASSE
INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, alta resistência e força física.');
INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Mago', 'Usuário de magia, capaz de conjurar feitiços poderosos à distância.');
INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Arqueiro', 'Especialista em ataques de longo alcance, alta precisão e agilidade.');
INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Assassino', 'Focado em ataques furtivos e rápidos, com alta taxa de crítico.');
INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Curandeiro', 'Habilidoso em curar aliados e fornecer suporte no campo de batalha.');

-- INSERINDO RESGISTROS DE PERSONAGENS
INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classesid) VALUES
('Thorin', 'Golpe Devastador', 1500.00, 2500.00, 1); -- Guerreiro com alta defesa e ataque
INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classesid) VALUES
('Merlin', 'Bola de Fogo', 1200.00, 3000.00, 2);     -- Mago com ataque alto
INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classesid) VALUES
('Legolas', 'Tiro Certeiro', 800.00, 2000.00, 3);    -- Arqueiro com ataque médio
INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classesid) VALUES
('Akira', 'Ataque Sombra', 600.00, 3200.00, 4);      -- Assassino com ataque extremo
INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classesid) VALUES
('Celena', 'Cura Divina', 2000.00, 500.00, 5);        -- Curandeira com alta defesa
INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classesid) VALUES
('Gimci', 'Martelo Furioso', 1800.00, 2800.00, 1);   -- Guerreiro equilibrado
INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classesid) VALUES
('Morgana', 'Tempestade Arcana', 1400.00, 2600.00, 2); -- Mago com bom ataque e defesa
INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classesid) VALUES
('Cael', 'Flecha Explosiva', 1000.00, 2200.00, 3);   -- Arqueiro com ataque consistente

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT 
    tb_personagens.nome, 
    tb_personagens.habilidade, 
    tb_personagens.poder_defesa, 
    tb_personagens.poder_ataque, 
    tb_classes.nome_classe,
    tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id;

SELECT 
    tb_personagens.nome, 
    tb_personagens.habilidade, 
    tb_personagens.poder_defesa, 
    tb_personagens.poder_ataque, 
    tb_classes.nome_classe,
    tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id
WHERE tb_classes.nome_classe = "Arqueiro";
