<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mes prêts en cours</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f5f5f5; }
        .container { width: 600px; margin: 40px auto; background: #fff; padding: 30px; border-radius: 8px; box-shadow: 0 0 10px #ccc; }
        h2 { color: #007bff; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: center; }
        th { background: #007bff; color: #fff; }
    </style>
</head>
<body>
    <div class="container">
        <h2>📚 Mes prêts en cours</h2>
        <c:choose>
            <c:when test="${not empty prets}">
                <table>
                    <tr>
                        <th>Livre</th>
                        <th>Date de début</th>
                        <th>Exemplaire</th>
                        <th>Type de prêt</th>
                    </tr>
                    <c:forEach var="pret" items="${prets}">
                        <tr>
                            <td>${pret.exemplaire.livre.titre}</td>
                            <td>${pret.dateDebut}</td>
                            <td>${pret.exemplaire.idExemplaire}</td>
                            <td>${pret.typePret.nomTypePret}</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                <p>Aucun prêt en cours.</p>
            </c:otherwise>
        </c:choose>
        <br>
        <a href="adherent_home">⬅ Retour à l'accueil</a>
    </div>
</body>
</html>