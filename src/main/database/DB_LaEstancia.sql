-- drop database db_laestancia;
create database DB_LaEstancia;
use DB_LaEstancia;

create table cliente(
	nit int not null,
    nombreCliente varchar(50) not null,
    apellidoCliente varchar(50) not null,
    direccionCliente varchar(50) not null,
    telefonoCliente varchar(10) not null,
    correoCliente varchar(50) not null,
    primary key PK_Cliente(nit)
);

create table mesa(
	codigoMesa int not null,
    numeroAsientos int not null,
    anchoMesa varchar(30) not null,
    largoMesa varchar(30) not null,
    ocupada varchar(5) not null,
    primary key PK_Mesa(codigoMesa)
);

create table producto(
	codigoProducto int not null,
    nombreProducto varchar(50) not null,
    ingredientes varchar(100) not null,
    precioProducto decimal(10, 2) not null,
    primary key PK_Producto(codigoProducto)
);

create table empleado(
	codigoEmpleado int not null,
    nombresEmpleado varchar (50),
    apellidosEmpleado varchar (50),
    puesto varchar (50),
    sueldo decimal (10, 2),
    turno varchar (15),
    primary key PK_Empleado(codigoEmpleado)
);

create table proveedor(
	nitProveedor int not null,
    nombreProveedor varchar(50),
    apellidoProveedor varchar(50),
    telefonoProveedor varchar(50),
    correoProveedor varchar(50),
    primary key PK_Proveedor(nitProveedor)
);

create table utencilio(
	codigoUtencilio int not null,
    nombreUtencilio varchar(50),
    material varchar(50),
    color varchar(50),
    primary key PK_Utencilio(codigoUtencilio)
);

create table orden(
	codigoOrden int not null,
    excepciones varchar(50) not null,
    codigoMesa int not null,
    codigoProducto int not null,
    codigoEmpleado int not null,
    primary key PK_Orden(codigoOrden),
    constraint FK_Mesa_codigoMesaOrden foreign key (codigoMesa)
		references Mesa (codigoMesa),
	constraint FK_Producto_codigoProductoOrden foreign key (codigoProducto)
		references Producto (codigoProducto),
	constraint FK_Empleado_codigoEmpleadoOrden foreign key (codigoEmpleado)
		references Empleado (codigoEmpleado)
);

create table factura(
	codigoFactura int not null,
    propina decimal (10, 2) not null,
    totalFactura decimal (10, 2),
    fechaFactura date,
    nit int not null,
    codigoEmpleado int not null,
    primary key PK_Factura(codigoFactura),
    constraint FK_Cliente_nitFactura foreign key (nit)
		references Cliente (nit),
	constraint FK_Empleado_codigoEmpleadoFactura foreign key (codigoEmpleado)
		references Empleado (codigoEmpleado)
);

create table DetalleFactura(
	codigoDetalleFactura int not null, 
    codigoFactura int not null,
    codigoOrden int not null, 
    primary key PK_DetalleFactura(codigoDetalleFactura),
    constraint FK_Factura_codigoFacturaDetalleF foreign key (codigoFactura)
		references Factura (codigoFactura),
	constraint FK_Orden_codigoOrdenDetalleF foreign key (codigoOrden)
		references Orden (codigoOrden)
);

-- ----------------- Procesos Almacenados -----------------------
-- --------------------------Cliente---------------------------------------------
-- --------------------- Agregar Clientes ---------------------------------------
Delimiter $$
	create procedure sp_agregarCliente (in nit int, in nombreCliente varchar(50), in apellidoCliente varchar(50),
										in direccionCliente varchar(50), in telefonoCliente varchar(10), in correoCliente varchar(50))
		begin 
			insert into Cliente (nit, nombreCliente, apellidoCliente, direccionCliente, telefonoCliente, correoCliente) 
            		values (nit, nombreCliente, apellidoCliente, direccionCliente, telefonoCliente, correoCliente);
	end $$
Delimiter ; 

call sp_agregarCliente(123456789, 'Bryan', 'Alvarez', 'Zona 18 paraiso II', '36101639', 'balvarez@gamil.com');
call sp_agregarCliente(987654321, 'Juan', 'Perez', 'Zona 18 Los Olivos', '59297849', 'juanPerez17@gamil.com');
call sp_agregarCliente(112233445, 'Helen', 'Reynoso', 'Zona 1 Gerona', '17289865', 'Hreynoso2005@gamil.com');
call sp_agregarCliente(556677880, 'Alex', 'Hernandez', 'Zona 17 Las Lomas', '58789456', 'Alexh2235@gamil.com');
call sp_agregarCliente(102938476, 'Steven', 'Montenegro', 'Cayala', '20350000', 'stevenmontenegro21@gamil.com');