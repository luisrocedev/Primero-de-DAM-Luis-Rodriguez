<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();
}
?>

<link rel="stylesheet" href="../css/style.css"> <!-- Incluir los estilos del panel de administración -->

<header>
    <nav>
        <ul>
            <li><a href="../dashboard.php">Inicio</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Gestión del Blog</h2>
    <a href="create.php">Crear Nueva Entrada</a> <!-- Enlace para crear una nueva entrada -->
    <br><br>
    <a href="read.php">Ver Entradas Existentes</a> <!-- Enlace para leer las entradas existentes -->
</main>

<footer>
    <p>&copy; 2025 TaronjaBox. Todos los derechos reservados.</p>
</footer>