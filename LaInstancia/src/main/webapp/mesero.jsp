<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--  estas lineas de codigo reutilizan el codigo de header luego la de bodyInicio,
y cierra con bodiFinal-->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
 <!--  Aqui Pondremas las vistas especificas para las Opciones del Restaurante -->
   
 <div class="content">
    <h2>Productos</h2>
    <div class="product-grid">
        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>The taste of a light sea-based broth</p>
            <p class="price">Rp. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>
        
    </div>
</div>

 
<%@ include file="componentes/bodyFinal.jsp"%>

