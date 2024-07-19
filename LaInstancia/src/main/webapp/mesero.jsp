<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--  estas lineas de codigo reutilizan el codigo de header luego la de bodyInicio,
y cierra con bodiFinal-->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
 <!--  Aqui Pondremas las vistas especificas para las Opciones del Restaurante -->
<h1>---------------------------------------------DISEÑO PARA MESERO  ---------------- </h1>
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
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Carrito de Compras</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .dropdown-menu {
      width: 300px; /* Ajusta el ancho del menú desplegable */
    }
    .cart-item {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
  </style>
</head>
<body>
  <div class="container mt-5">
    <div class="d-flex justify-content-end">
      <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownCartButton" data-bs-toggle="dropdown" aria-expanded="false">
          Carrito de Compras
        </button>
        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownCartButton">
          <!-- Lista de productos en el carrito -->
          <div id="cart-items">
            <li class="cart-item">
              <span>Producto 1</span>
              <div>
                <button class="btn btn-success btn-sm" onclick="updateQuantity(this, 1)">+</button>
                <span class="quantity">1</span>
                <button class="btn btn-danger btn-sm" onclick="updateQuantity(this, -1)">-</button>
              </div>
            </li>
            <li class="cart-item">
              <span>Producto 2</span>
              <div>
                <button class="btn btn-success btn-sm" onclick="updateQuantity(this, 1)">+</button>
                <span class="quantity">1</span>
                <button class="btn btn-danger btn-sm" onclick="updateQuantity(this, -1)">-</button>
              </div>
            </li>
            <li class="cart-item">
              <span>Producto 3</span>
              <div>
                <button class="btn btn-success btn-sm" onclick="updateQuantity(this, 1)">+</button>
                <span class="quantity">1</span>
                <button class="btn btn-danger btn-sm" onclick="updateQuantity(this, -1)">-</button>
              </div>
            </li>
          </div>
          <li><hr class="dropdown-divider"></li>
          <li>
            <button class="btn btn-primary w-100">Finalizar Compra</button>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS and dependencies -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
  <script>
    function updateQuantity(button, change) {
      var quantityElement = button.closest('.cart-item').querySelector('.quantity');
      var currentQuantity = parseInt(quantityElement.innerText);
      var newQuantity = currentQuantity + change;
      if (newQuantity > 0) {
        quantityElement.innerText = newQuantity;
      } else {
        button.closest('.cart-item').remove();
      }
    }
  </script>
</body>



  
<%@ include file="componentes/bodyFinal.jsp"%>

