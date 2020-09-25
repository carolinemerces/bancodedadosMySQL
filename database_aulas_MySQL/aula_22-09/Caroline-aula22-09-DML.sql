create database db_deletar;
use db_deletar;

create  table consumidores (
id int primary key auto_increment,
nome varchar(30)
);
insert into consumidores (nome) values
("Marcelo"),
("Julia");
select * from consumidores;

#drop table consumidores;
#truncate consumidores: apaga todos os dados da tabela e não a tabela toda