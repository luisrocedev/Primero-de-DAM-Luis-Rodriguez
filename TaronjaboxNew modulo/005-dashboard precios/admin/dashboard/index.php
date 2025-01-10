<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login/index.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="menu.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="blog.php">Blog</a></li>
            <li><a href="entrenadores.php">Entrenadores</a></li>
            <li><a href="horarios.php">Horarios</a></li>
            <li><a href="precios.php">Precios</a></li>
            <li><a href="../../backend/routes/auth.php?action=logout">Cerrar Sesión</a></li>
        </ul>
    </nav>
    <h1>Bienvenido al Panel de Control</h1>
    <p>Selecciona una opción en el menú para gestionar los contenidos.</p>
</body>
</html>
