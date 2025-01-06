CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, -- 1, 2...
nome VARCHAR (255) NOT NULL,
marca VARCHAR (255) NOT NULL,
quantidade INT,
preco DECIMAL (6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, marca, quantidade, preco) 
VALUES ("Mouse", "logitech", 100, 360.00);
INSERT INTO tb_produtos(nome, marca, quantidade, preco) 
VALUES ("Fones", "logitech", 100, 550.00);
INSERT INTO tb_produtos(nome, marca, quantidade, preco) 
VALUES ("Teclados", "logitech", 100, 600.00);
INSERT INTO tb_produtos(nome, marca, quantidade, preco) 
VALUES ("Carregadores tipo C", "Samsung", 200, 30.00);
INSERT INTO tb_produtos(nome, marca, quantidade, preco)  
VALUES ("Webcam", "logitech", 50, 355.00);
INSERT INTO tb_produtos(nome, marca, quantidade, preco) 
VALUES ("Mousepad", "Razer", 200, 70.00);
INSERT INTO tb_produtos(nome, marca, quantidade, preco) 
VALUES ("Mesa digitalizadora", "Multilaser", 30, 350.00);
INSERT INTO tb_produtos(nome, marca, quantidade, preco) 
VALUES ("Microfone para computador", "Fifine", 50, 505.99);

SELECT * FROM tb_produtos WHERE preco < 500.00;

SELECT * FROM tb_produtos WHERE preco > 500.00;

UPDATE tb_produtos SET preco = "504.99"  WHERE id = 8;

SELECT * FROM tb_produtos;