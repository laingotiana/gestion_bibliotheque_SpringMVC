<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head><title>Réservations</title></head>
<body>
    <h2>📌 Réservations en cours</h2>
    <ul>
        <c:forEach var="r" items="${reservations}">
            <li>ID réservation: ${r.idReservation}, Date: ${r.dateDeReservation}, Adhérent: ${r.adherant.idAdherant}</li>
        </c:forEach>
    </ul>
</body>
</html>
