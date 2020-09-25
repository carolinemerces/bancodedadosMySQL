create database db_chaves;
use db_chaves;
CREATE TABLE Pessoas (
    ID_Pessoa INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255)
);

CREATE TABLE Carro (
    ID_Carro INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Marca VARCHAR(255),
    ID_Pessoa INT,
    CONSTRAINT fk_Pessoas FOREIGN KEY (ID_Pessoa) REFERENCES Pessoas (ID_Pessoa)
); #modelar    nomeChave chaveEstrangeira         relaciona com id pessoa da tabela pessoas
#modelagem de dados: transformar uma chave primária em uma chave estrangeira 

insert into Pessoas (Nome) values ('Juliana'), ('Julio'), ('Marcio');

insert into Carro (Nome, Marca, ID_Pessoa) values ('Gol', 'Wolks', 2), ('Palio', 'Fiat', 3);

truncate Pessoas;
select * from Pessoas;
select * from Carro;



