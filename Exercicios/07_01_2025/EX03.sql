CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

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
('Medicamentos', 'Medicamentos e tratamentos farmacêuticos.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Cosméticos', 'Produtos de cuidados com a pele e beleza.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Higiene', 'Produtos de higiene pessoal e cuidados diários.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Suplementos', 'Suplementos alimentares e vitaminas.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Equipamentos', 'Equipamentos e acessórios de saúde.');

-- INSERINDO REGISTROS DE PRODUTOS
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Dipirona', 'Medicamento para dor e febre', 15.00, 50, 1);  -- Medicamentos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Protetor Solar', 'Protetor solar FPS 30', 49.90, 30, 2);  -- Cosméticos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Shampoo Anti-queda', 'Shampoo para fortalecimento dos fios', 25.90, 40, 3);  -- Higiene
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Vitamina C', 'Suplemento alimentar com vitamina C', 39.90, 20, 4);  -- Suplementos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Termômetro Digital', 'Termômetro digital com leitura rápida', 59.90, 15, 5);  -- Equipamentos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Ibuprofeno', 'Anti-inflamatório para dores e febre', 25.00, 50, 1);  -- Medicamentos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Máscara Facial', 'Máscara facial hidratante', 34.90, 25, 2);  -- Cosméticos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Azeite de Oliva', 'Azeite de oliva extra virgem', 45.00, 60, 3);  -- Higiene

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

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
WHERE tb_categorias.nome_categoria = "Cosméticos";
