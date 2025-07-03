<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head><title>Exemplaires Disponibles</title></head>
<body>
    <h2>📖 Exemplaires disponibles</h2>
    <ul>
        <c:forEach var="ex" items="${exemplaires}">
            <li>Exemplaire ID: ${ex.idExemplaire}, Livre ID: ${ex.livre.idLivre}</li>
        </c:forEach>
    </ul>
</body>
</html>
