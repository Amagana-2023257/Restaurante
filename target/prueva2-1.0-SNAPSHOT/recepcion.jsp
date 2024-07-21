<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Incluimos los componentes comunes del sitio -->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>

<!-- Aquí Pondremos las vistas específicas para las Opciones de Recepción -->

<div class="" style="position: relative; left: 80px;">
        <div class="container-fluid" style="position: relative; left: 90px;">
            <div class="row" style="position: relative; left: 90px;">
                <div class="col-md-2 sidebar bg-light">
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>

                    <button class="btn btn-danger btn-block mb-3">Eliminar Recepción</button>
                    
                </div>
                <!<!-- con este div modifico toda la possicion de las tablas  -->
                <div class="col-md-10" style="position: relative; left: 200px; top: 60px;">

                    <!-- Tabla Recepciones Hechas -->
                    <div class="container mt-4 ml-3" style="position: relative; left: 100px">
                        <h4>Recepciones Hechas</h4>
                        <div class="table-responsive" style="max-height: 200px; overflow-y: scroll;">
                            <table  class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Fecha</th>
                                        <th>Hora</th>
                                        <th>Cantidad de personas</th>
                                    </tr>
                                </thead>
                                <tbody>
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
                    </div>
                    
                    <!-- Tabla Mesas Ocupadas -->
                    <div class="container mt-4 ml-3 " style="position: relative; left: 100px; top: 70px;">
                        <h4>Mesas Ocupadas</h4>
                        <div class="table-responsivetable" style="max-height: 200px; overflow-y: scroll;">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Hora</th>
                                        <th>Cantidad de personas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Juan Pérez</td>
                                        <td>14:00</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>María López</td>
                                        <td>15:00</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Tabla Mesas Disponibles Interior -->
                    <div class="container mt-4 ml-3 " style="position: relative; left: 700px; top: -499px;">
                        <h4>Mesas Disponibles</h4>
                        <h5>Interior</h5>
                        <div class="table-responsive" style="max-height: 200px; overflow-y: scroll;">
                            <table class="table table-striped ml-3">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Cantidad</th>
                                        <th>Capacidad</th>
                                    </tr>
                                </thead>
                                <tbody>
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
                        </div>
                    </div>

                    <!-- Tabla Mesas Disponibles Exterior -->
                    <div class="container mt-4 ml-3" style="position: relative; left: 700px; top: -438px;">
                        <h5>Exterior</h5>
                        <div class="table-responsive" style="max-height: 200px; overflow-y: scroll;">
                            <table class="table table-striped ml-3">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Cantidad</th>
                                        <th>Capacidad</th>
                                    </tr>
                                </thead>
                                <tbody>
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

  

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<%@ include file="componentes/bodyFinal.jsp"%>
