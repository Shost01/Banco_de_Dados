CREATE DATABASE db_rhservice;

USE db_rhservice;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT, -- 1, 2...
nome VARCHAR (255) NOT NULL,
funcao varchar (255) NOT NULL,
aniversario DATE,
salario DECIMAL (7,2) NOT NULL,
PRIMARY KEY (id)
); 

INSERT INTO tb_colaboradores(nome, funcao, aniversario, salario) 
VALUES ("José", "Programador Java", "2000-08-16", 2500.00);
INSERT INTO tb_colaboradores(nome, funcao, aniversario, salario) 
VALUES ("Ana", "RH", "1998-05-06", 1800.00);
INSERT INTO tb_colaboradores(nome, funcao, aniversario, salario) 
VALUES ("Carla", "Programadora Front-End", "2001-06-2", 1950.00);
INSERT INTO tb_colaboradores(nome, funcao, aniversario, salario) 
VALUES ("Pedro", "Programador Java", "2000-01-29", 2500.00);
INSERT INTO tb_colaboradores(nome, funcao, aniversario, salario) 
VALUES ("Fábio", "Programador Front-End", "1997-08-08", 1950.00);

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

UPDATE tb_colaboradores SET aniversario = "1997-08-16"  WHERE id = 1;

SELECT * FROM tb_colaboradores;