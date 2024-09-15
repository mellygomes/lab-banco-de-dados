create database db_venda_veiculo_exercicio;
use db_venda_veiculo_exercicio;

create table cliente ( 
	id_cliente int auto_increment primary key,
    nome_cliente varchar(45) not null,
    cnh_cliente varchar(25),
    tipo_cliente varchar(15) not null, check (tipo_cliente = 'Física' or 'Jurídica'),
    cartao_cliente varchar(16)
);

create table funcionario (
	id_funcionario int auto_increment primary key,
    nome_funcionario varchar(45) not null,
    salario_funcionario double default(0) not null,
    depart_funcionario varchar(45) not null
);

create table veiculo_venda (
	id_venda int auto_increment primary key,
    valor_venda double not null,
    data_venda date not null,
	id_cliente int not null,
    id_funcionario int not null,
    constraint fk_id_cliente foreign key (id_cliente) references cliente(id_cliente),
    constraint fk_id_funcionario foreign key (id_funcionario) references funcionario(id_funcionario)
);

create table veiculo (
	id_veiculo int auto_increment not null primary key,
    marca_veiculo varchar(30) not null,
    placa_veiculo varchar(10) not null unique,
    valor_veiculo double not null,
    modelo_veicul varchar(30) not null,
    ano_veiculo int not null,
    venda_id int,
    constraint fk_venda_id foreign key (venda_id) references veiculo_venda(id_venda)
);

insert into cliente(nome_cliente, cnh_cliente, tipo_cliente, cartao_cliente)
values ('José', '100', 'Física', '01');

insert into cliente(nome_cliente, cnh_cliente, tipo_cliente, cartao_cliente)
values ('Maria', '101', 'Física', '02');

ALTER TABLE cliente
ADD CONSTRAINT chk_tipo_cliente_and CHECK (tipo_cliente = 'Física' and 'Jurídica');

alter table cliente
drop check chk_tipo_ciente;

insert into cliente(nome_cliente, cnh_cliente, tipo_cliente, cartao_cliente)
values ('Brasil LTDA', '103', 'Física', '03');

insert into cliente(nome_cliente, cnh_cliente, tipo_cliente, cartao_cliente)
values ('Paulo', '104', 'Física', '04');

insert into cliente(nome_cliente, cnh_cliente, tipo_cliente, cartao_cliente)
values ('Lucia', '105', 'Física', '05');

select * from cliente;

insert into funcionario(nome_funcionario, salario_funcionario, depart_funcionario)
values ('Carlos', '1500', 'A');

insert into funcionario(nome_funcionario, salario_funcionario, depart_funcionario)
values ('Ezequiel', '1600', 'B');

insert into funcionario(nome_funcionario, salario_funcionario, depart_funcionario)
values ('Andreza', '5500', 'C');

insert into funcionario(nome_funcionario, salario_funcionario, depart_funcionario)
values ('Vitor', '700', 'B');

insert into funcionario(nome_funcionario, salario_funcionario, depart_funcionario)
values ('Ana', '1500', 'A');

select * from funcionario;

alter table veiculo
change column modelo_veicul modelo_veiculo varchar(30) not null;

insert into veiculo(marca_veiculo, placa_veiculo, valor_veiculo, modelo_veiculo, ano_veiculo)
values ('Honda', 'QWE123', 60000, 'Civic', '2016');

insert into veiculo(marca_veiculo, placa_veiculo, valor_veiculo, modelo_veiculo, ano_veiculo)
values ('Fiat', 'ASD456', 85700, 'Argo', '2016');

insert into veiculo(marca_veiculo, placa_veiculo, valor_veiculo, modelo_veiculo, ano_veiculo)
values ('Hyundai', 'ZXC678', 88900, 'HB20', '2020');

insert into veiculo_venda(valor_venda, data_venda, id_cliente, id_funcionario)
values ('90000', '2020-07-24', 03, 01);

insert into veiculo_venda(valor_venda, data_venda, id_cliente, id_funcionario)
values ('87000', '2019-08-03', 05, 05);

insert into veiculo_venda(valor_venda, data_venda, id_cliente, id_funcionario)
values ('100000', '2020-12-16', 02, 04);

select * from veiculo_venda;

update veiculo set venda_id = 01 where id_veiculo = 03;

select * from veiculo;

select * from veiculo_venda where data_venda between '2019-01-01' and '2019-12-31';