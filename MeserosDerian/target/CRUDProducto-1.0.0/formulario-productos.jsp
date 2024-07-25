<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>sistema de gestión</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        
        <div class="container mt-5">
            <form action="../../CRUDProducto/producto-servlet" method="post" enctype="mutipart/form-data">
                <div class="form-floating mb-3">
                    <input type="number" class="form-control" id="codigoProducto" name="codigoProducto" placeholder="">
                    <label for="nombreProducto">Codigo del Producto</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="nombreProducto" name="nombreProducto" placeholder="">
                    <label for="nombreProducto">Nombre del producto</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="ingredientes" name="marca" placeholder="">
                    <label for="marcaProducto">Ingredientes del producto</label>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">Q</span>
                    <input type="text" class="form-control" name="precioProducto" aria-label="Amount (to the nearest dollar)">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">Ingrese lo que sea xD</span>
                    <input type="text" class="form-control" name="imagenProducto" aria-label="Amount (to the nearest dollar)">
                </div>
                <div>
                    <input class="btn btn-outline-success" type="submit" value="Agregar">
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
