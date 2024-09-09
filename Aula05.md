# SQL 

- Drop: trabalha com a estrutura
- Delete: trabalha com os registros, as linhas

- CHECK -> é um tipo de constraint, que verifica se um valor inserido esta dentro de uma determinada 

- Uma chave estrangeira deve ter as mesmas características da chave primária que a original

- ctrl + enter -> executa os ultimos comandos

## Exemplo de eschema

```sql
create database db_venda_veiculo;
use db_venda_veiculo;

create table cliente
(
	id_cliente int unsigned not null auto_increment,
    cnh varchar(25) null,
    tipo_cliente varchar(45) not null
    check ( tipo_cliente in ('Física', 'Jurídica')),
    cartao varchar(16),
    primary key(id_cliente)
);

create table funcionario 
(
	id int unsigned not null auto_increment,
    nome_funcionario varchar(45) not null,
    salario double not null default '0',
    departamento_funcionario varchar(45),
    primary key(id)
);

create table veiculo_venda
(
	id_venda int  unsigned not null auto_increment,
    valor_venda double not null,
    data_venda date not null,
    cliente_id int unsigned not null,
    funcionario_id int unsigned not null,
    primary key(id_venda),
    constraint fk_cliente_id foreign key (cliente_id) references cliente(id_cliente),
    constraint fk_funcionario_id foreign key(funcionario_id) references funcionario(id)
);

create table veiculo 
(
	id_veiculo int unsigned not null auto_increment,
    placa_veiculo varchar(7) not null,
    marca_veiculo varchar(45) not null,
    modelo_veiculo varchar(45) not null,
    valor_veiculo double not null,
    ano_fab_veiculo int unsigned not null,
    venda_id int unsigned null,
    primary key(id_veiculo),
    constraint fk_veiculo_venda_id foreign key (venda_id) references veiculo_venda(id_venda)
);

# Inserindo dados na tabela cliente
insert into cliente (nome, cnh, tipo_cliente, cartao)
values 
	('Willia', '147852369', 'Física', '411111111111'),
    ('Empresa', '483290879', 'Jurídica', '522222222222'),
    ('Carlos', '589230433', 'Física', '63333333333'),
    ('Pedro', '389289341', 'Física', '788888888888');
    
select * from cliente;
```