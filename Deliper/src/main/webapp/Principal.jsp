<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
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
        <main class="mainpri">
            <div class="content">
                <img src="images/verduras.png" alt="Canasta de vegetales" class="vegetable-image">
                <div class="text-container">
                    <h1>¡Genera tu comida con los ingredientes que tengas en tu casa!</h1>

                </div>
            </div>
        </main>
        <script>
            function iniciarSesion() {
                window.location.href = "IniciarSesion.jsp";
            }
        </script>
    </body>
</html>