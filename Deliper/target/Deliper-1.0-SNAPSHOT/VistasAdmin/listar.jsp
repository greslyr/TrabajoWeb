<%@page import="java.util.Iterator"%>
<%@page import="modelo.Receta"%>
<%@page import="java.util.List"%>
<%@page import="dao.RecetaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Recetas</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div>
            <h1>Recetas</h1>
            <a href="srvReceta?accion=add">Agregar nueva receta</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Preparación</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    RecetaDAO dao=new RecetaDAO();
                    List<Receta> list=dao.listar();
                    Iterator<Receta>iter=list.iterator();
                    while (iter.hasNext()) {
                        Receta rec = iter.next();
                %>
                    <tr>
                        <td><%= rec.getId()%></td>
                        <td><%= rec.getTitulo()%></td>
                        <td><%= rec.getDescripcion()%></td>
                        <td><%= rec.getPreparacion()%></td>
                        <td>
                            <a href="srvReceta?accion=editar&id=<%=rec.getId()%>">Editar</a>
                            <a href="srvReceta?accion=eliminar&id=<%=rec.getId()%>">Eliminar</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </body>
</html>
