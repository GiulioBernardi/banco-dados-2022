-- Respondendo as perguntas no read.me: Sim, quando já existem dados na tabela, ou para a maioria das 
-- alterações em tabelas existentes é bom começar uma transação, pois caso algo dê errado, você tem a
-- chance de voltar atrás antes de efetivar as mudanças!

start transaction;

alter table movimentacao add descricao varchar(55) not null;

alter table movimentacao modify column valor decimal(12,4);

alter table categorias add tipo tinyint(1) null default 0;

desc movimentacao;
desc categorias;

insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (10,     STR_TO_DATE("10-10-22","%d-%m-%y"), 3, (select id_categoria from categorias where descricao = 'Cozinha'), 'Pote de plástico');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (250.55, STR_TO_DATE("19-10-22","%d-%m-%y"), 11, (select id_categoria from categorias where descricao = 'Carro'), 'Troquei o rádio do carro');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (59.99, STR_TO_DATE("19-09-22","%d-%m-%y"), 8, (select id_categoria from categorias where descricao = 'Peça de computador'), 'Mouse gamer');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (100.9945, STR_TO_DATE("19-09-22","%d-%m-%y"), 8, (select id_categoria from categorias where descricao = 'Peça de computador'), 'teclado gamer');

insert into categorias (descricao, tipo) values ('Salário', 1);
insert into categorias (descricao, tipo) values ('Conta de água', 0);
insert into categorias (descricao, tipo) values ('Mercado', 0);
insert into categorias (descricao, tipo) values ('Comissão', 1);

select descricao,
case
	when tipo = 0 then 'Despesa'
    when tipo = 1 then 'Receita'
end as tipo_categoria
from categorias;

rollback;
commit;