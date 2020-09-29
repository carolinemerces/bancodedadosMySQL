#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produtos(
id_produtos int auto_increment primary key,
nome_produto varchar(25),
preco_produto double(5,2),
quantidade_kg double(5,3),
estoque_produto boolean,
categoria_id int,
constraint fk_produtos foreign key(categoria_id) references tb_categorias(id_categoria)
);