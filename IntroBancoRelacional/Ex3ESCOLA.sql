create database db_escola;
use db_escola;
create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
idade int ,
serie varchar(255),
nota int,

primary key(id)
);
insert into tb_alunos (nome, idade,serie,nota) values ("Jorge", 15, "1º", 6);
insert into tb_alunos (nome, idade,serie,nota) values ("Geordan", 20, "3º", 0);
insert into tb_alunos (nome, idade,serie,nota) values ("Neymar", 15, "1º", 8);
insert into tb_alunos (nome, idade,serie,nota) values ("Messi", 16, "2º", 9);
insert into tb_alunos (nome, idade,serie,nota) values ("Cristiano", 17, "3º", 0);
insert into tb_alunos (nome, idade,serie,nota) values ("Jorda", 17, "3º", 10);
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nota = 10 where id = 2;
select * from tb_alunos;