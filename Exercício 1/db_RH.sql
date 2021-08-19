create database db_RH;

use db_RH;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario decimal not null,
setor varchar(255),
primary key (id)
);

insert into tb_funcionarios(nome, idade, salario, setor) values ("Alexander", 27, 3400, "desenvolvedor");
insert into tb_funcionarios(nome, idade, salario, setor) values ("Thalia", 25, 3500, "farmacêutica");
insert into tb_funcionarios(nome, idade, salario, setor) values ("Alicia", 20, 1900, "jurídico");
insert into tb_funcionarios(nome, idade, salario, setor) values ("Marcos", 24, 1300, "telemarketing"); 
insert into tb_funcionarios(nome, idade, salario, setor) values ("Joabe", 27, 1400, "RH");

select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 2000 where id = 5;

select * from tb_funcionarios