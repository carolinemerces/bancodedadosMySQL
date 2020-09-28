#Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa.
#O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

create database db_cidade_das_carnes;
use db_cidade_das_carnes;

#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
create table tb_categorias(
id_categoria int auto_increment primary key,
tipo varchar (25),
forma varchar(25),
situação varchar (25)
);

#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produtos(
id_produtos int auto_increment primary key,
nome_produto varchar(25),
preco_produto double(5,2),
quantidade_kg double(5,3),
estoque_produto boolean,
categoria_id int,
foreign key(categoria_id) references tb_categorias(id_categoria)
);

#Popule a tabela Categoria com até 5 dados.
insert into tb_categorias values
(null, "Bovino", "Peça", "Fresco"),
(null, "Suíno", "Peça", "Fresco"),
(null, "Ave", "Inteira", "Congelada"),
(null, "Peixe", "Filé", "Congelado"),
(null, "Queijo", "Fatiado", "Fresco");

#Popule esta tabela Produto com até 8 dados.
insert into tb_produtos values
(null, "Picanha", 51.99, 2.000, true, 1),
(null, "Lombo", 42.99, 1.500, true, 2),
(null, "Costela", 63.99, 2.500, true, 1),
(null, "Peito", 11.99, 1.700, true, 3),
(null, "Asinha", 9.99, 0.500, true, 3),
(null, "Bacon", 12.99, 0.200, true, 2),
(null, "Fígado", 6.99, 0.700, true, 1),
(null, "Coxa", 8.99, 1.800, true, 3);

#Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco_produto > 50.00;

#Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco_produto > 3.00 and preco_produto < 60.00;

#Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produtos where nome_produto like "c%";

#Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id_categoria; 

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id_categoria where tipo = "Bovino";
select id_produtos, nome_produto, preco_produto, quantidade_kg, tipo from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id_categoria where tipo = "Bovino";

select * from tb_categorias;
select * from tb_produtos;
drop table tb_produtos;
drop table tb_categorias;
