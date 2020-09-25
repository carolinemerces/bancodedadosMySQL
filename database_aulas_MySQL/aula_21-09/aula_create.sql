#Cria o banco
Create database if not exists db_loja1;
use db_loja1;

CREATE TABLE if not exists tb_clientes (
    codigo INT,
    nome VARCHAR(60),
    dataNascimento DATE,
    telefone CHAR(8)
);


select * from tb_clientes; #mostra os registros
describe tb_clientes; #mostra o esqueleto
show tables; #mostra a tabela apenas se o "use" estiver ativado
#mostra o banco
show databases; 

#ativa o banco
#use google;
#mostra os databases
#show databases;

