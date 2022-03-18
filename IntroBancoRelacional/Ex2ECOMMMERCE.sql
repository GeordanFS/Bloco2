create database db_ecommerce;
use db_ecommerce;
create table tb_produtos_usados(
id bigint auto_increment,
modelo varchar(255),
ano int ,
qualidade varchar(255),
valor int,

primary key(id)
);
insert into tb_produtos_usados (modelo, ano,qualidade,valor) values ("Iphone 5S", 2017, "C", 499);
insert into tb_produtos_usados (modelo, ano,qualidade,valor) values ("Iphone 8", 2018, "B", 1500);
insert into tb_produtos_usados (modelo, ano,qualidade,valor) values ("Iphone X", 2019, "A", 2000);
insert into tb_produtos_usados (modelo, ano,qualidade,valor) values ("Iphone 11", 2020, "C", 2500);
insert into tb_produtos_usados (modelo, ano,qualidade,valor) values ("Iphone 12", 2021, "B", 3000);
insert into tb_produtos_usados (modelo, ano,qualidade,valor) values ("Iphone 13", 2022, "A", 5000);
select * from tb_produtos_usados where valor > 500;
select * from tb_produtos_usados where valor < 500;

update tb_produtos_usados set valor = 4500 where id = 6;
select * from tb_produtos_usados;
