select * from tb_categorias;
select * from tb_produtos;

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


drop table tb_produtos;
drop table tb_categorias;