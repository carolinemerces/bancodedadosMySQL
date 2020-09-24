create database db_escola;

use db_escola;

CREATE TABLE tb_alunos (
id_matricula bigint auto_increment,
nome varchar(45) not null,
turma varchar(5) not null,
periodo varchar (20) not null,
nota decimal(3,1) not null,

primary key (id_matricula));

insert into tb_alunos (nome, turma, periodo, nota) values ("Laura Sousa", "5 D", "Manhã", 8.5);
insert into tb_alunos (nome, turma, periodo, nota) values ("Ronald Roam", "7 B", "Manhã", 7.5);
insert into tb_alunos (nome, turma, periodo, nota) values ("Sara Lima", "8 A", "Vespertino", 8.0);
insert into tb_alunos (nome, turma, periodo, nota) values ("Raissa Lemes", "1 C", "Nortuno", 9.7);
insert into tb_alunos (nome, turma, periodo, nota) values ("Cauã Souza", "5 D", "Manhã", 7.3);
insert into tb_alunos (nome, turma, periodo, nota) values ("Rui Sarz", "6 C", "Vespertino", 9.9);
insert into tb_alunos (nome, turma, periodo, nota) values ("Mauro Santos", "2 A", "Noturno", 4.3);
insert into tb_alunos (nome, turma, periodo, nota) values ("Larissa Oliveira", "2 B", "Manhã", 4.7);

select *from tb_alunos;
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;
update tb_alunos set nota = 5.5 where id_matricula=7;