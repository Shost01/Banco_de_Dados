CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, -- 1, 2...
nome VARCHAR (255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

-- inserir registros/produtos
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Tomate", 100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Pêra",500, "2023-12-15", 2.99);

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 2 OR id = 3;

SELECT * FROM tb_produtos WHERE preco < 10;

ALTER TABLE tb_produtos MODIFY preco DECIMAL (6,2);

UPDATE tb_produtos SET preco = 2.99  WHERE id = 6;

SELECT * FROM tb_produtos;