create database ProyectoFase2
go
use ProyectoFase2
--creacion de tablas sistema quetzal express
create table empleado(
cod_empleado char(5) not null,
nom_empleado varchar(30) not null,
puesto_empleado varchar(30) not null,
apell_empleado varchar(30)not null,
tel_empleado numeric(15,0)not null,
sueldo_empleado int not null,
dir_empleado varchar(50)not null,
)
create table departamento(
cod_departamento char(5) not null,
nom_departamento varchar(30) not null,
desc_departamento varchar(50) null,
nom_director varchar(30) not null,
apell_director varchar(30)not null
)
create table sede(
cod_sede char(5) not null,
dir_sede varchar(50) not null,
pais_sede varchar(50) not null
)
create table sucursal(
cod_sucursal char(5) not null,
pais_sucursal varchar(30) not null,
dir_sucursal varchar(50) not null,
tel_sucursal numeric(15,0) not null,
cant_empl_sucursal int not null
)
create table cliente(
cod_cliente char(5) not null,
DPI_cliente varchar(30)not null,
NIT_cliente varchar(30)not null,
nom_cliente varchar(30)not null,
apell_cliente varchar(30)not null,
tel_cliente numeric(15,0)not null,
dir_cliente varchar(50)not null,
)
create table tarjeta(
cod_tarjeta char(16)not null,
tipo_tajeta varchar(30) not null,
)
create table impuesto(
cod_impuesto char(5) not null,
tipo_impuesto varchar(30) not null,
porcentaje_impuesto int not null,
descripcion_impuesto varchar(30) null
)

create table factura(
cod_factura char(5) not null,
nom_empresa varchar(30) not null,
serie_factura varchar(20) not null,
monto int not null
)
create table detalle(
cod_detalle char(5) not null
)
create table producto(
cod_producto char(5) not null,
nom_producto varchar(30) not null,
desc_producto varchar(30) null,
precio_producto numeric(7,2) not null,
peso_producto numeric(5,2) not null
)

create table paquete(
cod_paquete char(5) not null
)

create table lote(
cod_lote char(5) not null,
fecha_envio datetime not null
)
create table estado_paquete(
cod_estado char(5) not null,
estado varchar(30) not null,
fecha datetime not null
)
create table bodega(
cod_bodega char(5) not null
)

