CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id bigint auto_increment,
    conteudo varchar(255),
    tamanho varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
    id bigint auto_increment,
    nome varchar(255),
    aulas varchar(255),
    preco int,
    categorias_id bigint,
    
    primary key(id),
    foreign key (categorias_id) references tb_categorias(id)
);

SELECT * FROM tb_cursos;

INSERT INTO tb_categorias(conteudo, tamanho)
VALUES("Java e SQL","6 meses");

INSERT INTO tb_categorias(conteudo, tamanho)
VALUES("Java e SQL ","3 meses");

INSERT INTO tb_categorias(conteudo, tamanho)
VALUES("Android","6 meses");

INSERT INTO tb_categorias(conteudo, tamanho)
VALUES("Android","3 meses");




INSERT INTO tb_cursos(nome,aulas,preco,categorias_id)
VALUES("Curso de DEV","120",950 , 1);

INSERT INTO tb_cursos(nome,aulas,preco,categorias_id)
VALUES("Curso de DEV","60",520 , 2);

INSERT INTO tb_cursos(nome,aulas,preco,categorias_id)
VALUES("Curso de Games","60",550 , 4);

INSERT INTO tb_cursos(nome,aulas,preco,categorias_id)
VALUES("Curso de Games","120",980 , 3);

INSERT INTO tb_cursos(nome,aulas,preco,categorias_id)
VALUES("Curso de DEV","60",510 , 4);





SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco >= 600 AND preco <=1000;
-- outra forma de fazer a query da consulta de preco
SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
-- no exercicio pedia J mas mudei para G
SELECT * FROM tb_cursos WHERE nome LIKE "%g%";


SELECT * FROM tb_cursos INNER JOIN tb_categorias on tb_categorias.id = tb_cursos.id;


SELECT * FROM tb_categorias
INNER JOIN tb_cursos on tb_cursos.categorias_id = tb_categorias.id
WHERE categorias_id = 4;