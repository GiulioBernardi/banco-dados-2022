use controle_financeiro;

drop table movimentacao cascade;
drop table categorias;
drop table conta_corrente cascade;
drop table clientes cascade;
drop table enderecos cascade;



create table if not exists enderecos (
  id_endereco int auto_increment,
  cep varchar(8) null,
  rua varchar(45) not null,
  numero int not null,
  complemento varchar(45) null,
  bairro varchar(45) not null,
  cidade varchar(45) not null,
  estado varchar(45) not null,
  pais varchar(45) not null,
  primary key(id_endereco)
);


create table if not exists clientes (
  id_cliente int auto_increment,
  nome varchar(50) not null,
  cpf varchar(11) not null unique,
  email varchar(50) not null unique,
  senha varchar(45) not null,
  data_nascimento date null,
  profissao varchar(45) null,
  genero varchar(2) null,
  id_endereco int not null unique,
  primary key (id_cliente),
  foreign key (id_endereco) references enderecos (id_endereco)
);


create table if not exists conta_corrente (
  id_conta int auto_increment,
  codigo_do_banco int not null,
  numero int not null unique,
  agencia int not null,
  apelido varchar(45) not null,
  saldo decimal(10,2) null,
  id_cliente int not null,
  primary key (id_conta),
  foreign key (id_cliente) references clientes (id_cliente)
);


create table if not exists categorias (
  id_categoria int auto_increment,
  descricao varchar(100) not null unique,
  primary key (id_categoria)
);

create table if not exists movimentacao(
  id_movimentacao int auto_increment,
  valor decimal(10,2) not null,
  data_movimentacao DATE null,
  id_conta int not null,
  id_categoria int not null,
  primary key (id_movimentacao),
  foreign key (id_conta) references conta_corrente (id_conta),
  foreign key (id_categoria) references categorias (id_categoria)
);


ALTER TABLE enderecos AUTO_INCREMENT = 1;
ALTER TABLE clientes AUTO_INCREMENT = 1;
ALTER TABLE movimentacao AUTO_INCREMENT = 1;
ALTER TABLE conta_corrente AUTO_INCREMENT = 1;
ALTER TABLE categorias AUTO_INCREMENT = 1;