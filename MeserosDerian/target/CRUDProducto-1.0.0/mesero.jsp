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
                <button class="btn-decrease" id="decrease1">-</button>
                <input type="text" value="0" id="input1">
                <button class="btn-increase" id="increase1">+</button>
            </div>
        </div>

        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease" id="decrease2">-</button>
                <input type="text" value="0" id="input2">
                <button class="btn-increase" id="increase2">+</button>
            </div>
        </div>

        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease" id="decrease3">-</button>
                <input type="text" value="0" id="input3">
                <button class="btn-increase" id="increase3">+</button>
            </div>
        </div>

        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease" id="decrease4">-</button>
                <input type="text" value="0" id="input4">
                <button class="btn-increase" id="increase4">+</button>
            </div>
        </div>

        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease" id="decrease5">-</button>
                <input type="text" value="0" id="input5">
                <button class="btn-increase" id="increase5">+</button>
            </div>
        </div>

        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease" id="decrease6">-</button>
                <input type="text" value="0" id="input6">
                <button class="btn-increase" id="increase6">+</button>
            </div>
        </div>

        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease" id="decrease7">-</button>
                <input type="text" value="0" id="input7">
                <button class="btn-increase" id="increase7">+</button>
            </div>
        </div>

        <div class="product-card">
            <img src="assets/imagenes/productos/ramen.jpg" alt="Shio Ramen">
            <h3>Shio Ramen</h3>
            <p>Ramen con carnitas y especies naturales</p>
            <p class="price">Q. 28.000</p>
            <div class="quantity-controls">
                <button class="btn-decrease" id="decrease8">-</button>
                <input type="text" value="0" id="input8">
                <button class="btn-increase" id="increase8">+</button>
            </div>
        </div>
    </div>
    <script>
        const increase1 = document.getElementById("increase1");
        const increase2 = document.getElementById("increase2");
        const increase3 = document.getElementById("increase3");
        const increase4 = document.getElementById("increase4");
        const increase5 = document.getElementById("increase5");
        const increase6 = document.getElementById("increase6");
        const increase7 = document.getElementById("increase7");
        const increase8 = document.getElementById("increase8");

        const decrease1 = document.getElementById("decrease1");
        const decrease2 = document.getElementById("decrease2");
        const decrease3 = document.getElementById("decrease3");
        const decrease4 = document.getElementById("decrease4");
        const decrease5 = document.getElementById("decrease5");
        const decrease6 = document.getElementById("decrease6");
        const decrease7 = document.getElementById("decrease7");
        const decrease8 = document.getElementById("decrease8");

        const input1 = document.getElementById("input1");
        const input2 = document.getElementById("input2");
        const input3 = document.getElementById("input3");
        const input4 = document.getElementById("input4");
        const input5 = document.getElementById("input5");
        const input6 = document.getElementById("input6");
        const input7 = document.getElementById("input7");
        const input8 = document.getElementById("input8");



        increase1.addEventListener('click', function () {
            input1.value = parseInt(input1.value) + 1;
        });
        increase2.addEventListener('click', function () {
            input2.value = parseInt(input2.value) + 1;
        });
        increase3.addEventListener('click', function () {
            input3.value = parseInt(input3.value) + 1;
        });
        increase4.addEventListener('click', function () {
            input4.value = parseInt(input4.value) + 1;
        });
        increase5.addEventListener('click', function () {
            input5.value = parseInt(input5.value) + 1;
        });
        increase6.addEventListener('click', function () {
            input6.value = parseInt(input6.value) + 1;
        });
        increase7.addEventListener('click', function () {
            input7.value = parseInt(input7.value) + 1;
        });
        increase8.addEventListener('click', function () {
            input8.value = parseInt(input8.value) + 1;
        });

        decrease1.addEventListener('click', function () {
            if (parseInt(input1.value) === 0) {
            } else {
                input1.value = parseInt(input1.value) - 1;
            }
        });
        decrease2.addEventListener('click', function () {
            if (parseInt(input2.value) === 0) {
            } else {
                input2.value = parseInt(input2.value) - 1;
            }
        });
        decrease3.addEventListener('click', function () {
            if (parseInt(input3.value) === 0) {
            } else {
                input3.value = parseInt(input3.value) - 1;
            }
        });
        decrease4.addEventListener('click', function () {
            if (parseInt(input4.value) === 0) {
            } else {
                input4.value = parseInt(input4.value) - 1;
            }
        });
        decrease5.addEventListener('click', function () {
            if (parseInt(input5.value) === 0) {
            } else {
                input5.value = parseInt(input5.value) - 1;
            }
        });
        decrease6.addEventListener('click', function () {
            if (parseInt(input6.value) === 0) {
            } else {
                input6.value = parseInt(input6.value) - 1;
            }
        });
        decrease7.addEventListener('click', function () {
            if (parseInt(input7.value) === 0) {
            } else {
                input7.value = parseInt(input7.value) - 1;
            }
        });
        decrease8.addEventListener('click', function () {
            if (parseInt(input8.value) === 0) {
            } else {
                input8.value = parseInt(input8.value) - 1;
            }
        });
    </script>

</div>

<%-- esta es la linea de codigo que reutiliza el codigo de bodyFinal, para que 
el contenido que este dentro de bodyIncio y bodyFinal se muestren en esta vista 
--%>
<%@ include file="componentes/bodyFinal.jsp"%>

