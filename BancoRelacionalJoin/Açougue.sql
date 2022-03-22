CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes; 

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    carne varchar(255),
    preparo varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255),
    corte varchar(255),
    preco int,
    categorias_id bigint,
    
    primary key(id),
    foreign key (categorias_id) references tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(carne, preparo)
VALUES("Bovina","Cortado");

INSERT INTO tb_categorias(carne, preparo)
VALUES("Bovina","Peça");

INSERT INTO tb_categorias(carne, preparo)
VALUES("Suína","Cortado");

INSERT INTO tb_categorias(carne, preparo)
VALUES("Suína","Peça");



INSERT INTO tb_produtos(nome,corte,preco,categorias_id)
VALUES("Contra-filé","Bife",50 , 1);

INSERT INTO tb_produtos(nome,corte,preco,categorias_id)
VALUES("Patinho","Bife",40 , 1);

INSERT INTO tb_produtos(nome,corte,preco,categorias_id)
VALUES("Costela","Pedaço",60 , 2);

INSERT INTO tb_produtos(nome,corte,preco,categorias_id)
VALUES("Costela","Pedaço",70 , 4);

INSERT INTO tb_produtos(nome,corte,preco,categorias_id)
VALUES("Linguiça","Vácuo",30 , 3);

INSERT INTO tb_produtos(nome,corte,preco,categorias_id)
VALUES("Picanha","Vácuo",80 , 2);




SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco >= 50 AND preco <=150;
-- outra forma de fazer a query da consulta de preco
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";


SELECT * FROM tb_produtos INNER JOIN tb_categorias on tb_categorias.id = tb_produtos.id;


SELECT * FROM tb_categorias
INNER JOIN tb_produtos on tb_produtos.categorias_id = tb_categorias.id
WHERE categorias_id = 2;