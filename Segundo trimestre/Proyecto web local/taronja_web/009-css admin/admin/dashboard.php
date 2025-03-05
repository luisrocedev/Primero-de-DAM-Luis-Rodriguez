<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();
}
?>

<!-- Incluir el archivo de estilo del panel de administración -->
<link rel="stylesheet" href="css/style.css">

<header>
    <nav>
        <ul>
            <li><a href="dashboard.php">Inicio</a></li>
            <li><a href="blog/create.php">Crear Blog</a></li>
            <li><a href="blog/read.php">Ver Blogs</a></li>
            <li><a href="logout.php">Cerrar sesión</a></li> <!-- Enlace para cerrar sesión -->
        </ul>
    </nav>
</header>

<main>
    <h1>Bienvenido al Panel de Administración, <?php echo $_SESSION['username']; ?></h1>
    <p>En este panel puedes gestionar las entradas del blog y otros contenidos.</p>
    <a href="logout.php">Cerrar sesión</a> <!-- Enlace para cerrar sesión -->
</main>

<footer>
    <p>&copy; 2025 TaronjaBox. Todos los derechos reservados.</p>
</footer>