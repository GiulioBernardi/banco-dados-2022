-- Sou cliente 1

-- 1
select * from movimentacao where id_conta in 
	(select conta.id_conta from conta_corrente conta inner join clientes cliente
	on conta.id_cliente = cliente.id_cliente where cliente.id_cliente = 1) 
	having month(data_movimentacao) = 08;

-- 2
select valor, descricao from movimentacao where id_conta in (select id_conta from conta_corrente conta inner join clientes cliente on 
    conta.id_cliente = cliente.id_cliente where codigo_do_banco = 237 and cliente.id_cliente = 1);

select * from categorias;

-- 3
select mo.id_conta, mo.id_movimentacao, ca.descricao, ca.id_categoria from categorias ca inner join movimentacao mo 
	where ca.id_categoria = mo.id_categoria having id_conta in 
	(select conta.id_conta from conta_corrente conta inner join clientes cliente
		on conta.id_cliente = cliente.id_cliente where cliente.id_cliente = 1) 
	and ca.descricao like '%trabalho%';

-- 4
select id_movimentacao, valor, date_format(data_movimentacao, "%d/%m/%Y"), 
	if(month(data_movimentacao) < 7,1,2) semestre from movimentacao where if(month(data_movimentacao) < 7,1,2) = 1;

  
-- 5 
select distinct trim(c.descricao) from categorias c inner join movimentacao m on c.id_categoria = m.id_categoria 
where month(data_movimentacao) = 9 and FLOOR((DayOfMonth(data_movimentacao)-1)/7)+1 = 1 order by c.descricao; 



-- 6
select ca.descricao as categoria, round(sum(mo.valor),2) as gasto, mo.id_conta, 
case 
	when ca.tipo = 0 then 'despesa'
    when ca.tipo = 1 then 'receita'
    end as tipo
from movimentacao mo inner join categorias ca on mo.id_categoria = ca.id_categoria where mo.id_conta in (select id_conta from conta_corrente conta inner join clientes cliente on 
    conta.id_cliente = cliente.id_cliente where cliente.id_cliente = 1) group by ca.descricao having sum(mo.valor) >= 1000;
    
    
-- 7 
select mo.id_movimentacao, mo.id_conta, mo.id_categoria, mo.valor, mo.data_movimentacao, ca.tipo from movimentacao mo inner join categorias ca on mo.id_categoria = ca.id_categoria where mo.id_conta in (select id_conta from conta_corrente conta inner join clientes cliente on 
    conta.id_cliente = cliente.id_cliente where cliente.id_cliente = 1) having tipo = 1 order by mo.data_movimentacao desc limit 5;
    
-- 8
select max(valor) from (select valor, data_movimentacao from movimentacao where id_conta in (select id_conta from conta_corrente conta inner join clientes cliente on 
    conta.id_cliente = cliente.id_cliente where cliente.id_cliente = 1) having month(data_movimentacao) = month(current_date())) as gasto_mes_atual;

-- 9

select 
concat((case mes
when 1 then 'Janeiro'
				when 2 then 'Fevereiro'
				when 3 then 'Março'
				when 4 then 'Abril'
				when 5 then 'Maio'
				when 6 then 'Junho'
				when 7 then 'Julho'
				when 8 then 'Agosto'
				when 9 then 'Setembro'
				when 10 then 'Outubro'
				when 11 then 'Novembro'
				else 'Dezembro' 
                end), ' | ', cat.descricao, ' | R$', round(valor,2)) from (
select 
    month(m.data_movimentacao) as mes, 
    m.valor as valor,
    m.id_categoria
from movimentacao m
join (
  select distinct data_movimentacao, MAX( valor ) as maior_valor
  from movimentacao
  group by month(data_movimentacao) ) as mm
  on month(m.data_movimentacao) = month(mm.data_movimentacao) and m.valor = mm.maior_valor
order by month(data_movimentacao) asc) as mov inner join categorias cat on mov.id_categoria = cat.id_categoria order by mes;

-- 10
select concat((case conta.codigo_do_banco 
				when 111 then 'Itau'
                when 222 then 'Nubank'
                when 237 then 'Bradesco'                
                end), ' | R$', conta.saldo) 
from conta_corrente conta 
inner join clientes cliente on conta.id_cliente = cliente.id_cliente 
where conta.id_cliente = 1;
