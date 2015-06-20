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
cod_departamento char(5) not null
)
create table departamento(
cod_departamento char(5) not null,
nom_departamento varchar(30) not null,
desc_departamento varchar(50) null,
nom_director varchar(30) not null,
apell_director varchar(30)not null,
cod_sucursal char(5) not null

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
cant_empl_sucursal int not null,
cod_sede char(5) not null
)
create table cliente(
cod_cliente char(5) not null,
DPI_cliente varchar(30)not null,
NIT_cliente varchar(30)not null,
nom_cliente varchar(30)not null,
apell_cliente varchar(30)not null,
tel_cliente numeric(15,0)not null,
dir_cliente varchar(50)not null

)
create table tarjeta(
cod_tarjeta char(16)not null,
tipo_tajeta varchar(30) not null,
cod_cliente char(5) not null
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
monto int not null,
cod_cliente char(5) not null,
cod_empleado char(5) not null,
cod_detalle char(5) not null
)
create table detalle(
cod_detalle char(5) not null,
cod_producto char(5) not null
)
create table producto(
cod_producto char(5) not null,
nom_producto varchar(30) not null,
desc_producto varchar(30) null,
precio_producto numeric(7,2) not null,
peso_producto numeric(5,2) not null,
cod_paquete char(5) not null,
cod_impuesto char(5) not null
)

create table paquete(
cod_paquete char(5) not null,
cod_lote char(5) not null,
cod_cliente char(5) not null,
cod_empleado char(5) not null
)

create table lote(
cod_lote char(5) not null,
fecha_envio datetime not null,
cod_bodega char(5) not null
)
create table estado_paquete(
cod_estado char(5) not null,
estado varchar(30) not null,
fecha datetime not null,
cod_paquete char(5) not null
)
create table bodega(
cod_bodega char(5) not null

)
--restricciones de llaves primarias
alter table dbo.empleado add constraint pk_empleado primary key clustered (cod_empleado asc)
alter table dbo.departamento add constraint pk_departamento primary key clustered (cod_departamento asc)
alter table dbo.sede add constraint pk_sede primary key clustered(cod_sede asc)
alter table dbo.sucursal add constraint pk_sucursal primary key clustered(cod_sucursal asc)
alter table dbo.cliente add constraint pk_cliente primary key clustered(cod_cliente asc)
alter table dbo.tarjeta add constraint pk_tarjeta primary key clustered(cod_tarjeta asc)
alter table dbo.impuesto add constraint pk_impuesto primary key clustered(cod_impuesto asc)
alter table dbo.factura add constraint pk_factura primary key clustered(cod_factura asc)
alter table dbo.detalle add constraint pk_detalle primary key clustered(cod_detalle asc)
alter table dbo.producto add constraint pk_producto primary key clustered(cod_producto asc)
alter table dbo.paquete add constraint pk_paquete primary key clustered(cod_paquete asc)
alter table dbo.lote add constraint pk_lote primary key clustered (cod_lote asc)
alter table dbo.estado_paquete add constraint pk_estado primary key clustered(cod_estado asc)
alter table dbo.bodega add constraint pk_bodega primary key clustered(cod_bodega asc)

--restricciones de llaves foraneas
alter table dbo.empleado add constraint fk_departamento foreign key (cod_departamento) references dbo.departamento(cod_departamento)
alter table dbo.departamento add constraint fk_sucursal foreign key (cod_sucursal) references dbo.sucursal (cod_sucursal)
alter table dbo.sucursal add constraint fk_sede foreign key (cod_sede) references dbo.sede (cod_sede)
alter table dbo.tarjeta add constraint fk_cliente_tar foreign key (cod_cliente) references dbo.cliente(cod_cliente)
alter table dbo.factura add constraint fk_cliente_fac foreign key (cod_cliente) references dbo.cliente(cod_cliente)
alter table dbo.factura add constraint fk_empleado_fac foreign key (cod_empleado) references dbo.empleado(cod_empleado)
alter table dbo.factura add constraint fk_detalle_fac foreign key (cod_detalle) references dbo.detalle(cod_detalle)
alter table dbo.detalle add constraint fk_producto_det foreign key (cod_producto) references dbo.producto(cod_producto)

alter table dbo.producto add constraint fk_paquete_prod foreign key (cod_paquete) references dbo.paquete(cod_paquete)
alter table dbo.producto add constraint fk_impuesto_prod foreign key (cod_impuesto) references dbo.impuesto(cod_impuesto)
alter table dbo.paquete add constraint fk_lote_paq foreign key (cod_lote) references dbo.lote(cod_lote)
alter table dbo.paquete add constraint fk_cliente_paq foreign key (cod_cliente) references dbo.cliente(cod_cliente)
alter table dbo.paquete add constraint fk_empleado_paq foreign key (cod_empleado) references dbo.empleado(cod_empleado)

alter table dbo.lote add constraint fk_bodega_lot foreign key (cod_bodega) references dbo.bodega(cod_bodega)
alter table dbo.estado_paquete add constraint fk_paquete_estado foreign key (cod_paquete) references dbo.paquete(cod_paquete)
