create database aula_select;
use aula_select;

create table clientes (
codigo_cliente int not null primary key,
nome varchar (50),
cidade varchar (10),
serie char (1)
);
CREATE table funcionarios (
		id int not null auto_increment,
		nome varchar(30) NOT NULL,
		nascimento date,
		sexo enum ('M','F'),
		peso decimal(5,2),
		altura decimal(3,2),
		nacionalidade varchar(20) DEFAULT 'Brasil',
		primary key (id));

Insert into funcionarios values ('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
Insert into funcionarios values 
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');

select id, nome from funcionarios;
select * from funcionarios where nome = "Gabriela";
select * from funcionarios where id =3;
select * from funcionarios;
select * from clientes;
#conta todas as linhas preenchidas na tabela funcionários
select count(*) from funcionarios;


#seleciona tudo na tabela funcionários quando o nome começar com a letra G
select * from funcionarios where nome like 'g%';

#seleciona tudo na tabela funcionários quando o nome terminar com a letra A
select * from funcionarios where nome like '%a';

#seleciona tudo na tabela funcionário quando for mulhr e quando for brasileiro
select * from funcionarios where sexo='F' and nacionalidade = 'Brasil';

#seleciona tudo na tabela funcionário quando contém "os elementos" entre aspas no meio da palavra
select * from funcionarios where nome like '%abriel%';

#seleciona tudo na tabela funcionários quando a segunda letra do nome for l
select * from funcionarios where nome like '_l%';

select * from funcionarios where altura>2;

#exercício com comando like, e com comparação, com operadores lógicos

#renomear um database.
#RENAME TABLE banco_atual TO novo_banco;
