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

-- ---------------------- Mesa -------------------------------------------------
-- ---------------------- Agregar Mesa ----------------------------------------- 
Delimiter $$
	create procedure sp_agregarMesa (in codigoMesa int, in numeroAsientos int, in anchoMesa varchar(50), in largoMesa varchar(50), in ocupada varchar(5))
		begin
			insert into Mesa (codigoMesa, numeroAsientos, anchoMesa, largoMesa, ocupada)
            values (codigoMesa, numeroAsientos, anchoMesa, largoMesa, ocupada);
	end $$
Delimiter ;

call sp_agregarMesa (3, 6, '2 mts', '3 mts', 'si');
call sp_agregarMesa (4, 2, '1.5 mts', '2 mts', 'no');
call sp_agregarMesa (5, 4, '2 mts', '2 mts', 'no');
call sp_agregarMesa (6, 6, '2 mts', '1.5 mts', 'si');
call sp_agregarMesa (7, 2, '1 mts', '1 mts', 'no');

-- --------------------------- Producto ------------------------------------------
-- ------------------------ Agregar Producto -------------------------------------
Delimiter $$
	create procedure sp_agregarProducto (in codigoProducto int, in nombreProducto varchar(50), in ingredientes varchar(100),
										in  precioProducto decimal(10,2))
		begin 
			insert into Producto (codigoProducto, nombreProducto, ingredientes, precioProducto) 
            		values (codigoProducto, nombreProducto, ingredientes, precioProducto);
	end $$
Delimiter ; 

call sp_agregarProducto(12347, 'Parrillada Mixta Estancia', 'Carne de res, pollo, chorizo, costillas de cerdo, cebollas, chimichurri', '195.00');
call sp_agregarProducto(98765, 'Ensalada Fresca del Huerto', 'Lechuga, espinaca, tomates cherry,pimientos, cebolla morada, aderezo de vinagreta', '66.00');
call sp_agregarProducto(56789, 'Bife de Chorizo a la Parrilla', 'Bife de chorizo, pimienta, aceite de oliva, hierbas frescas (romero, tomillo), chimichurri', '140.00');
call sp_agregarProducto(11223, 'Empanadas Criollas', 'Masa de empanada, carne molida, cebolla, pimientos, huevo duro, pimentón, sal, pimienta', '23.00');
call sp_agregarProducto(44556, 'Tarta de Manzana Casera', 'Masa de tarta, manzanas, azúcar, mantequilla, harina, jugo de limón, huevo(para dorar la masa)', '50.00');

-- ---------------------------------- Empleado --------------------------------------------
-- ---------------------------------- Agregar Empleado ------------------------------------
Delimiter $$
	create procedure sp_agregarEmpleado (in codigoEmpleado int, in nombresEmpleado varchar(50), in apellidosEmpleado varchar(50), 
    in puesto varchar(50), in sueldo decimal(10, 2), in turno varchar(15))
		begin
			insert into Empleado (codigoEmpleado, nombresEmpleado, apellidosEmpleado, puesto, sueldo, turno)
            values (codigoEmpleado, nombresEmpleado, apellidosEmpleado, puesto, sueldo, turno);
	end $$
Delimiter ;

call sp_agregarEmpleado (3, 'Cristian', 'De leon', 'Gerente', 2500.00, 'Nocturno');
call sp_agregarEmpleado (4, 'Maria', 'Sumale', 'Asistente', 1500.00, 'Nocturno');
call sp_agregarEmpleado (5, 'Carlos', 'Gutierrez', 'Asistente', 1500.00, 'Diurno');
call sp_agregarEmpleado (6, 'Luis', 'Hernandez', 'Cocinero', 2500.00, 'Diurno');
call sp_agregarEmpleado (7, 'Juan', 'Santos', 'Mesero', 4000.00, 'Nocturno');

-- ------------------ Proveedor ---------------------------------
-- ------------------ Agregar Proveedor -------------------------
Delimiter $$
	create procedure sp_agregarProveedor (in nitProveedor int, in nombreProveedor varchar(50), in apellidoProveedor varchar(50), 
    in telefonoProveedor varchar(50), in correoProveedor varchar(50))
		begin
			insert into Proveedor (nitProveedor, nombreProveedor, apellidoProveedor, telefonoProveedor, correoProveedor)
			values (nitProveedor, nombreProveedor, apellidoProveedor, telefonoProveedor, correoProveedor);
	end $$
Delimiter ;

call sp_agregarProveedor(123456789, 'Juan', 'Hernandez', '54546767', 'juan@gmail.com');
call sp_agregarProveedor(987654321, 'Jose', 'Romero', '78987890', 'jose@gmail.com');
call sp_agregarProveedor(555555555, 'Luis', 'Garcia', '77799999', 'luis@gmail.com');
call sp_agregarProveedor(999999999, 'Rodrigo', 'De Paul', '12223344', 'rodri@gmail.com');

-- ---------------------- Utencilio --------------------------------
-- ---------------------- Agregar Utencilio ------------------------
Delimiter $$
	create procedure sp_agregarUtencilio (in codigoUtencilio int, in nombreUtencilio varchar(50), in material varchar(50), in color varchar(50))
		begin
			insert into Utencilio (codigoUtencilio, nombreUtencilio, material, color)
            values (codigoUtencilio, nombreUtencilio, material, color);
	end $$
Delimiter ;

call sp_agregarUtencilio(1, 'Cuchara', 'Acero inoxidable', 'Plateado');
call sp_agregarUtencilio(2, 'Tenedor', 'Plástico', 'Blanco');
call sp_agregarUtencilio(3, 'Cuchillo', 'Acero', 'Negro');
call sp_agregarUtencilio(4, 'Espátula', 'Silicona', 'Rojo');
