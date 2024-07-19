<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--  estas lineas de codigo reutilizan el codigo de header luego la de bodyInicio,
y cierra con bodiFinal-->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Reservaciones</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- estilos para la franja verde de la izquierda -->
    <style>
        .sidebar {
            border-left: 50px dotted green;
            height: 100vh;
        }
    </style>
</head>
<body>
<div class="container-fluid">
        <div class="row">
        
            <div class="col-md-2 sidebar bg-light">
                <button class="btn btn-primary btn-block my-3">Agregar Recepción</button>
                <button class="btn btn-danger btn-block mb-3">Eliminar Recepción</button>
            </div>
            
            <div class="col-md-10">
                

                
                <!-- tabla de recepciones xdd wicho  -->
                <div class="row mt-4">
                    <div class="col-md-6">
                        <h4>Recepciones Hechas</h4>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Fecha</th>
                                    <th>Hora</th>
                                    <th>cantidad de personas</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- segun yo es la tabla para que no chambeen tabnto -->
                                <tr>
                                    <td>1</td>
                                    <td>Juan Pérez</td>
                                    <td>2024-07-18</td>
                                    <td>14:00</td>
                                    <td>4</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>María López</td>
                                    <td>2024-07-18</td>
                                    <td>15:00</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-6">
                        <h4>Mesas Disponibles</h4>
                        <h5>Interior</h5>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>cantidad</th>
                                    <th>Capacidad</th>
                                </tr>
                            </thead>
                            <!-- las tablas  de las mesas disponibles  -->
                            <tbody>
                                <!-- tabla de las mesas de interior -->
                                <tr>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>4 personas</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>5</td>
                                    <td>2 personas</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>6 personas</td>
                                </tr>
                            </tbody>
                        </table>
                        <h5>Exterior</h5>

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>cantidad</th>
                                    <th>Capacidad</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- tabla para la mesas de exterior   -->
                                <tr>
                                    <td>4</td>
                                    <td>2</td>
                                    <td>4 personas</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>0</td>
                                    <td>3 personas</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>2</td>
                                    <td>5 personas</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- cuadro para ingresar los datos de la reservacion-->
                <div class="Container mt-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Reservación</h5>
                            <form>
                                <div class="form-group">
                                    <label for="nameInput">Nombre</label>
                                    <input type="text" class="form-control" id="nameInput" placeholder="Ingresa tu nombre">
                                </div>
                                <div class="form-group">
                                    <label for="timeInput">Hora</label>
                                    <input type="time" class="form-control" id="timeInput">
                                </div>
                                <div class="form-group">
                                    <label for="dateInput">Fecha</label>
                                    <input type="date" class="form-control" id="dateInput">
                                </div>
                                <div class="form-group">
                                    <label for="numberInput">Número de personas</label>
                                    <input type="number" class="form-control" id="numberInput" placeholder="Cantidad de personas">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Enviar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
<%@ include file="componentes/bodyFinal.jsp"%>

