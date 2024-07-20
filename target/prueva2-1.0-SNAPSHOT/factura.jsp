<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">
        <div class="col-xs-8">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">
                        <div class="row">
                            <div class="col-xs-6">
                                <h5><span class="glyphicon glyphicon-list-alt"></span> Factura</h5>
                            </div>
                            <div class="col-xs-6 text-right">
                                <button type="button" class="btn btn-primary btn-sm btn-block" onclick="location.href='carrito.jsp'">
                                    <span class="glyphicon glyphicon-share-alt"></span> Regresar al Carrito
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <!-- Información del cliente -->
                    <div class="row">
                        <div class="col-xs-12">
                            <h4>Cliente: John Doe</h4>
                            <h4>Dirección: 123 Main St, Anytown, USA</h4>
                            <h4>Fecha: <%= new java.util.Date() %></h4>
                        </div>
                    </div>
                    <hr>
                    <!-- Lista de productos -->
                    <div class="row">
                        <div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70"></div>
                        <div class="col-xs-4">
                            <h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
                        </div>
                        <div class="col-xs-6">
                            <div class="col-xs-6 text-right">
                                <h6><strong>25.00 <span class="text-muted">x</span> 1</strong></h6>
                            </div>
                            <div class="col-xs-6 text-right">
                                <h6><strong>Total: 25.00</strong></h6>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <!-- Más productos pueden estar aquí -->
                </div>
                <div class="panel-footer">
                    <div class="row text-center">
                        <div class="col-xs-9">
                            <h4 class="text-right">Total <strong>$50.00</strong></h4>
                        </div>
                        <div class="col-xs-3">
                            <button type="button" class="btn btn-success btn-block" onclick="finalizarCompra()">
                                Finalizar Compra
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function finalizarCompra() {
        // Lógica para finalizar la compra
        alert("Compra finalizada con éxito.");
    }
</script>

<%@ include file="componentes/bodyFinal.jsp"%>
