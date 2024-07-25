<%-- 
    Document   : lista-orden
    Created on : 25 jul. 2024, 00:41:38
    Author     : 50258
--%>

<%@page import="java.util.List"%>
<%@page import="org.javierapen.webapp.model.Orden"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cocina</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="styles.css">
        <style>
            body {
                display: flex;
            }
            .sidebar {
                flex: 0 0 250px;
                min-height: 100vh;
            }
            .content {
                flex: 1;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <div class="sidebar" id="sidebar">
            <div class="logo">
                <img src="assets/imagenes/Logos/logo.png" alt="Logo">
            </div>
            <ul>
                <li class="menu"><a href="#"><i class="fas fa-home"></i> Recepcion</a>
                    <ul class="submenu">
                        <li><a href="recepcion.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                        <li><a href="opcion1.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                        <li><a href="opcion1.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="opcion1.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>
                <li class="menu"><a href="#"><i class="fas fa-user"></i> Gerente</a>
                    <ul class="submenu">
                        <li><a href="gerente.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                        <li><a href="opcion2.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                        <li><a href="opcion2.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="opcion2.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>
                <li class="menu"><a href="#"><i class="fas fa-utensils"></i> Cocina</a>
                    <ul class="submenu">
                        <li><a href="listar-orden/lista-orden.jsp"><i class="fas fa-cog"></i> Ordenes</a></li>
                    </ul>
                </li>
                <li class="menu"><a href="#"><i class="fas fa-concierge-bell"></i> Mesero</a>
                    <ul class="submenu">
                        <li><a href="mesero.jsp"><i class="fas fa-cog"></i> Nueva orden</a></li>
                        <li><a href="orden.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="carritoPrueva.jsp"><i class="fas fa-cog"></i> Cuenta</a></li>
                        <li><a href="opcion4.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>
                <li class="menu"><a href="#"><i class="fas fa-envelope"></i> Opcion5</a>
                    <ul class="submenu">
                        <li><a href="opcion5.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                        <li><a href="opcion5.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                        <li><a href="opcion5.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="opcion5.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>
                <li class="menu"><a href="#"><i class="fas fa-info-circle"></i> Opcion6</a>
                    <ul class="submenu">
                        <li><a href="opcion6.jsp"><i class="fas fa-cog"></i> Agregar</a></li>
                        <li><a href="opcion6.jsp"><i class="fas fa-cog"></i> Eliminar</a></li>
                        <li><a href="opcion6.jsp"><i class="fas fa-cog"></i> Editar</a></li>
                        <li><a href="opcion6.jsp"><i class="fas fa-cog"></i> Actualizar</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="container mt-5">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Excepciones Orden</th>
                        <th scope="col">Mesa</th>
                        <th scope="col">Producto</th>
                        <th scope="col">Empleado</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="orden" items="${orden}" >
                    <tr>
                        <td>${orden.codigoOrden}</td>
                        <td>${orden.excepciones}</td>
                        <td>${orden.codigoMesa}</td>
                        <td>${orden.codigoProducto}</td>
                        <td>${orden.codigoEmpleado}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
