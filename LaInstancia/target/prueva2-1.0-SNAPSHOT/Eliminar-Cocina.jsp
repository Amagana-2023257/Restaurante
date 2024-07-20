<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>

<h1>Eliminar Cocina (Orden)</h1>

<!-- Formulario para buscar la orden por código -->
<form method="get" action="eliminarOrden.jsp">
    <label for="codigoOrden">Ingrese el Código de Orden para eliminar:</label>
    <input type="text" id="codigoOrden" name="codigoOrden" required>
    <input type="submit" value="Buscar">
</form>

<%
    String codigoOrdenParam = request.getParameter("codigoOrden");
    if (codigoOrdenParam != null && !codigoOrdenParam.isEmpty()) {
        int codigoOrden = Integer.parseInt(codigoOrdenParam);
        String excepciones = "";
        int codigoMesa = 0;
        int codigoProducto = 0;
        int codigoEmpleado = 0;
        boolean ordenEncontrada = false;

        try {
            Class.forName("com.mysql.jdbc.Driver"); // Cambia a tu base de datos
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tu_base_de_datos", "tu_usuario", "tu_contraseña");
            String query = "SELECT * FROM orden WHERE codigoOrden=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, codigoOrden);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                excepciones = rs.getString("excepciones");
                codigoMesa = rs.getInt("codigoMesa");
                codigoProducto = rs.getInt("codigoProducto");
                codigoEmpleado = rs.getInt("codigoEmpleado");
                ordenEncontrada = true;
            }

            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (ordenEncontrada) {
%>
            <p>¿Está seguro de que desea eliminar la orden con código <strong><%= codigoOrden %></strong>?</p>
            <p>Excepciones: <%= excepciones %></p>
            <p>Código de Mesa: <%= codigoMesa %></p>
            <p>Código de Producto: <%= codigoProducto %></p>
            <p>Código de Empleado: <%= codigoEmpleado %></p>

            <form action="eliminarOrdenServlet" method="post">
                <input type="hidden" name="codigoOrden" value="<%= codigoOrden %>">
                <input type="submit" value="Eliminar">
                <a href="eliminarOrden.jsp">Cancelar</a>
            </form>
<%
        } else {
%>
            <p>No se encontró ninguna orden con el código <strong><%= codigoOrden %></strong>.</p>
<%
        }
    }
%>

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
                <a href="eliminarOrdenServlet?codigoOrden=${orden.codigoOrden}">Eliminar</a>
            </td>
        </tr>
    </c:forEach>
</table>



<%@ include file="componentes/bodyFinal.jsp"%>
