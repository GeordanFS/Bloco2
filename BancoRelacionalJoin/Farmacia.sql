CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar; 

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    genericoDesconto varchar(255),
    precisa_receita varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255),
    laboratorio varchar(255),
    preco int,
    categorias_id bigint,
    
    primary key(id),
    foreign key (categorias_id) references tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(genericoDesconto, precisa_receita)
VALUES("Sim","não");

INSERT INTO tb_categorias(genericoDesconto, precisa_receita)
VALUES("Não","não");

INSERT INTO tb_categorias(genericoDesconto, precisa_receita)
VALUES("Não","sim");

INSERT INTO tb_categorias(genericoDesconto, precisa_receita)
VALUES("Sim","sim");



INSERT INTO tb_produtos(nome,laboratorio,preco,categorias_id)
VALUES("Dipirona","Medley",10 , 1);

INSERT INTO tb_produtos(nome,laboratorio,preco,categorias_id)
VALUES("Ibuprofeno","Eurofarma",15 , 1);

INSERT INTO tb_produtos(nome,laboratorio,preco,categorias_id)
VALUES("Cicatricure","LabCicatricure",50 , 2);

INSERT INTO tb_produtos(nome,laboratorio,preco,categorias_id)
VALUES("Advil","Labdivil",12 , 2);

INSERT INTO tb_produtos(nome,laboratorio,preco,categorias_id)
VALUES("Amoxilina","NeoQuimica",30 , 4);

INSERT INTO tb_produtos(nome,laboratorio,preco,categorias_id)
VALUES("Minoxidil","Minox",65 , 3);






SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco >= 5 AND preco <=60;
-- outra forma de fazer a query da consulta de preco
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";


SELECT * FROM tb_produtos INNER JOIN tb_categorias on tb_categorias.id = tb_produtos.id;


SELECT * FROM tb_categorias
INNER JOIN tb_produtos on tb_produtos.categorias_id = tb_categorias.id
WHERE categorias_id = 1;