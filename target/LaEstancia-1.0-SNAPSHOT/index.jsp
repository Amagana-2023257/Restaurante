<%-- 
    Document   : index
    Created on : 24 jul. 2024, 23:24:41
    Author     : 50258
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%-- Aqui comienza la estructura de la Pagina esta es la parte 1/3 --%>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Opciones del Menú</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <div class="sidebar" id="sidebar">
            <div class="logo">
                <img src="assets/imagenes/logos/logo.png" alt="Logo">
            </div>
            <ul>

                <!-- Opcion donde llaman al diseño de Recepcion -->
                <li class="menu"><a href="#"><i class="fas fa-home"></i> Recepcion</a>
                    <ul class="submenu">
                        <!--  opcion1.jsp: se llamara a la vista de que se seleccione -->
                        <li><a href="recepcion.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                        <li><a href="opcion1.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                        <li><a href="opcion1.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="opcion1.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>

                <!-- Opcion donde llaman al diseño de Gerente -->
                <li class="menu"><a href="#"><i class="fas fa-user"></i> Gerente</a>
                    <ul class="submenu">
                        <!--  opcion2.jsp: se llamara a la vista de que se seleccione -->
                        <li><a href="gerente.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                        <li><a href="opcion2.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                        <li><a href="opcion2.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="opcion2.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>

                <!-- Opcion donde llaman al diseño de Cocina -->
                <li class="menu"><a href="#"><i class="fas fa-utensils"></i> Cocina</a>
                    <ul class="submenu">
                        <!-- se llamara a la vista de que se seleccione -->
                        <li><a href="listar-orden/lista-orden.jsp"><i class="fas fa-cog"></i>Ordenes</a></li>
                    </ul>
                </li>

                <!-- Opcion donde llaman al diseño de Mesero -->
                <li class="menu"><a href="#"><i class="fas fa-concierge-bell"></i> Mesero</a>
                    <ul class="submenu">

                        <!--  en mi diseño es que cuando precionen la opcion 
                        de mesero en Agregar se dirija una vista de un jsp llamada 
                        mesero.jsp esto lo puedo cambiar mediante la vista que quiero
                        para Mesero-->
                        <li><a href="mesero.jsp"><i class="fas fa-cog"></i> Nueva orden</a></li>
                        <li><a href="orden.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="carritoPrueva.jsp"><i class="fas fa-cog"></i> Cuenta</a></li>
                        <li><a href="opcion4.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>

                <!-- Opcion donde llaman al diseño de Opcion5 -->
                <li class="menu"><a href="#"><i class="fas fa-envelope"></i> Opcion5</a>
                    <ul class="submenu">
                        <!--  se llamara a la vista de que se seleccione -->
                        <li><a href="opcion5.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                        <li><a href="opcion5.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                        <li><a href="opcion5.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="opcion5.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>


                <!-- Opcion donde llaman al diseño de Opcion6 -->
                <li class="menu"><a href="#"><i class="fas fa-info-circle"></i> Opcion6</a>
                    <ul class="submenu">
                        <!--  se llamara a la vista de que se seleccione -->
                        <li><a href="opcion6.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                        <li><a href="opcion6.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                        <li><a href="opcion6.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="opcion6.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </body>
</html>
