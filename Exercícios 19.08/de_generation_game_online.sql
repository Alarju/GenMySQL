create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
class varchar(255),
Skill varchar(255),
arma varchar(255),
primary key (id)
);

insert into tb_classe(class, skill, arma) values("mago", "míssil mágico", "cajado");
insert into tb_classe(class, skill, arma) values("guerreiro", "provocar", "espada");
insert into tb_classe(class, skill, arma) values("ladino", "ataque pelas costas", "facas");
insert into tb_classe(class, skill, arma) values("bárbaro", "furia de batalha", "machado");
insert into tb_classe(class, skill, arma) values("arqueiro", "tiro concentrado", "arco e flecha");

select * from tb_classe;



create table tb_personagem0(
id bigint auto_increment,
nome varchar(255),
Str int, -- poder de ataque
def int, -- poder de defesa
Dex int,
Agi int,
intel int,
wis int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem0(nome, Str, def, Dex, Agi, intel, wis, classe_id)
values("Mestre_dos_magos", 500, 500, 700, 1000, 2500, 2000, 1);
insert into tb_personagem0(nome, Str, def, Dex, Agi, intel, wis, classe_id)
values("Mister_M", 500, 500, 700, 1000, 2500, 2000, 1);
insert into tb_personagem0(nome, Str, def, Dex, Agi, intel, wis, classe_id)
values("Bellatrix", 500, 500, 700, 1000, 2500, 2000, 1);
insert into tb_personagem0(nome, Str, def, Dex, Agi, intel, wis, classe_id)
values("Saber", 2400, 2000, 1000, 900, 500, 500, 2);
insert into tb_personagem0(nome, Str, def, Dex, Agi, intel, wis, classe_id)
values("Jotaro", 2400, 2000, 1000, 900, 500, 500, 4);
insert into tb_personagem0(nome, Str, def, Dex, Agi, intel, wis, classe_id)
values("Solaire", 2400, 2000, 1000, 900, 500, 500, 2);
insert into tb_personagem0(nome, Str, def, Dex, Agi, intel, wis, classe_id)
values("Tripa Seca", 1400, 1000, 2400, 2000, 600, 600, 3);
insert into tb_personagem0(nome, Str, def, Dex, Agi, intel, wis, classe_id)
values("Legolas", 1400, 1000, 2400, 2000, 600, 600, 5);


select * from tb_personagem0 where nome Like "%c%";

select * from tb_personagem0 where Str < 2000;

select * from tb_personagem0 where Str > 2000;

select * from tb_personagem0 inner join tb_classe on tb_personagem0.classe_id = tb_classe.id;

select * from tb_personagem0 inner join tb_classe on tb_personagem0.classe_id = tb_classe.id
where tb_classe.id = 2;