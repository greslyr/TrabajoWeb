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
            </nav>
        </header>
        <main>
            <h1 class="title-ingredientes">Selecciona tus ingredientes</h1>
            <form action="" class="formulario-centrado" >
                <div class="formulario-ingredientes">
                    <div class="option-container">
                        <img src="images/huevo.png" alt="Opción 1">
                        <div class="centrado-ingrediente">
                            <input type="checkbox" name="opciones[]" value="huevo" id="huevo">
                            <label for="huevo">
                                huevo
                            </label>
                        </div>

                    </div>
                    <div class="option-container">
                        <img src="images/brocoli.png" alt="Opción 2">
                        <div class="centrado-ingrediente">
                            <input type="checkbox" name="opciones[]" value="brocoli" id="brocoli">
                            <label for="brocli">

                                brocoli
                            </label>
                        </div>

                    </div>
                    <div class="option-container">
                        <img src="images/queso.png" alt="Opción 3">
                        <div class="centrado-ingrediente">
                            <input type="checkbox" name="opciones[]" value="queso" id="queso">
                            <label for="queso">
                                queso
                            </label>
                        </div>

                    </div>
                    <div class="option-container">

                        <img src="images/carne.png" alt="Opción 4">
                        <div class="centrado-ingrediente">
                            <input type="checkbox" name="opciones[]" value="carne" id="carne">
                            <label for="carne">

                                carne
                            </label>
                        </div>

                    </div>
                    <div class="option-container">
                        <img src="images/pimiento.png" alt="Opción 5">
                        <div class="centrado-ingrediente">
                            <input type="checkbox" name="opciones[]" value="pimiento" id="pimiento">
                            <label for="pimiento">

                                pimiento
                            </label>
                        </div>

                    </div>
                    <div class="option-container">
                        <img src="images/platano.png" alt="Opción 6">
                        <div class="centrado-ingrediente">
                            <input type="checkbox" name="opciones[]" value="platano" id="platano">
                            <label for="opcion6">
                                platano
                            </label>
                        </div>
                    </div>
                </div>
                <input type="submit" class="start-button" value="ENVIAR">
            </form>
        </main>
        <script>
           
        </script>
    </body>
</html>
