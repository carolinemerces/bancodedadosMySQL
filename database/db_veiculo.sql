use db_veiculo;

select * from proprietario;
select * from tb_carro inner join proprietario on tb_carro.proprietario_id_proprietario = proprietario.id_proprietario;
select * from tb_carro;