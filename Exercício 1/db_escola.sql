create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
Nome varchar(255),
Idade int,
serie varchar(255),
media decimal,
primary key (id)
);

insert into tb_alunos(Nome, Idade, serie, media) values ("Carlos", 15, "1º EM", 10.0);
insert into tb_alunos(Nome, Idade, serie, media) values ("Matheus", 15, "1º EM", 8.0);
insert into tb_alunos(Nome, Idade, serie, media) values ("Caio", 16, "2º EM", 6.5);
insert into tb_alunos(Nome, Idade, serie, media) values ("Igor", 16, "2º EM", 9.6);
insert into tb_alunos(Nome, Idade, serie, media) values ("Victor", 17, "3º EM", 4.0);
insert into tb_alunos(Nome, Idade, serie, media) values ("Jair", 17, "3º EM", 1.0);
insert into tb_alunos(Nome, Idade, serie, media) values ("Luiz", 18, "3º EM", 8.2);
insert into tb_alunos(Nome, Idade, serie, media) values ("Marcio", 15, "3º EM", 10.0);

select * from tb_alunos;
select * from tb_alunos where media > 7.0;
select * from tb_alunos where media < 7.0;

update tb_alunos set media = 6.5 where id = 3;

select * from tb_alunos



