<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--  estas lineas de codigo reutilizan el codigo de header luego la de bodyInicio,
y cierra con bodiFinal-->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
<head>
    <!-- Se incluye Boostrap css -->    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /*Estos son los estilos que se les aplicaran a las tablas para adaptarlas a la pantalla*/
        /*Estos estilos son para la posicion de las tablas*/
        .custom-position {
            position: absolute;
            top: 150px; /* Ubicaion Vertical*/
            left: 300px; /* Ubicacion Horizontal */
        }
        
        .custom-position1 {
            position: absolute;
            top: 50px; /* Ubicaion Vertical*/
            left: 300px; /* Ubicacion Horizontal */
        }
        
        .custom-position2 {
            position: absolute;
            top: 40px; /* Ubicaion Vertical*/
            left: 1140px; /* Ubicacion Horizontal */
        }
        
        /*Este estilo es para modificar el tamaño de las tablas*/
        .custom-zice {
            width: 900px; /*Ancho*/
            height: 500px; /*Largo*/
            
        }
        
        .custom-zice2 {
            width: 400px; /*Ancho*/
            height: 400px; /*Largo*/
            
        }
    </style>
</head>
<body>
    <div class="sidebar" id="sidebar">
        <div class="logo">
            <img src="assets/imagenes/Logos/logo.png" alt="Logo">
        </div>
        <ul>
            <!-- Opcion para desplegar el Submenu -->
            <li class="menu"><a href="#"><i class="fas fa-user"></i> Gerente</a>
                <p class="text-center">Editar</p>
                <!-- Se despliega el Submenu con las demas opciondes del Gerente-->
                <ul class="submenu">
                    <!-- Opcion donde llaman los demas diseños de Gerente -->
                    <li><a href="gerente.jsp"><i class="fas fa-cog"></i>Mesas-Meseros</a></li>
                    <li><a href="agregar.jsp"><i class="fas fa-cog"></i>Agregar</a></li>
                    <li><a href="eliminar.jsp"><i class="fas fa-cog"></i>Eliminar</a></li>
                    <li><a href="actualizar.jsp"><i class="fas fa-cog"></i>Actualizar</a></li>
                    <!-- Opcion para Regresar al la pagina principal -->
                    <li><a href="index.jsp"><i class="fas fa-home"></i>Inicio</a></li>
                </ul>
            </li>
        </ul>
    </div>
    
        <!-- Se le agrega un titulo a la Vista -->
        <div class="custom-position1" >
            <h1 class="modal-title">Editar Gerentes</h1>
        </div>
    
            <!--  Se crea y se le asigna la posicion de la tabla y se le 
                implementa un scroll para desplazar verticalmente la tabla -->
            <div class="table-responsive custom-position" style="width: 800px; max-height: 300px; overflow-y: scroll;">
                <!--  Se modifica el tamaño de la tabla -->    
                <div class="custom-zice">
                    <!--  Se le asigna el tipo de tabla -->
                    <table class="table table-hover">
                        <!-- Se le da un titulo a la tabla -->
                        <h2 class="modal-title">Gerentes</h2>
                        <!-- Se le da estilo a la tabla -->
                        <thead class="table-dark">
                                <tr>
                                    <!-- Se le dan titulos a las columnas para que el 
                                    usuario pueda identificar que dato es el que 
                                    mostrara la tabla -->
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombres</th>
                                    <th scope="col">Apellidos</th>
                                    <th scope="col">Correo</th>
                                    <th scope="col">Numero</th>
                                    <th scope="col">Direccion</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Sueldo</th>
                                </tr>

                        </thead>
                        <tbody>                            
                                <!-- Datos que se mostraran en la tabla -->
                            <tr>
                                <td>1</td>
                                <td>Carlos</td>
                                <td>Martínez</td>
                                <td>cmartinez@gmail.com</td>
                                <td>12345678</td>
                                <td>Avenida Las Américas 123, Zona 13, Ciudad de Guatemala</td>
                                <td>Activo</td>
                                <td>20,000</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>María</td>
                                <td>López</td>
                                <td>mlopez@gmail.com</td>
                                <td>12345678</td>
                                <td>Calle Real 456, Zona 1, Antigua Guatemala</td>
                                <td>Activo</td>
                                <td>21,000</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Carlos</td>
                                <td>Martínez</td>
                                <td>cmartinez@gmail.com</td>
                                <td>12345678</td>
                                <td>Boulevard Los Próceres 789, Zona 10, Ciudad de Guatemala</td>
                                <td>Inactivo</td>
                                <td>22,000</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>María</td>
                                <td>López</td>
                                <td>cmartinez@gmail.com</td>
                                <td>12345678</td>
                                <td>Avenida Reforma 101, Zona 9, Ciudad de Guatemala</td>
                                <td>Activo</td>
                                <td>20,000</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Carlos</td>
                                <td>Martínez</td>
                                <td>cmartinez@gmail.com</td>
                                <td>12345678</td>
                                <td>Calle del Arco 202, Zona 2, Quetzaltenango</td>
                                <td>Inactivo</td>
                                <td>18,000</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>María</td>
                                <td>López</td>
                                <td>mlopez@gmail.com</td>
                                <td>12345678</td>
                                <td>Avenida Petapa 303, Zona 12, Ciudad de Guatemala</td>
                                <td>Activo</td>
                                <td>19,000</td>
                            </tr>
                        </tbody>
                    </table>
                </div> 
            </div>
            
            <!-- Posicion de la Tarjeta donde se Ingresan los datos del gerente a Agregar -->
            <div class="custom-position2">
                <!-- Tamaño de la Tarjeta -->
                <div class="custom-zice2">
                    <!-- Creacion de la Tarjeta -->
                    <div class="card">
                        <!-- Contenido del cuerpo de la Tarjeta -->
                        <div class="card-body">
                            <!-- Titulo de la Tarjeta -->
                            <h5 class="card-title">Editar Gerente</h5>
                            <form>
                                <!-- Se crea un espacio para ingresar los datos -->
                                <div class="form-group">
                                    <!-- Titulo para el dato a ingresar -->
                                    <label for="nameInput">Nombres</label>
                                    <!-- Se crea el espacio para ingresar el 
                                        texto con un texto de fondo indicando el 
                                        dato a ingresar -->
                                    <input type="text" class="form-control" id="nameInput" placeholder="Ingresar Nuevos Nombres">
                                </div>
                                
                                
                                <div class="form-group">
                                    <!-- Titulo para el dato a ingresar -->
                                    <label for="timeInput">Apellidos</label>
                                    <!-- Se crea el espacio para ingresar el 
                                        texto con un texto de fondo indicando el 
                                        dato a ingresar -->
                                    <input type="text" class="form-control" id="nameInput" placeholder="Ingresar Nuevos Apellidos">
                                </div>
                                
                                
                                <div class="form-group">
                                    <!-- Titulo para el dato a ingresar -->
                                    <label for="dateInput">Puesto</label>
                                    <!-- Se crea el espacio para ingresar el 
                                        texto con un texto de fondo indicando el 
                                        dato a ingresar -->
                                    <input type="text" class="form-control" id="nameInput" placeholder="Ingresar Nuevo Puesto">
                                </div>
                                <!-- Se crea un boton y se le da el estilo 
                                    de color amarillo para agregar los datos ingresados -->
                                <button type="submit" class="btn btn-warning btn-block">Editar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
<%@ include file="componentes/bodyFinal.jsp"%>
