

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- En esta parte es lo que muestra la pantalla como la barra de navegacion,
     tambien es la parte 2/3
--%>
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
                    <li><a href="agregar-.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                    <li><a href="opcion3.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                    <li><a href="opcion3.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                    <li><a href="opcion3.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
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
    
    