<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Receta</title>
    </head>
    <body>
        <div>
            <h1>Agregar Receta</h1>        
            <form action="srvReceta">
                Título:<br>
                <input type="text" name="txtTit"><br>
                Descripción: <br>
                <input type="text" name="txtDesc"><br>
                Preparación: <br>
                <input type="text" name="txtPrep"><br>
                <input type="submit" name="accion" value="Agregar"><br>
            </form>
        </div>
    </body>
</html>
