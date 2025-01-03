<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="css/admin.css">
    <title>Admin Dashboard - TaronjaBox</title>
</head>
<body>
    <header>
        <h1>Bienvenido al Panel de Administración</h1>
        <nav>
            <ul>
                <li><a href="modulos/precios.php">Gestionar Precios</a></li>
                <li><a href="modulos/blog.php">Gestionar Blog</a></li>
                <li><a href="modulos/entrenadores.php">Gestionar Entrenadores</a></li>
                <li><a href="logout.php">Cerrar Sesión</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <p>Selecciona una opción del menú para comenzar.</p>
    </main>
</body>
</html>
