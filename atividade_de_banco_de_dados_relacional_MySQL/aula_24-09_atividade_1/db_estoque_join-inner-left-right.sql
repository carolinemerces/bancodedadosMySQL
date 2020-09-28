use db_estoque;

select * from tb_produtos;
select * from tb_produtos inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
select tb_produtos.nome, preco, tb_marcas.nome from tb_produtos inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
select tb_produtos.nome, preco, tb_marcas.nome from tb_produtos inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id where tb_marcas.nome = "Nike";
select tb_produtos.nome, preco, tb_marcas.nome from tb_produtos inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id where tb_marcas.nome = "Nike" and tb_produtos.preco < 50.00 and tb_produtos.nome = "Meias";
select tb_produtos.nome, preco, tb_marcas.nome from tb_produtos inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id where tb_produtos.nome = "Meias" or tb_produtos.nome like "t%";

select * from tb_produtos left join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
select * from tb_produtos right join tb_marcas on tb_marcas.id = tb_produtos.marca_id;