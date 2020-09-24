create database db_ecommerce;

use db_ecommerce;

CREATE TABLE tb_produtos (
id_produto bigint auto_increment,
nome varchar(45) not null,
marca varchar(20) not null,
tamanho varchar(3) not null,
cor varchar (45) not null,
preco decimal(10,2) not null,

primary key (id_produto));

insert into tb_produtos (nome, marca, tamanho, cor, preco) values ("CAMISETA", "NIKE", "M", "PRETA", 39.99);
insert into tb_produtos (nome, marca, tamanho, cor, preco) values ("CALÇA", "NIKE", "42", "AZUL", 59.99);
insert into tb_produtos (nome, marca, tamanho, cor, preco) values ("JAQUETA", "ADIDAS", "G", "BRANCA", 99.99);
insert into tb_produtos (nome, marca, tamanho, cor, preco) values ("SHORT/SAIA", "ADIDAS", "36", "CINZA", 29.99);
insert into tb_produtos (nome, marca, tamanho, cor, preco) values ("TOP", "MIZUNO", "P", "ROSA/PRETO", 19.99);
insert into tb_produtos (nome, marca, tamanho, cor, preco) values ("MEIA", "MIZUNO", "U", "BRANCA", 19.99);
insert into tb_produtos (nome, marca, tamanho, cor, preco) values ("BONÉ", "ADIDAS", "U", "VERMELHO", 79.99);
insert into tb_produtos (nome, marca, tamanho, cor, preco, id_produto) values ("SHORT", "MIZUNO", "40", "PRETO/BRANCO", 36.99, 8);

select *from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;
update tb_produtos set tamanho = "38" where id_produto=4;
update tb_produtos set marca = "OXER", cor = "PRETA" where id_produto=7;
delete from tb_produtos where id_produto=9;

