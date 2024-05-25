<%-- 
    Document   : IniciarSesion
    Created on : 24 may. 2024, 21:04:19
    Author     : Estudio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio de Sesión</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="bodyiniciar">
        <div class="container">
            <h1>Bienvenido</h1>
            <p>Por favor, inicia sesión con tu cuenta</p>
            <form class="formularioInicio">
                <input type="email" placeholder="Correo" required class="inputsesion">
                <input type="password" placeholder="Contraseña" required class="inputsesion">
                <a href="#" class="forgot-password">Olvidé mi contraseña</a>
                <button type="submit" class="btnIngresar">INGRESAR</button>
                <p class="new-account">¿Eres nuevo? <a href="#">Crea una cuenta</a></p>
            </form>
        </div>
    </body>
</html>
