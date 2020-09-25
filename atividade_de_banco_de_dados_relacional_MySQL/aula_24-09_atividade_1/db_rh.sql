create database db_RH;

use db_RH;

CREATE TABLE tb_funcionarios (
    id_codigo INT(20) AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    setor VARCHAR(20) NOT NULL,
    cargo VARCHAR(45) NOT NULL,
    salario DOUBLE(10 , 2 ) NOT NULL,
    PRIMARY KEY (id_codigo)
);

insert into tb_funcionarios (nome, setor, cargo, salario) values ("Ana Laura da Silva", "TI", "Tech Lead", 8000.00);
insert into tb_funcionarios (nome, setor, cargo, salario) values ("Jorge Altino", "RH", "Gerente", 6000.00);
insert into tb_funcionarios (nome, setor, cargo, salario) values ("Soraia Montes", "Gestão Financeira", "Analista", 7000.00);
insert into tb_funcionarios (nome, setor, cargo, salario) values ("Claudio Teles", "Logística", "Estagiário", 1800.00);
insert into tb_funcionarios (nome, setor, cargo, salario) values ("Cinthia Torres", "Marketing", "Presidente", 45000.00);

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;
update tb_funcionarios set salario = 12000.00 where id_codigo=1;
update tb_funcionarios set cargo = "Assistente", salario = 3800.00 where id_codigo=5;