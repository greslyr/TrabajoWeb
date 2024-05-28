<%@page import="modelo.Receta"%>
<%@page import="dao.RecetaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                RecetaDAO dao=new RecetaDAO();
                int id=Integer.parseInt((String)request.getAttribute("idrec"));
                Receta r=(Receta)dao.list(id);
            %>
            <h1>Modificar Receta</h1>        
            <form action="srvReceta">
                Título:<br>
                <input type="text" name="txtTit" value="<%=r.getTitulo()%>"><br>
                Descripción: <br>
                <input type="text" name="txtDesc" value="<%=r.getDescripcion()%>"><br>
                Preparación: <br>
                <input type="text" name="txtPrep" value="<%=r.getPreparacion()%>"><br>
                <input type="hidden" name="txtId" value="<%=r.getId()%>">
                <input type="submit" name="accion" value="Actualizar"><br>
                <a href="srvReceta?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
