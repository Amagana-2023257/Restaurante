<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--  estas lineas de codigo reutilizan el codigo de header luego la de bodyInicio,
y cierra con bodiFinal-->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
  <head>
    <!-- Se incluye Boostrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /*Estos son los estilos que se les aplicaran a las tablas para adaptarlas a la pantalla*/
        /*Estos estilos son para la posicion de las tablas*/
        .custom-position {
            position: absolute;
            top: 50px; /* Ubicaion Vertical*/
            left: 300px; /* Ubicacion Horizontal */
        }
        
        .custom-position2 {
            position: absolute;
            top: 400px; /* Ubicaion Vertical*/
            left: 300px;  /* Ubicacion Horizontal */
        }
        
        .custom-position3 {
            position: absolute;
            top: 800px; /* Ubicaion Vertical*/
            left: 300px;  /* Ubicacion Horizontal */
        }
        
        /*Este estilo es para modificar el tamaño de las tablas*/
        .custom-zice {
            width: 700px; /*Ancho*/
            height: 800px; /*Largo*/
            
        }
        
    </style>
</head>
<body>
    <div class="sidebar" id="sidebar">
        <div class="logo">
            <img src="assets/imagenes/Logos/logo.png" alt="Logo">
        </div>
        <ul>
            <!-- Opcion para desplrgar el Submenu -->
            <li class="menu"><a href="#"><i class="fas fa-user"></i> Gerente</a>
                <p class="text-center">Mesas-Meseros</p>
                <!-- Se despliega el Submenu con las demas opciondes del Gerente-->
                <ul class="submenu">
                    <!-- Opcion donde llaman los demas diseños de Gerente -->
                    <li><a href="agregar.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                    <li><a href="eliminar.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                    <li><a href="editar.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                    <li><a href="actualizar.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    <!-- Opcion para Regresar al la pagina principal -->
                    <li><a href="index.jsp"><i class="fas fa-home"></i> Inicio</a></li>
                </ul>
            </li>
        </ul>
    </div>
            <!--  Se crea y se le asigna la posicion de la tabla y se le 
            implementa un scroll para desplazar verticalmente la tabla -->
            <div class="table-responsive custom-position" style="width: 800px; max-height: 300px; overflow-y: scroll;">
                <!--  Se modifica el tamaño de la tabla -->
                <div class="custom-zice">
                    <!--  Se le asigna el tipo de tabla y se le da diseño a los bordes de la tabla -->
                   <table class="table table-striped table-bordered border-success">
                       <!-- Se le da un titulo a la tabla -->
                       <h2 class="modal-title">Meseros-Mesas</h2>
                       <!-- Se le da estilo a la tabla -->
                       <thead class="table-dark">
                           <!-- Se le dan titulos a las columnas para que el 
                                usuario pueda identificar que dato es el que 
                                mostrara la tabla -->
                                 <tr>
                                 <th scope="col">ID</th>
                                 <th scope="col">Nombre    </th>
                                 <th scope="col">Apellido  </th>
                                 <th scope="col">Mesas   </th>
                               </tr>

                       </thead>
                       <tbody>
                        <!-- Datos que se mostraran en la tabla -->
                         <tr>
                           <td>1</td>
                           <td>Lara</td>
                           <td>Smith</td>
                           <td>15-17</td>
                         </tr>
                         <tr>
                           <td>2</td>
                           <td>Ethan </td>
                           <td>Johnson</td>
                           <td>11-13</td>
                         </tr>
                         <tr>
                           <td>3</td>
                           <td>Sophia</td>
                           <td>Brown</td>
                           <td>8-10</td>
                         </tr>
                         <tr>
                           <td>4</td>
                           <td>Mason</td>
                           <td>Davis</td>
                           <td>5-7</td>
                         </tr>
                       </tbody>
                   </table>
               </div>
            </div>
            
        <!--  Se crea y se le asigna la posicion de la tabla y se le 
        implementa un scroll para desplazar verticalmente la tabla -->        
        <div class="table-responsive custom-position2" style="width: 800px; max-height: 300px; overflow-y: scroll;">
            <!--  Se modifica el tamaño de la tabla -->
            <div class="custom-zice">
                <!--  Se le da diseño a los bordes de la tabla -->
                <table class="table table-striped table-bordered border-success">
                    <!-- Se le da un titulo a la tabla -->
                    <h2 class="modal-title">Mesas-Estado</h2>
                    <!-- Se le da estilo a la tabla -->
                    <thead class="table-dark">
                            <!-- Se le dan titulos a las columnas para que el 
                                usuario pueda identificar que dato es el que 
                                mostrara la tabla -->
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">Cantidad de personas</th>
                              <th scope="col">Estado</th>
                              <th scope="col">Espacio</th>
                            </tr>

                    </thead>
                    <tbody>
                      <!-- Datos que se mostraran en la tabla -->
                      <tr>
                        <th scope="row">1</th>
                        <td>4</td>
                        <td>Libre</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>4</td>
                        <td>Libre</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>8</td>
                        <td>Libre</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                        <td>8</td>
                        <td>Libre</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">5</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">6</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">7</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">8</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">9</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">10</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">11</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">12</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">13</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">14</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">15</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">16</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">17</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">18</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Dentro</td>
                      </tr>
                      <tr>
                        <th scope="row">19</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Fuera</td>
                      </tr>
                      <tr>
                        <th scope="row">20</th>
                        <td>8</td>
                        <td>Ocupada</td>
                        <td>Fuera</td>
                      </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!--  Se crea y se le asigna la posicion de la tabla y se le 
        implementa un scroll para desplazar verticalmente la tabla -->
        <div class="table-responsive custom-position3" style="width: 800px; max-height: 300px; overflow-y: scroll;">
            <!--  Se modifica el tamaño de la tabla -->
            <div class="custom-zice">
                <!--  Se le da diseño a los bordes de la tabla -->
                <table class="table table-striped table-bordered border-success">
                    <!-- Se le da un titulo a la tabla -->
                    <h2 class="modal-title">Pedidos-Mesas</h2>                    
                    <!-- Se le da estilo a la tabla -->
                    <thead class="table-dark">
                            <tr>
                              <!-- Se le dan titulos a las columnas para que el 
                                usuario pueda identificar que dato es el que 
                                mostrara la tabla -->
                              <th scope="col">Pedido</th>
                              <th scope="col">No. de Mesa</th>
                            </tr>

                    </thead>
                    <tbody>
                      <!-- Datos que se mostraran en la tabla -->
                      <tr>
                        <td>Pedido1</td>
                        <td>#1</td>                      
                      </tr>
                      <tr>
                        <td>Pedido2</td>
                        <td>#2</td>
                      </tr>
                      <tr>
                        <td>Pedido3</td>
                        <td>#3</td>
                      </tr>
                      <tr>
                        <td>Pedido4</td>
                        <td>#4</td>
                      </tr>
                      <tr>
                        <td>Pedido5</td>
                        <td>#5</td>
                      </tr>
                      <tr>
                        <td>Pedido6</td>
                        <td>#6</td>
                      </tr>
                      <tr>
                        <td>Pedido7</td>
                        <td>#7</td>
                      </tr>
                      <tr>
                        <td>Pedido8</td>
                        <td>#8</td>
                      </tr>
                      <tr>
                        <td>Pedido9</td>
                        <td>#9</td>
                      </tr>
                      <tr>
                        <td>Pedido10</td>
                        <td>#10</td>
                      </tr>
                      <tr>
                        <td>Pedido11</td>
                        <td>#11</td>
                      </tr>
                      <tr>
                        <td>Pedido12</td>
                        <td>#12</td>
                      </tr>
                      <tr>
                        <td>Pedido13</td>
                        <td>#13</td>
                      </tr>
                      <tr>
                        <td>Pedido14</td>
                        <td>#14</td>
                      </tr>
                      <tr>
                        <td>Pedido15</td>
                        <td>#15</td>
                      </tr>
                      <tr>
                        <td>Pedido16</td>
                        <td>#16</td>
                      </tr>
                      <tr>
                        <td>Pedido17</td>
                        <td>#17</td>                        
                      </tr>
                      <tr>
                        <td>Pedido18</td>
                        <td>#18</td>
                      </tr>
                      <tr>
                        <td>Pedido19</td>
                        <td>#19</td>
                      </tr>
                      <tr>
                        <td>Pedido20</td>
                        <td>#20</td>
                      </tr>
                    </tbody>
                </table>
            </div>
        </div>
<%@ include file="componentes/bodyFinal.jsp"%>

