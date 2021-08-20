create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
sabor varchar(255),
modoPreparo varchar(255),
bordaRecheada boolean,
primary key (id)
);

insert into tb_categoria(sabor, modoPreparo, bordaRecheada) values ("salgada", "assada", true);
insert into tb_categoria(sabor, modoPreparo, bordaRecheada) values ("doce", "assada", true);
insert into tb_categoria(sabor, modoPreparo, bordaRecheada) values ("salgada", "frita", false);
insert into tb_categoria(sabor, modoPreparo, bordaRecheada) values ("doce", "frita", false);
insert into tb_categoria(sabor, modoPreparo, bordaRecheada) values ("salgada", "assada", false);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabores varchar(255),
tamanho varchar(255),
recheioBorda varchar(255),
extra varchar(255),
preco decimal,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza(sabores, tamanho, recheioBorda, extra, preco, categoria_id)
values ("Calabresa", "G", "none", "queijo", 40.00, 5);
insert into tb_pizza(sabores, tamanho, recheioBorda, extra, preco, categoria_id)
values ("Calabresa", "G", "chedar", "queijo", 44.00, 1);
insert into tb_pizza(sabores, tamanho, recheioBorda, extra, preco, categoria_id)
values ("Moda da Casa", "G", "none", "none", 50.00, 5);
insert into tb_pizza(sabores, tamanho, recheioBorda, extra, preco, categoria_id)
values ("Moda da Casa", "G", "Chedar", "queijo e bacon", 65.00, 1);
insert into tb_pizza(sabores, tamanho, recheioBorda, extra, preco, categoria_id)
values ("Brigadeiro", "P", "none", "none", 15.00, 4);
insert into tb_pizza(sabores, tamanho, recheioBorda, extra, preco, categoria_id)
values ("Banana III", "G", "doce de leite", "none", 21.00, 2);
insert into tb_pizza(sabores, tamanho, recheioBorda, extra, preco, categoria_id)
values ("Calabresa", "P", "none", "none", 15.00, 3);
insert into tb_pizza(sabores, tamanho, recheioBorda, extra, preco, categoria_id)
values ("Portuguesa", "G", "none", "queijo", 40.00, 5);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabores like "c%";

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.sabor like "%doce%";

