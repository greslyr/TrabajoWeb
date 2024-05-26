<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro de Usuario</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="bodyiniciar">
        <div class="container">
            <h1>Crear Cuenta</h1>
            <p>Por favor, llena los siguientes campos para crear una cuenta</p>
            <form class="formularioInicio" action="srvUsuario" method="post">
                <input type="hidden" name="action" value="register">
                <input type="text" name="usuario" placeholder="Usuario" required class="inputsesion">
                <input type="email" name="correo" placeholder="Correo" required class="inputsesion">
                <input type="password" name="password" placeholder="Contraseña" required class="inputsesion">
                <input type="password" name="repetirPassword" placeholder="Repetir Contraseña" required class="inputsesion">
                <button type="submit" class="btnIngresar">CREAR CUENTA</button>
            </form>
            <%
                String error = request.getParameter("error");
                if ("1".equals(error)) {
            %>
            <p style="color:red;">Las contraseñas no coinciden.</p>
            <%
                } else if ("2".equals(error)) {
            %>
            <p style="color:red;">El usuario ya existe.</p>
            <%
                } else if ("3".equals(error)) {
            %>
            <p style="color:red;">Formato de correo inválido.</p>
            <%
                }
            %>
        </div>
    </body>
</html>
