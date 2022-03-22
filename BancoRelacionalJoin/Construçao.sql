CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas; 

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    materiais varchar(255),
    tamanho varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255),
    tipo varchar(255),
    preco int,
    categorias_id bigint,
    
    primary key(id),
    foreign key (categorias_id) references tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(materiais, tamanho)
VALUES("Aço","Grande");

INSERT INTO tb_categorias(materiais, tamanho)
VALUES("Ferro","Grande");

INSERT INTO tb_categorias(materiais, tamanho)
VALUES("Aço","Pequeno");

INSERT INTO tb_categorias(materiais, tamanho)
VALUES("Aço","Grande");

INSERT INTO tb_categorias(materiais, tamanho)
VALUES("Concreto","Grande");

INSERT INTO tb_categorias(materiais, tamanho)
VALUES("Concreto","Pequeno");



INSERT INTO tb_produtos(nome,tipo,preco,categorias_id)
VALUES("Cabo","Trançado",120 , 1);

INSERT INTO tb_produtos(nome,tipo,preco,categorias_id)
VALUES("Cabo","Reto",110 , 1);

INSERT INTO tb_produtos(nome,tipo,preco,categorias_id)
VALUES("Grade","Quadrada",80 , 2);

INSERT INTO tb_produtos(nome,tipo,preco,categorias_id)
VALUES("Grade","Redonda",75 , 3);

INSERT INTO tb_produtos(nome,tipo,preco,categorias_id)
VALUES("Tijolo","Quadrado",10 , 5);

INSERT INTO tb_produtos(nome,tipo,preco,categorias_id)
VALUES("Tijolo","Retangular",10 , 6);

INSERT INTO tb_produtos(nome,tipo,preco,categorias_id)
VALUES("Fio","Trançado",10 , 4);



SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos WHERE preco >= 70 AND preco <=150;
-- outra forma de fazer a query da consulta de preco
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";


SELECT * FROM tb_produtos INNER JOIN tb_categorias on tb_categorias.id = tb_produtos.id;


SELECT * FROM tb_categorias
INNER JOIN tb_produtos on tb_produtos.categorias_id = tb_categorias.id
WHERE categorias_id = 1;