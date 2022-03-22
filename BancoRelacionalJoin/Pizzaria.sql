CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal; 

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    pedaços int,
    tamanho varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
    id bigint auto_increment,
    sabor varchar(255),
    borda varchar(255),
    preco int,
    complementos int,
    categorias_id bigint,
    
    primary key(id),
    foreign key (categorias_id) references tb_categorias(id)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias(pedaços, tamanho)
VALUES(4 ,"Grande");

insert into tb_categorias(pedaços, tamanho)
values(8 ,"Grande");

insert into tb_categorias(pedaços, tamanho)
values(4 ,"Broto");

insert into tb_categorias(pedaços, tamanho)
values(8 ,"Broto");

insert into tb_categorias(pedaços, tamanho)
values(2 ,"Broto");


INSERT INTO tb_pizzas(sabor,borda,preco,complementos,categorias_id)
VALUES("Calabresa","Recheada",49 , 2, 1);

INSERT INTO tb_pizzas(sabor,borda,preco,complementos,categorias_id)
VALUES("Portuguesa","Recheada",60 , 0, 5);

INSERT INTO tb_pizzas(sabor,borda,preco,complementos,categorias_id)
VALUES("Queijo","Fina",40 , 3, 2);

INSERT INTO tb_pizzas(sabor,borda,preco,complementos,categorias_id)
VALUES("Calabresa","Fina",40 , 2, 3);

INSERT INTO tb_pizzas(sabor,borda,preco,complementos,categorias_id)
VALUES("Frango","Recheada",60 , 3, 4);

INSERT INTO tb_pizzas(sabor,borda,preco,complementos,categorias_id)
VALUES("Morango com chocolate","Fina",70 , 2, 1);





SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <=100;
-- outra forma de fazer a query da consulta de preco
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";


SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_categorias.id = tb_pizzas.id;


SELECT * FROM tb_categorias
INNER JOIN tb_pizzas on tb_pizzas.categorias_id = tb_categorias.id
WHERE categorias_id = 1;