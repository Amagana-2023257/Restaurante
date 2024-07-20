<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>

<h1>Editar Cocina (Orden)</h1>

<form action="editarOrdenServlet" method="post">
    <input type="hidden" id="codigoOrden" name="codigoOrden" value="${orden.codigoOrden}">
    <label for="excepciones">Excepciones:</label>
    <input type="text" id="excepciones" name="excepciones" value="${orden.excepciones}" required><br>
    <label for="codigoMesa">Código de Mesa:</label>
    <input type="text" id="codigoMesa" name="codigoMesa" value="${orden.codigoMesa}" required><br>
    <label for="codigoProducto">Código de Producto:</label>
    <input type="text" id="codigoProducto" name="codigoProducto" value="${orden.codigoProducto}" required><br>
    <label for="codigoEmpleado">Código de Empleado:</label>
    <input type="text" id="codigoEmpleado" name="codigoEmpleado" value="${orden.codigoEmpleado}" required><br>
    <input type="submit" value="Editar">
</form>
    
<table border="1">
    <tr>
        <th>Código de Orden</th>
        <th>Excepciones</th>
        <th>Código de Mesa</th>
        <th>Código de Producto</th>
        <th>Código de Empleado</th>
        <th>Acciones</th>
    </tr>
    <!-- Aquí se llenarán los datos de la base de datos -->
    <c:forEach var="orden" items="${ordenes}">
        <tr>
            <td>${orden.codigoOrden}</td>
            <td>${orden.excepciones}</td>
            <td>${orden.codigoMesa}</td>
            <td>${orden.codigoProducto}</td>
            <td>${orden.codigoEmpleado}</td>
            <td>
                <a href="editarOrden.jsp?codigoOrden=${orden.codigoOrden}">Editar</a>
            </td>
        </tr>
    </c:forEach>
</table>



<%@ include file="componentes/bodyFinal.jsp"%>
