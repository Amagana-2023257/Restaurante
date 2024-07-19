<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Incluimos los componentes comunes del sitio -->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>

<!-- Aquí Pondremos las vistas específicas para las Opciones de Recepción -->
<div class="border border-secondary" style="position: relative; left: 80px;">
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
                
                <!-- Formulario Mesas Ocupadas -->
                <div class="container mt-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Mesas Ocupadas</h5>
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
                                    <label for="numberInput">Número de personas</label>
                                    <input type="number" class="form-control" id="numberInput" placeholder="Cantidad de personas">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Agregar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-10" style="position: relative; left: 350px;">

                <!-- Tabla Recepciones Hechas -->
                <div class="container mt-4 ml-3">
                    <h4>Recepciones Hechas</h4>
                    <table class="table table-striped">
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
                
                <!-- Tabla Mesas Ocupadas -->
                <div class="container mt-4 ml-3">
                    <h4>Mesas Ocupadas</h4>
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

                <!-- Tabla Mesas Disponibles Interior -->
                <div class="container mt-4 ml-3"style="position: relative; left: 700px;">
                    <h4>Mesas Disponibles</h4>
                    <h5>Interior</h5>
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
                
                <!-- Tabla Mesas Disponibles Exterior -->
                <div class="container mt-4 ml-3"style="position: relative; left: 700px;">
                    <h5>Exterior</h5>
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

                <!-- Formulario Reservaciones -->
                <div class="container mt-5 ml-3" style="position: relative; left: 100px;">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"></h5>
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
                                <button type="submit" class="btn btn-primary btn-block">Agregar</button>
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
</div>



<%@ include file="componentes/bodyFinal.jsp"%>
