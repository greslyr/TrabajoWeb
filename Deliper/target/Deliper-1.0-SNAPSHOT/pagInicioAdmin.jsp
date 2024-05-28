<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Usuario"%>
<%--
    Usuario usr = (Usuario) session.getAttribute("usuario");
    if (usr == null || !"admin".equals(usr.getRol())) {
        response.sendRedirect("IniciarSesion.jsp");
        return;
    }
--%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DeliPer - Administrador</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
        <style>
            .btnCuenta {
                background-color: #FBA404;
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 17px;
                font-weight: bold;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 12px;
            }
        </style>
    </head>
    <body class="bodyprincipal">
        <header>
            <nav class="navegacion">
                <div>
                    <div class="logo">
                        <img src="images/deliperlogo.svg"/>
                    </div>
                    <ul class="nav-links">
                        <li><a href="seleccionIngredientes.jsp">Inicio</a></li>
                        <li><a href="#">Nosotros</a></li>
                        <li><a href="#">Preguntas frecuentes</a></li>
                        <li><a href="srvReceta?accion=listar">Ver Recetas</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <main class="mainpri">
            <div class="content">
                <img src="images/verduras.png" alt="Canasta de vegetales" class="vegetable-image">
                <div class="text-container">
                    <h1>¡Bienvenido administrador!</h1>
                    <button class="btnCuenta" onclick="verPerfil()">Ver mi cuenta</button>
                </div>
            </div>
        </main>
        <script>
            function verPerfil() {
                window.location.href = "PerfilUsuario.jsp";
            }
        </script>
    </body>
</html>
