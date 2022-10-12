-- 1  
select nome, email, ende.cidade from (
	select * from clientes cli
	where id_cliente not in
	(select con.id_cliente 
    from movimentacao mov inner join conta_corrente con on mov.id_conta = con.id_conta 
    where month(data_movimentacao) = month(current_date()))) as clie inner join enderecos ende on clie.id_endereco = ende.id_endereco;
    
-- 2
create or replace view maiores_movimentacoes as select id_conta, valor from movimentacao order by valor desc limit 5;
select distinct cliente.nome, cliente.email from clientes cliente inner join conta_corrente conta on conta.id_cliente = cliente.id_cliente where conta.id_conta in (select id_conta from maiores_movimentacoes);

-- 3
select concat('O dia que mais tem movimentações é dia ', day(data_movimentacao)), count(day(data_movimentacao)) from movimentacao group by day(data_movimentacao) order by day(data_movimentacao) limit 1;

-- 4 Códigos a seguir são críticos, consulte a equipe antes de commitar ou dar rollback
start transaction;

delete from conta_corrente where id_cliente = (select id_cliente from clientes where cpf = '77777777777');
delete from clientes where cpf = '77777777777';

rollback;
commit;

-- 5


select conta.id_cliente, count(conta.id_cliente) from conta_corrente conta inner join movimentacao movi on conta.id_conta = movi.id_conta having conta.id_cliente = 2;
select valor
from movimentacao movi inner join conta_corrente conta on movi.id_conta = conta.id_conta where conta.id_cliente = 2 order by valor desc limit 1;
start transaction;
rollback;
select * from movimentacao;

delete from movimentacao where id_movimentacao = 75;
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) 
		values (7080, STR_TO_DATE("19-08-22","%d-%m-%y"),
        (select id_conta from conta_corrente where id_cliente = 2 and codigo_do_banco = 333), 
        (select id_categoria from categorias where descricao = 'Salário'), 'recebimento suspeito');


delimiter $$
create trigger movimentacao_grande before insert on movimentacao
for each row begin
if (select count(id_cliente)
	from movimentacao movi 
    inner join conta_corrente conta 
    on movi.id_conta = conta.id_conta 
    where conta.id_cliente = 2) > 10 then
	if new.valor > (((select valor from movimentacao movi 
					inner join conta_corrente conta 
					on movi.id_conta = conta.id_conta 
                    where conta.id_cliente = 2 order by valor 
                    desc limit 1)) *300) / 100 then
		signal sqlstate '45000';
	end if;
end if;
end$$

DROP TRIGGER movimentacao_grande