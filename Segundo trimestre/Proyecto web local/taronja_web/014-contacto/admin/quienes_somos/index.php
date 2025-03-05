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
            <li><a href="create.php">Crear Sección</a></li>
            <li><a href="read.php">Ver Sección</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Gestión de la sección "Quiénes Somos"</h2>
    <a href="create.php">Crear Nueva Sección</a><br><br>
    <a href="read.php">Ver Sección Existente</a>
</main>

<footer>
    <p>&copy; 2025 TaronjaBox. Todos los derechos reservados.</p>
</footer>