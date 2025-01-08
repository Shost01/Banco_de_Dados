CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT, 
    nome_categoria VARCHAR(255) NOT NULL,   
    descricao VARCHAR(255) NOT NULL,       
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,             -- Nome do produto
    descricao VARCHAR(255) NOT NULL,        -- Descrição do produto
    preco DECIMAL(6,2) NOT NULL,           -- Preço do produto
    quantidade_estoque INT NOT NULL,        -- Quantidade disponível em estoque
    categoriaid BIGINT,                    -- Relacionamento com a tabela tb_categorias
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

-- INSERINDO REGISTROS DE CATEGORIAS
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Aves', 'Carne de Aves diversas, frescas e congeladas.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Frutas', 'Variedade de frutas frescas e sazonais.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Legumes', 'Variedade de legumes frescos e orgânicos.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Bovinos', 'Carnes de gado, cortes especiais.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Suínos', 'Carnes de porco frescas e congeladas.');

-- INSERINDO REGISTROS DE PRODUTOS
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES 
('Frango Inteiro', 'Frango inteiro, congelado', 35.00, 200, 1);  -- Aves
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES 
('Maçã', 'Fruta fresca, redonda e suculenta', 5.00, 500, 2);  -- Frutas
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES 
('Cenoura', 'Legume laranja, fresco e crocante', 3.50, 350, 3);  -- Legumes
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES 
('Alcatra', 'Corte de carne bovina', 70.00, 100, 4);  -- Bovinos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES 
('Costela de Porco', 'Costela suína, ideal para churrasco', 80.00, 120, 5);  -- Suínos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES 
('Peito de Frango', 'Peito de frango congelado', 45.00, 150, 1);  -- Aves
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES 
('Banana', 'Fruta tropical, rica em potássio', 4.00, 400, 2);  -- Frutas
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES 
('Picanha', 'Corte de carne nobre, ideal para churrasco', 120.00, 50, 4);  -- Bovinos

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT 
    tb_produtos.nome, 
    tb_produtos.descricao, 
    tb_produtos.preco, 
    tb_produtos.quantidade_estoque, 
    tb_categorias.nome_categoria,
    tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT 
    tb_produtos.nome, 
    tb_produtos.descricao, 
    tb_produtos.preco, 
    tb_produtos.quantidade_estoque, 
    tb_categorias.nome_categoria,
    tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Aves" 
OR tb_categorias.nome_categoria = "Frutas";

