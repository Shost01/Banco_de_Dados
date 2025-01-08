CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,  
    descricao VARCHAR(255) NOT NULL         
);

CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,           -- Nome do curso 
    descricao TEXT NOT NULL,              -- Descrição do curso
    preco DECIMAL(10,2) NOT NULL,         -- Preço do curso
    duracao INT NOT NULL,                 -- Duração do curso em horas
    categoriaid INT,                      -- Relacionamento com a tabela tb_categorias
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Java', 'Linguagem de programação orientada a objetos e multiplataforma.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Python', 'Linguagem de programação poderosa e fácil de aprender.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Web Development', 'Cursos sobre desenvolvimento web e frameworks.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Data Science', 'Cursos focados em análise de dados e inteligência artificial.');
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Design', 'Cursos sobre design gráfico, UI/UX e ferramentas de criação.');

INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoriaid) VALUES
('Curso de Java Completo', 'Curso completo de Java para iniciantes e avançados', 799.90, 40, 1);
INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoriaid) VALUES
('Introdução ao Python', 'Aprenda os conceitos básicos de Python para iniciantes', 499.90, 30, 2);
INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoriaid) VALUES
('Desenvolvimento Web Frontend', 'Curso sobre HTML, CSS, JavaScript e frameworks frontend', 650.00, 50, 3);
INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoriaid) VALUES
('Data Science com Python', 'Curso sobre análise de dados, Pandas e Machine Learning', 900.00, 60, 4);
INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoriaid) VALUES
('Design Gráfico Avançado', 'Curso avançado de design utilizando Adobe Illustrator e Photoshop', 750.00, 45, 5);
INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoriaid) VALUES
('Java para Desenvolvimento Web', 'Aprofunde seus conhecimentos em Java para construção de aplicações web', 850.00, 50, 1);
INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoriaid) VALUES
('Curso Completo de Python para Data Science', 'Aprofunde-se em Python com foco em Data Science e Inteligência Artificial', 1100.00, 70, 2);
INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoriaid) VALUES
('UX/UI Design para Iniciantes', 'Aprenda os conceitos de design de interfaces e usabilidade', 550.00, 35, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT 
    tb_cursos.nome, 
    tb_cursos.descricao, 
    tb_cursos.preco, 
    tb_cursos.duracao, 
    tb_categorias.nome_categoria,
    tb_categorias.descricao
FROM tb_cursos 
INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT 
    tb_cursos.nome, 
    tb_cursos.descricao, 
    tb_cursos.preco, 
    tb_cursos.duracao, 
    tb_categorias.nome_categoria,
    tb_categorias.descricao
FROM tb_cursos 
INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Java";