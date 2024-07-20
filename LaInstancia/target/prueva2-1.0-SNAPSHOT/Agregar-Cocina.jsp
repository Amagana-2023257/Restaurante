<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>

<h1>Agregar Cocina (Orden)</h1>

<form action="agregarOrdenServlet" method="post">
    <label for="codigoOrden">Código de Orden:</label>
    <input type="text" id="codigoOrden" name="codigoOrden" required><br>
    <label for="excepciones">Excepciones:</label>
    <input type="text" id="excepciones" name="excepciones" required><br>
    <label for="codigoMesa">Código de Mesa:</label>
    <input type="text" id="codigoMesa" name="codigoMesa" required><br>
    <label for="codigoProducto">Código de Producto:</label>
    <input type="text" id="codigoProducto" name="codigoProducto" required><br>
    <label for="codigoEmpleado">Código de Empleado:</label>
    <input type="text" id="codigoEmpleado" name="codigoEmpleado" required><br>
    <input type="submit" value="Agregar">
</form>

<%@ include file="componentes/bodyFinal.jsp"%>
