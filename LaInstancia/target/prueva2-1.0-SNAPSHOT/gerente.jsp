<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--  estas lineas de codigo reutilizan el codigo de header luego la de bodyInicio,
y cierra con bodiFinal-->
<%@ include file="componentes/header.jsp"%>
<%@ include file="componentes/bodyInicio.jsp"%>
  <head>
    <!-- Asegúrate de incluir Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /*Este es el estilo que se le aplica a la tabla para ada`ptarla a la pantalla*/
        .custom-position {
            position: absolute;
            top: 35px; /* Ajusta este valor según sea necesario */
            left: 300px; /* Ajusta este valor según sea necesario */
        }
        
        .custom-position2 {
            position: absolute;
            top: 600px; /* Ajusta este valor según sea necesario */
            left: 300px; /* Ajusta este valor según sea necesario */
        }
        
        .custom-zice {
            width: 700px; /* Ajusta este valor según sea necesario */
            height: 800px; /* Ajusta este valor según sea necesario */
        }
    </style>
</head>
<body>
    <div class="sidebar" id="sidebar">
        <div class="logo">
            <img src="assets/imagenes/Logos/logo.png" alt="Logo">
        </div>
        <ul>
            <!-- Opcion donde llaman al diseño de Gerente -->
            <li class="menu"><a href="#"><i class="fas fa-user"></i> Gerente</a>
                <li class="menu"><a href="#"><i class="fas fa-user"></i> Meseros-Mesas</a>
                </li>
            </li>
        
        </ul>
        
    </div>
    
    <div class="position-relative" style="height: 100px;"> <!-- Ajusta la altura según sea necesario -->
        <div class="custom-position">
             <div class="custom-zice">
                <table class="table table-striped table-bordered">
                    <h2 class="modal-title">Meseros</h2>
                    <thead class="table-dark">
                              <tr>
                              <th scope="col">#</th>
                              <th scope="col">Nombre    </th>
                              <th scope="col">Apellido  </th>
                              <th scope="col">Mesas   </th>
                            </tr>

                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Lara</td>
                        <td>Smith</td>
                        <td>15-17</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>Ethan </td>
                        <td>Johnson</td>
                        <td>11-13</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>Sophia</td>
                        <td>Brown</td>
                        <td>8-10</td>
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                        <td>Mason</td>
                        <td>Davis</td>
                        <td>5-7</td>
                      </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="position-relative" style="height: 100px;"> <!-- Ajusta la altura según sea necesario -->
        <div class="custom-position2">
             <div class="custom-zice">
                <table class="table table-striped table-bordered">
                    <h2 class="modal-title">Meseros</h2>
                    <thead class="table-dark">
                              <tr>
                              <th scope="col">#</th>
                              <th scope="col">Cantidad de personas</th>
                              <th scope="col">Estado</th>
                            </tr>

                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>4</td>
                        <td>Libre</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>4</td>
                        <td>Libre</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>8</td>
                        <td>Libre</td>
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                        <td>8</td>
                        <td>Libre</td>
                      </tr>
                      <tr>
                        <th scope="row">5</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">6</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">7</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">8</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">9</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">10</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">11</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">12</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">13</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">14</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">15</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">16</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">17</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">18</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">19</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <th scope="row">20</th>
                        <td>8</td>
                        <td>Ocupada</td>
                      </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    
<%@ include file="componentes/bodyFinal.jsp"%>

