<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recomendaciones - DeliPer</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h1>Recetas Recomendadas</h1>
    <c:forEach var="receta" items="${recetas}">
        <div>
            <h2>${receta.titulo}</h2>
            <p>${receta.descripcion}</p>
            <a href="detalleReceta.jsp?recetaId=${receta.recetaId}">Ver Detalles</a>
        </div>
    </c:forEach>
</body>
</html>