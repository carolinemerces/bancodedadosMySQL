CREATE TABLE tb_venda (
    idVenda INT,
    produto VARCHAR(255),
    preco DECIMAL(10.2),
    horarioVenda DATETIME DEFAULT CURRENT_TIMESTAMP, #data e horário atual da inserção
    data_Entrega DATE, #ano, mês, dia
    hora_Entrega TIME #hora, min, seg
);

INSERT INTO tb_venda(produto, preco, data_Entrega, hora_Entrega) VALUES
("Ecosport", 69000.00, "2018-12-03", "13:40:00");
delete INTO tb_venda(produto, preco, data_Entrega, hora_Entrega) VALUES
("Ecosport", 69000.00, "2018-12-03", "13:40:00");
select * from tb_venda;