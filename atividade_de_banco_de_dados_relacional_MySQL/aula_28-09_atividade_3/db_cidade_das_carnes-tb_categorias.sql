#Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa.
#O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

create database db_cidada_das_carnes;
use db_cidada_das_carnes;

#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
create table tb_categorias(
id_categoria int auto_increment primary key,
tipo varchar (25),
forma varchar(25),
situação varchar (25)
);
