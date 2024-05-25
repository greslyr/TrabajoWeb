<%-- 
    Document   : seleccionIngredientes
    Created on : 24 may. 2024, 22:30:39
    Author     : Estudio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DeliPer</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="bodyprincipal">
        <header >
            <nav class="navegacion">
                <div>
                    <div class="logo">
                        <img src="images/deliperlogo.svg"/>
                    </div>
                    <ul class="nav-links">
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Nosotros</a></li>
                        <li><a href="#">Preguntas frecuentes</a></li>
                    </ul>
                </div>

                <button class="login-button" onclick="iniciarSesion()">Iniciar sesión</button>
            </nav>
        </header>
        <main class="mainseleccion">
            <h1>Selecciona tus ingredientes</h1>
            <form action="ServletDeProcesamiento" method="post">
                <div class="ingredientes">
                    <div class="ingrediente"  id="huevo" onclick="seleccionarIngrediente('huevo')">
                        <img src="images/huevo.png" alt="Huevo">
                        <p>HUEVO</p>
                        <input type="hidden" name="ingredientesSeleccionados" id="huevoInput">
                    </div>
                         <img src="images/brocoli.png" alt="Brócoli">
                    <p>BRÓCOLI</p>
                </div>
                <div class="ingrediente"  id="queso" onclick="seleccionarIngrediente('queso')">
                    <img src="images/queso.png" alt="Queso">
                    <p>QUESO</p>
                </div>
                <div class="ingrediente"  id="carne" onclick="seleccionarIngrediente('carne')">
                    <img src="images/carne.png" alt="Carne">
                    <p>CARNE</p>
                </div>
                <div class="ingrediente" id="pimiento" onclick="seleccionarIngrediente('pimiento')">
                    <img src="images/pimiento.png" alt="Pimiento">
                    <p>PIMIENTO</p>
                </div>
                <div class="ingrediente" id="platano" onclick="seleccionarIngrediente('platano')">
                    <img src="images/platano.png" alt="Platano">
                    <p>Inicio</p>
                </div>
                </div>
                
                <button type="submit" class="start-button">GENERAR</button>
            </form>
        </main>
        <script>
            function seleccionarIngrediente(ingrediente) {
                const ingredienteDiv = document.getElementById(ingrediente);
                const ingredienteInput = document.getElementById(ingrediente + "Input");
                if (ingredienteDiv.classList.contains('seleccionado')) {
                    ingredienteDiv.classList.remove('seleccionado');
                    ingredienteInput.value = "";
                } else {
                    ingredienteDiv.classList.add('seleccionado');
                    ingredienteInput.value = ingrediente;
                }
            }
        </script>
    </body>
</html>
