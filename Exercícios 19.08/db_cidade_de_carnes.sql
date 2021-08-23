

CREATE TABLE `tb_produtos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`peso` DECIMAL NOT NULL,
	`preco` DECIMAL NOT NULL,
	`validade` DATE NOT NULL,
	`tipo` varchar(255) NOT NULL,
	`nome` varchar(255) NOT NULL,
	`categoria_id` bigint(255) NOT NULL,
	PRIMARY KEY (`id`)
);

alter table tb_produtos rename column nome to pagamento;

select * from tb_produtos;

CREATE TABLE `tb_categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`estoque` BOOLEAN NOT NULL,
	`corte` varchar(255) NOT NULL,
	`animal` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_produtos` ADD CONSTRAINT `tb_produtos_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `tb_categoria`(`id`);

insert into tb_categoria(animal, corte, estoque) values ("bovino", "coxão duro", true);
insert into tb_categoria(animal, corte, estoque) values ("bovino", "mignom", true);
insert into tb_categoria(animal, corte, estoque) values ("suíno", "costela", true);
insert into tb_categoria(animal, corte, estoque) values ("suíno", "pernil", true);
insert into tb_categoria(animal, corte, estoque) values ("ave", "asa", true);

select * from tb_categoria;

insert into tb_produtos(peso, preco, validade, tipo, pagamento, categoria_id)
values(1.0, 39.90, "2021-08-24", "filé", "débito", 1);
insert into tb_produtos(peso, preco, validade, tipo, pagamento, categoria_id)
values(0.500, 15.90, "2021-08-24", "pedaço", "débito", 5);
insert into tb_produtos(peso, preco, validade, tipo, pagamento, categoria_id)
values(1.0, 59.90, "2021-08-24", "filé", "débito", 2);
insert into tb_produtos(peso, preco, validade, tipo, pagamento, categoria_id)
values(1.0, 29.90, "2021-08-24", "peça", "crédito", 4);
insert into tb_produtos(peso, preco, validade, tipo, pagamento, categoria_id)
values(1.0, 39.90, "2021-08-24", "peça", "débito", 1);
insert into tb_produtos(peso, preco, validade, tipo, pagamento, categoria_id)
values(1.0, 35.00, "2021-08-24", "peça", "débito", 4);
insert into tb_produtos(peso, preco, validade, tipo, pagamento, categoria_id)
values(1.0, 19.90, "2021-08-24", "pedaço", "dinheiro", 5);
insert into tb_produtos(peso, preco, validade, tipo, pagamento, categoria_id)
values(2.0, 100.90, "2021-08-24", "pedaço", "débito", 2);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where tipo like "%c%";
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.id = 1