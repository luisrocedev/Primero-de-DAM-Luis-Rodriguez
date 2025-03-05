<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();
}
?>

<link rel="stylesheet" href="../css/header.css"> <!-- Incluir los estilos del panel de administración -->
<link rel="stylesheet" href="../css/style.css"> <!-- Incluir los estilos generales -->

<header>
    <nav>
        <ul>
            <li><a href="../dashboard.php">Inicio</a></li>
            <li><a href="create.php">Crear Servicio</a></li>
            <li><a href="read.php">Ver Servicios</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Gestión de Servicios de Fisioterapia</h2>
    <a href="create.php">Crear Nuevo Servicio</a><br><br>
    <a href="read.php">Ver Servicios Existentes</a>
</main>

<footer>
    <p>&copy; 2025 TaronjaBox. Todos los derechos reservados.</p>
</footer>