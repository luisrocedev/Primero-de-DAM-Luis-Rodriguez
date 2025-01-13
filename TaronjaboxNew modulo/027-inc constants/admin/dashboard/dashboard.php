<?php
session_start();
require_once '../../helpers/constants.php';
require_once '../../config/database.php';

// Verificamos si el usuario está logueado
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login/index.php'); // Ruta hacia la página de login
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Dashboard</title>
    <!-- Ajustamos la ruta hacia el archivo CSS del menú -->
    <link rel="stylesheet" href="./styles/dashboard.css">
</head>
<body>
    <nav>
        <ul>
            <!-- Rutas hacia los diferentes módulos -->
            <li><a href="./modulos/blog/blog.php">Blog</a></li>
            <li><a href="./modulos/entrenadores/entrenadores.php">Entrenadores</a></li>
            <li><a href="./modulos/horarios/horarios.php">Horarios</a></li>
            <li><a href="./modulos/precios/precios.php">Precios</a></li>
            <li><a href="./modulos/sobre_nosotros/sobre_nosotros.php">Sobre nosotros</a></li>
            <li><a href="./modulos/contacto/contacto.php">Mensajes de Contacto</a></li>
            <!-- Ruta hacia el logout -->
            <li><a href="<?= BACKEND_URL ?>/routes/auth.php?action=logout">Cerrar Sesión</a></li>
        </ul>
    </nav>
    <h1>Bienvenido al Panel de Control</h1>
    <p>Selecciona una opción en el menú para gestionar los contenidos.</p>
</body>
</html>
