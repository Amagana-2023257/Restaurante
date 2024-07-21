
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
 <!--  Aqui Pondremas las vistas especificas para las Opciones del Restaurante -->
    
 
   <style>
        .form-row {
            margin: 10px 0;
            background-color: rgba(0, 128, 0, 0.3); 
            padding: 20px;
            border-radius: 55px;
        }
    </style>

    <!-- Formulario para cargar una mesa ocupada -->
    <div class="container mt-5 ml-3 ">
           <h1 style="position: relative; left: 650px; top: -10px; font-family: 'Comic Sans MS', cursive, sans-serif; color: green; text-shadow: -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff, 1px 1px 0 #fff;">
        Formulario para agregar mesas y reservaciones
    </h1>
        <div>
            <div class="card-body card" style="position: relative; left: 270px; top: 100px;">
                <h5 class="card-title">Agregar Cliente nuevo</h5>
                <form>
                    <div class="form-group form-row">
                        <label for="nameInput">Nombre</label>
                        <input type="text" class="form-control" id="nameInput" placeholder="Ingresa tu nombre">
                    </div>
                    <div class="form-group form-row">
                        <label for="timeInput">Hora</label>
                        <input type="text" class="form-control" id="timeInput" placeholder="Ingresa la hora">
                    </div>
                    <div class="form-group form-row">
                        <label for="numberInput">Número de personas</label>
                        <input type="text" class="form-control" id="numberInput" placeholder="Cantidad de personas">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Agregar</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Formulario Reservaciones -->
    <div class="container mt-5 ml-3" style="position: relative; left: -650px; top: 900px;">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Agregar Reservaciones</h5>
                <form>
                    <div class="form-group form-row">
                        <label for="nameInput">Nombre</label>
                        <input type="text" class="form-control" id="nameInput" placeholder="Ingresa tu nombre">
                    </div>
                    <div class="form-group form-row">
                        <label for="timeInput">Hora</label>
                        <input type="text" class="form-control" id="timeInput" placeholder="Ingresa la hora">
                    </div>
                    <div class="form-group form-row">
                        <label for="dateInput">Fecha</label>
                        <input type="text" class="form-control" id="dateInput" placeholder="Ingresa la fecha">
                    </div>
                    <div class="form-group form-row">
                        <label for="numberInput">Número de personas</label>
                        <input type="text" class="form-control" id="numberInput" placeholder="Cantidad de personas">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Agregar</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%@ include file="componentes/bodyFinal.jsp"%>
