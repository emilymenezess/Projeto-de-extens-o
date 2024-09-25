CREATE DATABASE fabrica;
USE fabrica;

CREATE TABLE produtos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome BASE (255),
    tamanho CASAL (255),
    tipo QUEEN,
    preco FLOAT
);

CREATE TABLE cliente (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255),
    cpf INT,
    endereco TEXT
);
CREATE TABLE compra (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id),
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES produtos (id)
);

INSERT INTO 
produtos (nome, tamanho, tipo, preco)
VALUES
("Base de cama", "solteiro", solteiro, 520.90),
("Base de cama", "casal", padrao, 600.99),
("Base de cama", "casal", queen, 700.00),
("Base de cama", "casal", king, 790.99),
("Painel", "solteiro", solteiro, 300.99),
("Painel", "casal",padrao, 400.99),
("Painel", "casal",queen, 450.99),
("Painel", "casal",king, 500.99);
("Base box", "solteiro", solteiro, 520.90),
("Base box", "casal", padrao, 600.99),

INSERT INTO 
cliente (nome, cpf, endereco)
VALUES
("Maria",000.000.000-00, "Jovita Jovita, 477"),
("João", 000.000.000-11, "Carolina Melo, 1555"),
("Rebeca", 000.000.000-22, "Dr general, 459"),
("Valda", 000.000.000-33, "Av Soares de Menezes, 777"),
("Eric", 000.000.000-44, "Rua Ferreira Costa, 111");

INSERT INTO 
compra (id_cliente, id_produto)
VALUES
	(1, 3),
    (1, 5),
    (2, 1),
    (2, 2),
    (2, 8),
    (5, 7),
    (5, 9),
    (5, 10);
    
UPDATE produtos SET nome = "Base de cama", tamanho = "casal", tipo = queen, preco = 700.00  WHERE id =4;

DELETE FROM produtos WHERE id = 6;   

SELECT * FROM produtos; 

SELECT * FROM produtos WHERE tipo >= queen; 

SELECT * FROM produtos WHERE preco <= 700.00;



SELECT * FROM produtos;
