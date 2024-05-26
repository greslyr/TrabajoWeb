<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="bodyperfil">
        <header>
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
            <h2 class="title-usuario">Bienvenido  <span id="nombreusuario">usuario</span></h2>
            <section class="recipe-history">
                <h3 class="title-perfil">Historial de recetas</h3>
                <div class="image-slider">
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/alfajor.jpg" class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">alfajor</h2>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/olluco.jpg" class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">olluco</h2>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/chaufa.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">chaufa</h2>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/empanada.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">empanada</h2>
                            </div>
                        </div>
                    </a>
                </div>
            </section>
              <section class="recipe-history">
                <h3 class="title-perfil">Mis recetas favoritas</h3>
                <div class="image-slider">
                   <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/tallarin.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">tallarin</h2>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/ceviche.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">ceviche</h2>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/olluco.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">olluco</h2>
                            </div>
                        </div>
                    </a>
                </div>
            </section>
           <!-- <h3 class="title-perfil">Mis recetas favoritas</h3>
            <section class="favorite-recipes">
                <div>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/tallarin.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">tallarin</h2>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/ceviche.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">ceviche</h2>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/chaufa.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">chaufa</h2>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card-a"> 
                        <div class="card">
                            <img src="images/olluco.jpg"  class="card-img">
                            <div class="card-content">
                                <h2 class="card-title">olluco</h2>
                            </div>
                        </div>
                    </a>
                </div>
            </section>-->
            <section class="account-edit">
                <h3>Editar cuenta</h3>
                <form action=""  class="formulario-perfil">
                    <label for="nombre">CORREO :</label>
                    <input type="email"  name="correo" class="input-field"><br>
                    <label for="nombre">USUARIO :</label>
                    <input type="text"  name="usuario" class="input-field"><br>
                    <label for="correo">CONTRASEÑA :</label>
                    <input type="password" name="contraseña" class="input-field"><br>
                    <div class="submit-container">
                        <input type="submit" value="Editar" class="boton-enviar">
                    </div>
                </form>
            </section>
            <section class="review-section">
                <h3>Dejar una reseña</h3>
                <form action="" class="formulario-perfil">
                    <textarea name="resena" class="textarea-field"></textarea><br>
                    <div class="submit-container">
                        <input type="submit" value="Enviar reseña" class="boton-enviar">
                    </div>
                </form>
            </section>
        </main>
    </body>
</html>
