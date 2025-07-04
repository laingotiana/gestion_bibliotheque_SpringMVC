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
<body>
    <div class="container">
        <h2>Bienvenue, Admin !</h2>
        <p>Vous êtes connecté en tant qu'administrateur.</p>
         <ul>
        <li><a href="admin/livresEmpruntes">📚 Livres empruntés</a></li>
        <li><a href="admin/reservations">📌 Réservations en cours</a></li>
        <li><a href="admin/exemplairesDisponibles">📖 Exemplaires disponibles</a></li>
        <li><a href="admin/statistiques">📊 Statistiques</a></li>
    </ul>
    </div>
</body>
</html>
