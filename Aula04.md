# SGBD

MySQL -> é um sistema de gerenciamento de banco de dados           
SQL -> Linguagem

SGBDs conhecidos: MySQL e SQLserver

O sistema operacional faz gerenciamento de recursos: 
- memória;
- processamento;
- arquivo;
- fila de processos.

#### B tree ou árvore B -> é uma estrutura de dados em árvore, auto-balanceada, que armazena dados classificados.

# SQL
### Domínios

- Donínio -> são tipos de valores que podem ser assumidos em uma função.
- Domínio tipo primitivo -> tipos básicos de dados de uma linguagem;

*Linguagem fortemente tipada: linguagem em que todas as variáveis possuem tipo específico*

### Strings
- char: tamanho fixo
- varchar: tamanho variável

#### Documentação do SQL -> <https://dev.mysql.com/doc/>

### Sublinguagens do SQL
- DQL (Data Query Language)-> select                                          
  Se refere a comsulta de registros

- DML (Data Manipulation Language)-> insert, update, delete                                    
  Se refere a manipulação dos **registros**
 
- DDL (Data Dafinition Language) -> create, alter, drop;                                     
  Se refere a criação e manipulação das estruturas dos objets do banco de dados

- DCL (Data Control Language) -> grant, revoke                                  
  Se refere às permissões dos pbjetos no banco de dados

- TCL (Transaction Control Language) Language) -> begin transaction, commit, rollback, savepoint                               
Se refere ao controle de transações realizadas no banco de dados

*MySQL se refere ao banco de dados de "schema"*

#### primary key auto_increment -> gera automaticamente um numero único que identifica a tabela.

### Declarações

- *CREATE* - cria um objeto dentro do Sistema de Gerenciamento de Banco de Dados Relacional (SGBD);


- *Drop* - remove um banco de dados, tabela, índice ou visão existente;

- *Alter* - Modifica um objeto existente do banco de dados.      
    Depois de criar uma tabela, só é possível modificá-la através do alter(ou outros comandos de alteração);

### Contraints

- ADD CONSTRAINT -> Adiciona restrições.
*FOREIGHN KEY*

# SQL

``` SQL
create database vendas_veiculos;
use vendas_veiculos;

create table funcionarios 
(
	id int unsigned not null auto_increment,
    nome varchar(45),
    salario double not null default '0',
    departamento varchar(45) not null,
    primary key  (id)
);

/*---------------------------------------------------------------*/
```
