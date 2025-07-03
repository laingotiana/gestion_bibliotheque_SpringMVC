<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>Login Admin</title></head>
<body>
    <h2>Connexion Administrateur</h2>
    <form action="traiterLoginAdmin" method="post">
        Nom : <input type="text" name="nom" required><br><br>
        Mot de passe : <input type="password" name="password" required><br><br>
        <button type="submit">Se connecter</button>
    </form>

    <c:if test="${not empty erreur}">
        <p style="color:red;">${erreur}</p>
    </c:if>
</body>
</html>
