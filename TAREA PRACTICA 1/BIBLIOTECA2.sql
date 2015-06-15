create database BIBLIOTECA2
go

use BIBLIOTECA2

create table cliente(
cod_cliente numeric (10,0) not null,
nom_cliente varchar (50) not null,
dpi_cliente varchar(30) not null,
dir_cliente varchar(50) not null,
tel_cliente numeric(10,0) not null,
constraint pk_cliente primary key clustered (cod_cliente asc)
)
create table libro(
cod_libro numeric (10,0) not null,
existencia int  not null,
paginas int not null,
tema varchar(30) not null,
cod_autor numeric(10,0) not null,
constraint pk_libro primary key clustered (cod_libro asc)
)
create table autor(
cod_autor numeric (10,0) not null,
nom_autor varchar(30) not null
constraint pk_autor primary key clustered (cod_autor asc)
)
create table prestamos(
cod_libro numeric(10,0) not null,
cod_cliente numeric(10,0) not null
constraint pk_prestamos primary key clustered (cod_libro,cod_cliente asc)

)

/*llaves foraneas  para las relaciones de las tablas*/

alter table dbo.libro add constraint fk_autor foreign key (cod_autor) references dbo.autor (cod_autor)
alter table dbo.prestamos add constraint fk_libro foreign key (cod_libro) references dbo.libro (cod_libro)
alter table dbo.prestamos add constraint fk_cliente foreign key (cod_cliente) references dbo.cliente (cod_cliente)

/*llenar la tabla  clientes*/
insert into dbo.cliente values (1001,'Eduardo Mengos',112233,'Guatemala',48484848);
insert into dbo.cliente values (1002,'Elisa Esquibel',223344,'Solola',49494949);
insert into dbo.cliente values (1003,'Rosa Duarte',334455,'Peten',50505050);
insert into dbo.cliente values (1004,'Leonel Messi',445566,'Guatemala',51515151);
insert into dbo.cliente values (1005,'Andres Iniesta',556677,'Sacatepequez',52525252);

select * from libro

/*llenar tabla de autores*/
insert into dbo.autor values (7001,'Robert Garrido');
insert into dbo.autor values (7002,'Marie Stevenson');
insert into dbo.autor values (7003,'Edison Hernandez');
insert into dbo.autor values (7004,'Marcelo Guerra');
insert into dbo.autor values (7005,'Matias Mazariegos');


/*procedimientos almacenados*/
create procedure mostrarLibros
as
begin
select * from libro
end

create procedure insertarCliente
@cod_cliente numeric(10,0),
@nom_cliente varchar(50),
@dpi_cliente varchar(30),
@dir_cliente varchar(50),
@tel_cliente numeric(10,0)
as
begin
insert into cliente(cod_cliente, nom_cliente, dpi_cliente,  dir_cliente, tel_cliente)
values(@cod_cliente,@nom_cliente,@dpi_cliente,@dir_cliente,@tel_cliente)
end

create procedure registrarLibro
@cod_libro numeric(10,0),
@existencia int,
@paginas int,
@tema varchar(30),
@cod_autor numeric(10,0)
as
begin
insert into libro(cod_libro,existencia,paginas,tema,cod_autor)
values(@cod_libro,@existencia,@paginas,@tema,@cod_autor)
end