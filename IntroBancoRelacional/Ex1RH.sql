create database db_rh;
use db_rh;
create table tb_func(
id bigint auto_increment,
nome varchar(255),
turno varchar(255),
funcao varchar(255),
salario int,

primary key(id)
);
insert into tb_func (nome, turno,funcao,salario) values ("Messi", "Diurno", "Estagiário", 1200);
insert into tb_func (nome, turno,funcao,salario) values ("Jorge", "Diurno", "Gerente", 5000);
insert into tb_func (nome, turno,funcao,salario) values ("Neymar", "Diurno", "Supervisor", 3500);
insert into tb_func (nome, turno,funcao,salario) values ("Geordan", "Diurno", "Auxiliar", 1500);

select * from tb_func where salario > 2000;
select * from tb_func where salario < 2000;

update tb_func set salario = 1300 where id = 1;
select * from tb_func;




