CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT, 
    nome_categoria VARCHAR(255) NOT NULL,   
    descricao VARCHAR(255) NOT NULL,                          
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,              -- Nome do produto
    descricao VARCHAR(255) NOT NULL,         -- Descrição do produto
    preco DECIMAL(10, 2) NOT NULL,           -- Preço do produto
    quantidade_estoque INT NOT NULL,         -- Quantidade disponível em estoque
    categoriaid BIGINT,                      -- Relacionamento com a tabela tb_categorias
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

-- Inserindo registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Hidráulico', 'Produtos relacionados a encanamentos e acessórios hidráulicos');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Elétrico', 'Produtos relacionados a instalações elétricas e acessórios');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Ferragens', 'Ferragens, parafusos e acessórios para construção');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Acabamento', 'Produtos de acabamento, como pisos, azulejos, tintas');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Materiais Diversos', 'Outros materiais para construção não categorizados');

-- Inserindo registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Torneira Cromada', 'Torneira cromada de alta qualidade para cozinha', 89.90, 150, 1);    -- Hidráulico
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Fio Elétrico 2.5mm', 'Fio elétrico 2.5mm para instalações residenciais', 50.00, 200, 2); -- Elétrico
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Parafuso 10x1', 'Parafuso 10x1 para madeira', 15.75, 500, 3);                            -- Ferragens
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Piso Cerâmico 30x30', 'Piso cerâmico 30x30 para ambientes internos', 79.99, 120, 4);      -- Acabamento
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Cimento CP II', 'Cimento Portland comum para construção', 20.50, 300, 5);                -- Materiais Diversos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Caixa D\'água 1000L', 'Caixa d\'água de polietileno 1000L', 350.00, 50, 1);              -- Hidráulico
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Interruptor Simples', 'Interruptor simples 10A branco', 12.50, 200, 2);                  -- Elétrico
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoriaid) VALUES
('Arame Farpado', 'Arame farpado para cercas e divisões', 30.00, 150, 3);                  -- Ferragens


SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

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
WHERE tb_categorias.nome_categoria = "Hidráulico";
