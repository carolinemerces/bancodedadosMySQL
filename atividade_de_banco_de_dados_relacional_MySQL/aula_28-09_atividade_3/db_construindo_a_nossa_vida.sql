#Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa.

create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

#O sistema trabalhará com 2 tabelas tb_produto e tb_categoria. 
#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
create table tb_categoria(
id_categoria int auto_increment primary key,
marca varchar(25),
tipo varchar(25)
);


#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto(
id_produto int auto_increment primary key,
nome varchar(25),
preco double(5,2),
quantidade varchar(20),
estoque boolean,
categoria_id int,
constraint fk_produto foreign key(categoria_id) references tb_categoria(id_categoria)
);

#Popule a tabela Categoria com até 5 dados.
insert into tb_categoria values
(null, "Tigre", "Hidráulico"),
(null, "FortLeve", "Hidráulico"),
(null, "Votorantim", "Construção"),
(null, "Metalon", "Construção"),
(null, "Sil", "Elétrico");

#Popule esta tabela Produto com até 8 dados.
insert into tb_produto values
(null, "Cano PVC", 28.99, "10m", true, 1),
(null, "Caixa D'Água", 600.00, "1.500L", true, 2),
(null, "Cimento", 63.99, "10Kg", true, 3),
(null, "Argamassa", 11.99, "2Kg", true, 3),
(null, "Eletroduto rígido", 15.90, "3/4", true, 4),
(null, "Cabo Flexível", 184.90, "100m", true, 5),
(null, "Conjunto de Tomada", 4.90, "1 10A", true, 5),
(null, "Chapa de Aço", 129.90, "1000X2000X0,95mm", true, 4);


#Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50.00;

#Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco > 3.00 and preco < 60.00;

#Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "c%";

#Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria; 

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria where tipo = "Construção";
select id_produto, nome, preco, quantidade, tipo from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria where tipo = "Elétrico";



select * from tb_categoria;
select * from tb_produto;