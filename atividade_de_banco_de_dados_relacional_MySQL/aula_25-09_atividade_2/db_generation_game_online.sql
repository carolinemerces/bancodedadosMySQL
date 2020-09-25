create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id bigint not null auto_increment,
    classe varchar(20) not null,
    power varchar(30),
    primary key (id)
);

create table tb_personagem(
	id bigint not null auto_increment,
    nome varchar(20) not null,
    ataque bigint(5),
    defesa bigint(5),
    classe_id bigint not null,
    primary key (id),
    foreign key(classe_id) references tb_classe(id)
);

insert into tb_classe(classe, power) values
 ("Rápido", "velocidade"), ("Choque", "raios"), ("Super Força", "força"), ("Super Visão", "raios X e ultravioleta"), ("Arqueiros", "arco e flexa");
 
 select * from tb_classe;
 
 insert into tb_personagem(nome, ataque, defesa, classe_id) values
 ("XR", 4000, 2500, 2), ("RayPower", 4200, 5000, 3),  ("Sue", 2500, 1500, 4), ("James", 3500, 2700, 5),
 ("FlashC", 3000, 3500, 1), ("XXR", 4000, 3000, 2),  ("Sia", 2500, 2400, 4), ("Joan", 3500, 3700, 5);
 
 
select * from tb_personagem;

#Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque>2000;
select nome, ataque from tb_personagem where ataque>2000;

#Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa >=1000 and defesa <=2000;
select nome, defesa from tb_personagem where defesa >=1000 and defesa <=2000;

#Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like 'c%';
select * from tb_personagem where nome like 's%';
select * from tb_personagem where nome like 'j%';
select * from tb_personagem where nome like 'x%';

#Faça um select  utilizando LIKE buscando os personagens com a última letra R.
select * from tb_personagem where nome like '%r';



  
  