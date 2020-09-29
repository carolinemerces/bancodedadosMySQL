#Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa.

create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

#O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
create table tb_categoria(
id_categoria int auto_increment primary key,
periodo varchar(25),
tipo varchar(25),
duracao varchar(25)
);


#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto(
id_produto int auto_increment primary key,
nome varchar(25),
preco double(8,2),
horario varchar(20),
vaga_aberta boolean,
categoria_id int,
constraint fk_produto foreign key(categoria_id) references tb_categoria(id_categoria)
);

#Popule a tabela Categoria com até 5 dados.
insert into tb_categoria values
(null, "Diurno", "Tecnologia", "480h"),
(null, "Vespertino", "Design", "460h"),
(null, "Integral", "Gestão",  "390h"),
(null, "Noturno", "Ciências", "2000h"),
(null, "Madrugada", "Empreenderismo", "520h");

#Popule esta tabela Produto com até 8 dados.
insert into tb_produto values
(null, "Java", 480.00, "9h-12h", true, 1),
(null, "HTML", 600.00, "8h-11h", true, 1),
(null, "UI/UX", 400.00, "13h-16h", true, 2),
(null, "Gestão de Projetos", 520.00, "9h-16h", true, 3),
(null, "Ciência de Dados", 2000.00, "19-22h", true, 4),
(null, "Ciência da Computação", 4000.00, "19-23h", true, 4),
(null, "Empreendedorismo", 430.00, "00h-4h", true, 5),
(null, "Gestão de Tempo", 129.90, "10h-17h", true, 3);


#Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50.00;

#Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco > 3.00 and preco < 60.00;

#Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "J%";

#Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria; 

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria where tipo = "Tecnologia";
select id_produto, nome, preco, horario, periodo, tipo from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id_categoria where periodo = "Noturno";

select * from tb_categoria;
select * from tb_produto;