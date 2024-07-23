<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--  estas lineas de codigo reutilizan el codigo de header luego la de bodyInicio,
y cierra con bodiFinal-->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
 <!--  Aqui Pondremas las vistas especificas para las Opciones del Restaurante -->
  
<%-- Esto se divide en contenedores el primer contenedor es el de la pantalla,
para luego dividirse en sub contededores que se mostraran como los productos--%> 
 <div class="content">
     
    <h2>Productos</h2>
    <i class="bi bi-cart"></i>
    <div class="product-grid">
        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Nombre del Platillo</h3>
            <p>Descripcion del platill</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>

        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>
       
        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>
        
        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>
        
        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>
        
        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>
        
        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>
        
        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease">-</button>
                <input type="text" value="1" readonly>
                <button class="btn-increase">+</button>
            </div>
        </div>
    </div>
    
    
</div>

 <%-- esta es la linea de codigo que reutiliza el codigo de bodyFinal, para que 
 el contenido que este dentro de bodyIncio y bodyFinal se muestren en esta vista 
--%>
<%@ include file="componentes/bodyFinal.jsp"%>

