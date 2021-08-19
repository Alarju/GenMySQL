create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
categoria varchar(255),
subcategoria varchar(255),
modelo varchar(255),
marca varchar(255),
preco decimal,
garantia varchar(255),
estoque boolean,
primary key (id)
);

insert into tb_produtos(categoria, subcategoria, modelo, marca, preco, garantia, estoque)
values ("Eletrônico", "Smartphone", "Zenfone 4", "Asus", 1099.00, "1 ano", true);
insert into tb_produtos(categoria, subcategoria, modelo, marca, preco, garantia, estoque)
values ("Eletrônico", "Notebook", "Aspire 5", "Acer", 3561.00, "1 ano", true);
insert into tb_produtos(categoria, subcategoria, modelo, marca, preco, garantia, estoque)
values ("Eletrônico", "Notebook", "Inspiron 5406-M30S", "Dell", 5828.00, "1 ano", true);
insert into tb_produtos(categoria, subcategoria, modelo, marca, preco, garantia, estoque)
values ("Eletrônico", "Desktop", "Vostro Small", "Dell", 4148.00, "1 ano", false);
insert into tb_produtos(categoria, subcategoria, modelo, marca, preco, garantia, estoque)
values ("Eletrodoméstico", "Refrigerador", "RS65R5411M9", "Samsung", 10599.00, "2 anos", false);
insert into tb_produtos(categoria, subcategoria, modelo, marca, preco, garantia, estoque)
values ("Eletrodoméstico", "Lavadora", "Essential Care", "Electrolux", 1728.00, "2 anos", true);
insert into tb_produtos(categoria, subcategoria, modelo, marca, preco, garantia, estoque)
values ("Mobília", "Cadeira Gamer", "Mad Racer V12", "PCYES", 499.00, "1 ano", true);
insert into tb_produtos(categoria, subcategoria, modelo, marca, preco, garantia, estoque)
values ("Acessório", "Fone de ouvido", "G332", "Logitech", 449.00, "3 meses", true);

select * from tb_produtos;
select * from tb_produtos where preco < 500;
select * from tb_produtos where preco > 500;

update tb_produtos set preco = 500.00 where id = 1;

select * from tb_produtos;
