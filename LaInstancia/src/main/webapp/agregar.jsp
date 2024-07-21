
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
<head>
    <!-- Asegúrate de incluir Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /*Estos son los estilos que se les aplicaran a las tablas para adaptarlas a la pantalla*/
        /*Estos estilos son para la posicion de las tablas*/
        .custom-position {
            position: absolute;
            top: 50px; /* Ajusta este valor según sea necesario */
            left: 300px; /* Ajusta este valor según sea necesario */
        }
        
        .custom-position2 {
            position: absolute;
            top: 50px; /* Ajusta este valor según sea necesario */
            left: 1130px; /* Ajusta este valor según sea necesario */
        }
        
        /*Este estilo es para modificar el tamaño de las tablas*/
        .custom-zice {
            width: 700px; 
            height: 800px; 
            
        }
        
        .custom-zice2 {
            width: 400px; 
            height: 400px; 
            
        }
    </style>
</head>
<body>
    <div class="sidebar" id="sidebar">
        <div class="logo">
            <img src="assets/imagenes/Logos/logo.png" alt="Logo">
        </div>
        <ul>
            <!-- Opcion donde llaman al diseño de Gerente -->
            <li class="menu"><a href="#"><i class="fas fa-user"></i>Gerente</a>
                <p class="text-center">Agregar</p>
                <ul class="submenu">
                    <li><a href="gerente.jsp"><i class="fas fa-cog"></i>Orden</a></li>
                    <li><a href="eliminar.jsp"><i class="fas fa-cog"></i>Eliminar</a></li>
                    <li><a href="editar.jsp"><i class="fas fa-cog"></i>Editar</a></li>
                    <li><a href="actualizar.jsp"><i class="fas fa-cog"></i>Actualizar</a></li>
                    <li><a href="index.jsp"><i class="fas fa-home"></i>Inicio</a></li>
                </ul>
            </li>
        </ul>
    </div>

    
        
        <div class="table-responsive custom-position" style="width: 800px; max-height: 300px; overflow-y: scroll;">
            <div class="custom-zice">
                <h4>Gerentes</h4>
                <table class="table table-striped">
                    <thead class="table-dark">
                            <tr>
                                <th>ID</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Puesto</th>
                            </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Carlos</td>
                            <td>Martínez</td>
                            <td>Gerente General</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>María</td>
                            <td>López</td>
                            <td>Gerente de Cocina</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Carlos</td>
                            <td>Martínez</td>
                            <td>Gerente General</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>María</td>
                            <td>López</td>
                            <td>Gerente de Cocina</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Carlos</td>
                            <td>Martínez</td>
                            <td>Gerente General</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>María</td>
                            <td>López</td>
                            <td>Gerente de Cocina</td>
                        </tr>
                    </tbody>
                </table>
            </div> 
        </div>
            
            <div class="Container mt-5">
                <div class="custom-position2">
                    <div class="custom-zice2">                    
                        <div class="card">
                            <div class="card-body">
                                <h2 class="card-title">Agregar Nuevo Gerente</h2>
                                <form>
                                    <div class="form-group">
                                        <label for="nameInput">ID</label>
                                        <input type="text" class="form-control" id="nameInput" placeholder="Ingresar ID">
                                    </div>
                                    <div class="form-group">
                                        <label for="nameInput">Nombres</label>
                                        <input type="text" class="form-control" id="nameInput" placeholder="Ingresar nombres">
                                    </div>
                                    <div class="form-group">
                                        <label for="timeInput">Apellidos</label>
                                        <input type="text" class="form-control" id="nameInput" placeholder="Ingresar Apellidos">
                                    </div>
                                    <div class="form-group">
                                        <label for="dateInput">Puesto</label>
                                        <input type="text" class="form-control" id="nameInput" placeholder="Ingresar Puesto">
                                    </div>
                                    <button type="submit" class="btn btn-success btn-block">Agregar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
            
<%@ include file="componentes/bodyFinal.jsp"%>
