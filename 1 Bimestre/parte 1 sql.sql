create database trabalho ;
use trabalho;
create table pessoal (
id_cliente INT not null,
mome varchar (100) not null,
endereco varchar (250) not null,
email varchar (100) not null,
celular bigint (15),
dt_nascimento date,
primary key (id_cliente)
);

create table produtos (
id_produto int not null,
nome varchar (100) not null,
preco decimal (10,2),
descricao text,
quantidade_estoque INT,
primary key (id_produto)
);

create table pedidos (
id_pedido int,
id_cliente int,
data_compra date,
valor_total decimal (10,2),
data_entrega date,
primary key (id_pedido),
foreign key (id_cliente) references pessoal(id_cliente)
);

create table itens_pedidos (
id_item_pedido int,
id_pedido int,
id_produto int,
quantidade int,
valor_unitario decimal (10,2),
valor_total decimal (10,2),
primary key (id_item_pedido),
foreign key (id_cliente) references pessoal(id_cliente),
foreign key (id_produto) references produtos(id_produto)
);