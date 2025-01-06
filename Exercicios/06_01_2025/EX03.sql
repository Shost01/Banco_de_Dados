CREATE DATABASE db_registroescola;

USE db_registroescola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT, -- 1, 2...
nome VARCHAR(255) NOT NULL,              
data_nascimento DATE NOT NULL,           
nota DECIMAL(5,2) NOT NULL,                    
telefone VARCHAR(15),         
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, nota, telefone) 
VALUES ("João nascimento Santos", "2009-06-26", 9.8, "11965936080");
INSERT INTO tb_estudantes(nome, data_nascimento, nota, telefone) 
VALUES ("Cássio Vasques Romao", "2008-04-06", 6.5, "11916548239");
INSERT INTO tb_estudantes(nome, data_nascimento, nota, telefone) 
VALUES ("Ana Livia Tigre Pereira", "2009-10-25", 9.8, "11946581235");
INSERT INTO tb_estudantes(nome, data_nascimento, nota, telefone) 
VALUES ("Selena Gomes da Silva", "2008-11-17", 10, "11946581973");
INSERT INTO tb_estudantes(nome, data_nascimento, nota, telefone) 
VALUES ("Goku Uzumaki Kurosaki", "2008-04-30", 2.0, "11959134627");
INSERT INTO tb_estudantes(nome, data_nascimento, nota, telefone) 
VALUES ("Yusuke Urameshi", "2010-08-04", 4.5, "11946852971");
INSERT INTO tb_estudantes(nome, data_nascimento, nota, telefone) 
VALUES ("Ronaldo Lewandowisk Suáres", "2009-09-09", 9.0, "11999999999");
INSERT INTO tb_estudantes(nome, data_nascimento, nota, telefone) 
VALUES ("Lionel Andreas Messi Cuccitini", "2010-10-10", 10, "11910101010");

SELECT * FROM tb_estudantes WHERE nota < 7.0;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

UPDATE tb_estudantes SET nota = "6.9"  WHERE id = 1;

SELECT * FROM tb_estudantes;