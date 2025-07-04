<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head><title>Livres Empruntés</title></head>
<body>
    <h2>📚 Liste des livres empruntés</h2>
    <ul>
        <c:forEach var="pret" items="${prets}">
            <li>ID prêt: ${pret.idPret}, Date début: ${pret.dateDebut}, Adhérent ID: ${pret.adherant.idAdherant}</li>
        </c:forEach>
    </ul>
</body>
</html>
