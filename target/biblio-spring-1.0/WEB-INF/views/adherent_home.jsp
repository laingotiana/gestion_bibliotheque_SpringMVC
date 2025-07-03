<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil Admin</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f5f5f5; }
        .container { width: 400px; margin: 80px auto; background: #fff; padding: 30px; border-radius: 8px; box-shadow: 0 0 10px #ccc; text-align: center; }
        h2 { color: #007bff; }
    </style>
</head>
<html>
<head><title>Accueil Adhérent</title></head>
<body>
    <h1>Bienvenue sur votre espace personnel</h1>
    <ul>
        <li><a href="adherant/prets?idAdherant=${param.idAdherant}">📚 Mes prêts en cours</a></li>
        <li><a href="historique">📖 Mon historique</a></li>
        <li><a href="reservations">📅 Mes réservations</a></li>
        <li><a href="penalites">🚫 Mes pénalités</a></li>
    </ul>
</body>
</html>
