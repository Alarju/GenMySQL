create database db_farmacia_do_bem;

use db_farmacia_do_bem;

CREATE TABLE `tb_categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`setor` varchar(255) NOT NULL,
	`origem` varchar(255) NOT NULL,
	`marca` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_produtos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`data_validade` DATE NOT NULL,
	`dispensacao` varchar(255) NOT NULL,
	`tipo` varchar(255) NOT NULL,
	`preco` DECIMAL NOT NULL,
	`categoria_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);



ALTER TABLE `tb_produtos` ADD CONSTRAINT `tb_produtos_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `tb_categoria`(`id`);

insert into tb_categoria(setor, origem, marca) values ("medicamentos", "sintetico", "Eurofarma");
insert into tb_categoria(setor, origem, marca) values ("medicamentos", "fitoterapico", "Eurofarma");
insert into tb_categoria(setor, origem, marca) values ("cosmeticos", "sintetico", "Eurofarma");
insert into tb_categoria(setor, origem, marca) values ("cosmeticos", "natural", "Eurofarma");
insert into tb_categoria(setor, origem, marca) values ("curativos", "sintetico", "Eurofarma");

select * from tb_categoria;

insert into tb_produtos(Nome, data_validade, dispensacao, tipo, preco, categoria_id)
values ("Dipirona", "2021-12-23", "livre", "comprimido", 10.90, 1);
insert into tb_produtos(Nome, data_validade, dispensacao, tipo, preco, categoria_id)
values ("escitalopram", "2021-12-23", "com receita", "comprimido", 54.10, 1);
insert into tb_produtos(Nome, data_validade, dispensacao, tipo, preco, categoria_id)
values ("Guaco", "2021-12-23", "livre", "xarope", 39.00, 2);
insert into tb_produtos(Nome, data_validade, dispensacao, tipo, preco, categoria_id)
values ("hidratante facial", "2021-12-23", "livre", "creme", 104.50, 3);
insert into tb_produtos(Nome, data_validade, dispensacao, tipo, preco, categoria_id)
values ("desodorante", "2021-12-23", "livre", "spray", 34.90, 4);
insert into tb_produtos(Nome, data_validade, dispensacao, tipo, preco, categoria_id)
values ("esparadrapo", "2021-12-23", "livre", "primeiros socorros", 10.90, 5);
insert into tb_produtos(Nome, data_validade, dispensacao, tipo, preco, categoria_id)
values ("silimarina", "2021-12-23", "livre", "capsula", 50.90, 2);
insert into tb_produtos(Nome, data_validade, dispensacao, tipo, preco, categoria_id)
values ("loratadina", "2021-12-23", "livre", "comprimido", 19.90, 1);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%b%";
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.id = 1