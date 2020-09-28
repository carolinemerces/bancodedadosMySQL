SELECT * FROM funcionarios INNER JOIN enderecos_funcionarios ON funcionarios.funcionario_id = enderecos_funcionarios.funcionario_id_;

SELECT * FROM funcionarios LEFT JOIN enderecos_funcionarios ON funcionario_id = funcionario_id_;  #where funcionario_sexo = "Feminino";

SELECT * FROM funcionarios RIGHT JOIN enderecos_funcionarios /* Tabela da direita */ ON funcionario_id = funcionario_id_ ; #where funcionario_sexo = "Feminino";

SELECT * FROM funcionarios INNER JOIN enderecos_funcionarios ON funcionarios.funcionario_id = enderecos_funcionarios.funcionario_id_ where funcionario_sexo = "Feminino";

create table juncao SELECT * FROM funcionarios INNER JOIN enderecos_funcionarios ON funcionarios.funcionario_id = enderecos_funcionarios.funcionario_id_;
select * from juncao;