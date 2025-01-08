CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT, 
    nome_categoria VARCHAR(255) NOT NULL,   
    descricao VARCHAR(255) NOT NULL,         
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,            
    descricao VARCHAR(255) NOT NULL,      
    preco DECIMAL(6,2) NOT NULL,          
    categoriaid BIGINT,                    
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

-- INSERINDO REGISTROS DE CATEGORIAS
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Salgadas', 'Pizzas salgadas, com combinações de sabores tradicionais e inovadores.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Doces', 'Pizzas doces, para uma experiência diferenciada de sobremesa.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Vegetarianas', 'Pizzas sem carnes, com uma variedade de ingredientes frescos.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Especiais', 'Pizzas exclusivas, com ingredientes especiais e edições limitadas.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Veganas', 'Pizzas sem qualquer derivado animal, ideal para dietas veganas.');

-- INSERINDO REGISTROS DE PIZZAS
INSERT INTO tb_pizzas (nome, descricao, preco, categoriaid) VALUES
('Pizza Margherita', 'Pizza clássica com molho de tomate, mussarela, manjericão e azeite', 39.90, 1);  -- Salgadas
INSERT INTO tb_pizzas (nome, descricao, preco, categoriaid) VALUES
('Pizza Calabresa', 'Pizza com calabresa fatiada, cebola e azeitonas', 45.00, 1);  -- Salgadas
INSERT INTO tb_pizzas (nome, descricao, preco, categoriaid) VALUES
('Pizza Doce de Leite', 'Pizza de massa doce com doce de leite, granulado e chocolate', 49.90, 2);  -- Doces
INSERT INTO tb_pizzas (nome, descricao, preco, categoriaid) VALUES
('Pizza de Chocolate', 'Pizza com massa de chocolate, creme de leite e pedaços de chocolate', 55.00, 2);  -- Doces
INSERT INTO tb_pizzas (nome, descricao, preco, categoriaid) VALUES
('Pizza Vegetariana', 'Pizza com cogumelos, abobrinha, tomate e azeite', 47.50, 3);  -- Vegetarianas
INSERT INTO tb_pizzas (nome, descricao, preco, categoriaid) VALUES
('Pizza Vegana de Legumes', 'Pizza com pimentão, berinjela, abobrinha e molho de tomate', 48.00, 5);  -- Veganas
INSERT INTO tb_pizzas (nome, descricao, preco, categoriaid) VALUES
('Pizza Especial de Frutos do Mar', 'Pizza com camarão, polvo e molho branco', 80.00, 4);  -- Especiais
INSERT INTO tb_pizzas (nome, descricao, preco, categoriaid) VALUES
('Pizza de Alho e Óleo', 'Pizza com alho assado, azeite e parmesão', 42.00, 1);  -- Salgadas

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT 
    tb_pizzas.nome, 
    tb_pizzas.descricao, 
    tb_pizzas.preco, 
    tb_categorias.nome_categoria,
    tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT 
    tb_pizzas.nome, 
    tb_pizzas.descricao, 
    tb_pizzas.preco, 
    tb_categorias.nome_categoria,
    tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id 
WHERE tb_categorias.nome_categoria = "Doces";
