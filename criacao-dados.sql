-- popular enderecos
insert into enderecos (cep, rua, numero, complemento, bairro, cidade, estado, pais) values('12548758', 'Rua Doze', 12, 'apartamento 12', 'Vila dos Doze', 'São Paulo', 'São Paulo', 'Brasil');
insert into enderecos (cep, rua, numero, complemento, bairro, cidade, estado, pais) values('12548758', 'Rua Doze', 12, 'apartamento 12', 'Vila dos Doze', 'São Paulo', 'São Paulo', 'Brasil');
insert into enderecos (cep, rua, numero, complemento, bairro, cidade, estado, pais) values('69583254', 'Rua Monte Feliz', 65, 'Casa 2', 'Achados', 'São Paulo', 'São Paulo', 'Brasil');
insert into enderecos (cep, rua, numero, bairro, cidade, estado, pais) values('55863254', 'Rua Duque de Caxias', 22, 'Praia Linda', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil');
insert into enderecos (cep, rua, numero, bairro, cidade, estado, pais) values('52103598', 'Rua de Ouro', 22, 'Trilhos', 'Belo Horizonte', 'Minas Gerais', 'Brasil');
insert into enderecos (cep, rua, numero, bairro, cidade, estado, pais) values('58472635', 'Rua do Capim', 425, 'Prainha', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil');
insert into enderecos (cep, rua, numero, bairro, cidade, estado, pais) values('58472635', 'Rua Dom Pedro', 123, 'Bairo do cacetinho', 'Porto', 'Porto', 'Portugal');

-- popular clientes
insert into clientes (nome, cpf, email, senha, data_nascimento, profissao, genero, id_endereco) values('Giulio Cesar Costa Bernardi', '11111111111', 'giulio@codar.com.br', '12345', STR_TO_DATE("01-10-00","%d-%m-%y"), 'aprendiz', 'm', 1);
insert into clientes (nome, cpf, email, senha, data_nascimento, profissao, genero, id_endereco) values('Lucas Nogueira', '22222222222', 'lucas@codar.com.br', 'abcde', STR_TO_DATE("15-08-00","%d-%m-%y"), 'aprendiz', 'm', 2);
insert into clientes (nome, cpf, email, senha, data_nascimento, profissao, genero, id_endereco) values('Luciano Freire', '33333333333', 'luciano@codar.com.br', 'senhaForte', STR_TO_DATE("05-04-99","%d-%m-%y"), 'aprendiz', 'm', 3);
insert into clientes (nome, cpf, email, senha, data_nascimento, profissao, genero, id_endereco) values('João Trindade', '44444444444', 'joao@codar.com.br', '32154', STR_TO_DATE("21-01-98","%d-%m-%y"), 'aprendiz', 'm', 4);
insert into clientes (nome, cpf, email, senha, data_nascimento, profissao, genero, id_endereco) values('Lucas Carrilho','55555555555',  'lucas.carrilho@codar.com.br', '9876', STR_TO_DATE("12-06-99","%d-%m-%y"), 'aprendiz', 'm', 5);
insert into clientes (nome, cpf, email, senha, data_nascimento, profissao, genero, id_endereco) values('Guilherme Mantz', '66666666666', 'guilherme@codar.com.br', '65498', STR_TO_DATE("17-09-00","%d-%m-%y"), 'aprendiz', 'm', 6);
insert into clientes (nome, cpf, email, senha, data_nascimento, profissao, genero, id_endereco) values('Gabriel Cestaro', '77777777777', 'gabriel@codar.com.br', '112233', STR_TO_DATE("17-10-99","%d-%m-%y"), 'Desenvolvedor', 'm', 7);

-- popular contas correntes
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (111, 123, 001, 'conta principal', 100.00, 1);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (222, 321, 007, 'conta conjunta com mãe', 1500.00, 1);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (237, 585, 129, 'conta para recebimento', 15000.00, 1);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (222, 7896, 321, 'Conta para salário', 10000.00, 2);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (333, 5625, 005, 'conta principal', 3521.51, 2);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (111, 1234, 001, 'principal', 12521.41, 3);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (222, 4321, 555, 'reserva', 6985.99, 3);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (444, 5686, 145, 'Conjunto com esposa', 100214.32, 4);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (222, 7874, 223, 'Pessoal reserva', 6985.48, 4);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (333, 4563, 474, 'recebimento', 10251.41, 5);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (444, 6789, 687, 'rebecimento antiga', 96585.32, 5);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (111, 6468, 569, 'principal', 1021.32, 6);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (222, 9988, 120, 'reserva', 8568.65, 6);
insert into conta_corrente (codigo_do_banco, numero, agencia, apelido, saldo, id_cliente) values (237, 2051, 325, 'principal', 120000.65, 7);

-- popular categoria 
insert into categorias (descricao) values ('Carro');
insert into categorias (descricao) values ('Peça de computador');
insert into categorias (descricao) values ('Reforma da casa');
insert into categorias (descricao) values ('Viagem');
insert into categorias (descricao) values ('Cozinha');
insert into categorias (descricao) values ('Investimento');
insert into categorias (descricao) values ('Remédio');
insert into categorias (descricao) values ('Futebol do trabalho');
insert into categorias (descricao) values ('Gasolina para trabalho');
insert into categorias (descricao) values ('alimentação no Trabalho');
insert into categorias (descricao) values ('condução para o trabalho');
select * from categorias;

-- Popular movimentação
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (10.00, STR_TO_DATE("01-10-22","%d-%m-%y"), 1, (select id_categoria from categorias where descricao = 'Cozinha'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (25.50, STR_TO_DATE("02-10-22","%d-%m-%y"), 1, (select id_categoria from categorias where descricao = 'Cozinha'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (150.00, STR_TO_DATE("10-10-22","%d-%m-%y"), 2, (select id_categoria from categorias where descricao = 'Peça de computador'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (120.99, STR_TO_DATE("12-08-22","%d-%m-%y"), 2, (select id_categoria from categorias where descricao = 'Peça de computador'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (7.50, STR_TO_DATE("28-08-22","%d-%m-%y"), 2, (select id_categoria from categorias where descricao = 'Cozinha'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (12.55, STR_TO_DATE("19-08-22","%d-%m-%y"), 3, (select id_categoria from categorias where descricao = 'Investimento'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (120, STR_TO_DATE("28-09-22","%d-%m-%y"), 3, (select id_categoria from categorias where descricao = 'Cozinha'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (55.99, STR_TO_DATE("28-09-22","%d-%m-%y"), 4, (select id_categoria from categorias where descricao = 'Reforma da casa'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (87.13, STR_TO_DATE("09-10-22","%d-%m-%y"), 4, (select id_categoria from categorias where descricao = 'Remédio'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (11, STR_TO_DATE("10-10-22","%d-%m-%y"), 3, (select id_categoria from categorias where descricao = 'Viagem'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (32.55, STR_TO_DATE("25-08-22","%d-%m-%y"), 5, (select id_categoria from categorias where descricao = 'Reforma da casa'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (1200, STR_TO_DATE("01-09-22","%d-%m-%y"), 5, (select id_categoria from categorias where descricao = 'Carro'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (99.01, STR_TO_DATE("02-09-22","%d-%m-%y"), 5, (select id_categoria from categorias where descricao = 'Reforma da casa'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (10, STR_TO_DATE("09-10-22","%d-%m-%y"), 6, (select id_categoria from categorias where descricao = 'Investimento'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (5.50, STR_TO_DATE("10-10-22","%d-%m-%y"), 6, (select id_categoria from categorias where descricao = 'Peça de computador'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (300, STR_TO_DATE("28-08-22","%d-%m-%y"), 7, (select id_categoria from categorias where descricao = 'Reforma da casa'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (658.55, STR_TO_DATE("29-08-22","%d-%m-%y"), 7, (select id_categoria from categorias where descricao = 'Reforma da casa'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (10, STR_TO_DATE("02-09-22","%d-%m-%y"), 8, (select id_categoria from categorias where descricao = 'Peça de computador'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (250.50, STR_TO_DATE("12-10-22","%d-%m-%y"), 8, (select id_categoria from categorias where descricao = 'Carro'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (1.55, STR_TO_DATE("10-10-22","%d-%m-%y"), 8, (select id_categoria from categorias where descricao = 'Cozinha'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (31.25, STR_TO_DATE("15-08-22","%d-%m-%y"), 9, (select id_categoria from categorias where descricao = 'Carro'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (100, STR_TO_DATE("21-08-22","%d-%m-%y"), 9, (select id_categoria from categorias where descricao = 'Investimento'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (150, STR_TO_DATE("22-08-22","%d-%m-%y"), 9, (select id_categoria from categorias where descricao = 'Cozinha'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (10, STR_TO_DATE("09-10-22","%d-%m-%y"), 9, (select id_categoria from categorias where descricao = 'Reforma da casa'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (9.50, STR_TO_DATE("10-10-22","%d-%m-%y"), 10, (select id_categoria from categorias where descricao = 'Investimento'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (21.25, STR_TO_DATE("01-08-22","%d-%m-%y"), 11, (select id_categoria from categorias where descricao = 'Carro'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (32, STR_TO_DATE("07-08-22","%d-%m-%y"), 11, (select id_categoria from categorias where descricao = 'Investimento'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (15.68, STR_TO_DATE("09-08-22","%d-%m-%y"), 11, (select id_categoria from categorias where descricao = 'Cozinha'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (36, STR_TO_DATE("21-08-22","%d-%m-%y"), 12, (select id_categoria from categorias where descricao = 'Reforma da casa'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria) values (12, STR_TO_DATE("31-08-22","%d-%m-%y"), 12, (select id_categoria from categorias where descricao = 'Investimento'));
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (120.05, STR_TO_DATE("22-09-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Cozinha'), 'Miojo');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1200.00, STR_TO_DATE("22-09-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Investimento'), 'Investi no tesouro selic');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (10.00, STR_TO_DATE("22-09-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Investimento'), 'Investi mais no tesouro selic');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1500.00, STR_TO_DATE("22-09-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Investimento'), 'Comprei muitas ações');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (55.00, STR_TO_DATE("22-09-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Carro'), 'Levei o carro no lava jato');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (20, STR_TO_DATE("22-08-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Futebol do trabalho'), 'fut com o pessoal');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (64.35, STR_TO_DATE("11-10-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Gasolina para trabalho'), '11 litros de gasolina');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (14.59, STR_TO_DATE("12-10-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'alimentação no Trabalho'), 'Marmitex da esquina');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (4.50, STR_TO_DATE("12-10-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'condução para o trabalho'), 'busão de ida');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (12, STR_TO_DATE("5-08-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Cozinha'), 'Guardanapo');

insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (31, STR_TO_DATE("05-02-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Cozinha'), 'Almoço de comingo');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (45, STR_TO_DATE("12-04-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'alimentação no Trabalho'), 'Almoço');

insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-10-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-09-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-08-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-07-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-06-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-05-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-04-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-03-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-02-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (1000, STR_TO_DATE("01-01-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Salário'), 'Remuneração trabalho');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (25, STR_TO_DATE("05-03-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Comissão'), 'Comissão trampo');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (5.56, STR_TO_DATE("12-08-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Comissão'), 'Comissão de uma venda');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (5.56, STR_TO_DATE("25-09-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Comissão'), 'Comissão prêmio');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (150.00, STR_TO_DATE("03-05-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Comissão'), 'comissao');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (50.99, STR_TO_DATE("01-10-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Comissão'), 'comissão presente');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (3500, STR_TO_DATE("12-03-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 1 and codigo_do_banco = 237), (select id_categoria from categorias where descricao = 'Cozinha'), 'Geladeira brastemp');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (2360, STR_TO_DATE("11-07-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 2 and codigo_do_banco = 222), (select id_categoria from categorias where descricao = 'Peça de computador'), 'Placa de vídeo top');
insert into movimentacao (valor, data_movimentacao, id_conta, id_categoria, descricao) values (5412.55, STR_TO_DATE("11-07-22","%d-%m-%y"), (select id_conta from conta_corrente where id_cliente = 5 and codigo_do_banco = 444), (select id_categoria from categorias where descricao = 'Reforma da casa'), 'Reformei o piso do banheiro');

select * from movimentacao;




