<?php
session_start();  // Inicia la sesión para acceder a las variables de sesión

/**
 * Verifica si el usuario está autenticado.
 * Si no está autenticado, redirige al login. Si está autenticado, permite el acceso al dashboard.
 */
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();  // Detiene la ejecución para asegurar que no se cargue el resto del código
}
?>

<!-- Incluir el archivo de estilo del panel de administración -->
<link rel="stylesheet" href="admin/css/dashboard.css"> <!-- Asegúrate de que la ruta sea correcta -->
<link rel="stylesheet" href="admin/css/header.css"> <!-- Incluir el estilo del encabezado -->

<header>
    <nav>
        <ul>
            <!-- Enlaces de navegación para acceder a diferentes secciones -->
            <li><a href="dashboard.php">Inicio</a></li> <!-- Enlace al panel de administración -->
            <li><a href="admin/blog/index.php">Blog</a></li> <!-- Enlace a la página del blog -->
            <li><a href="admin/nuestro_equipo/index.php">Nuestro equipo</a></li> <!-- Enlace a la página de nuestro equipo -->
            <li><a href="admin/quienes_somos/index.php">Quienes somos</a></li> <!-- Enlace a la página "quienes somos" -->
            <li><a href="admin/fisioterapia/index.php">Fisioterapia</a></li> <!-- Enlace a la página de fisioterapia -->
            <li><a href="admin/precios/index.php">Precios</a></li> <!-- Enlace a la página de precios -->
            <li><a href="admin/contacto/index.php">Contacto</a></li> <!-- Enlace a la página de contacto -->
            <li><a href="logout.php">Cerrar sesión</a></li> <!-- Enlace para cerrar sesión -->
        </ul>
    </nav>
</header>

<main class="main-content">
    <h1>Bienvenido al Panel de Administración, <?php echo $_SESSION['username']; ?></h1> <!-- Muestra el nombre del usuario -->
    <p>En este panel puedes gestionar las entradas del blog y otros contenidos.</p> <!-- Descripción general del panel -->
    <a href="logout.php">Cerrar sesión</a> <!-- Enlace para cerrar sesión -->
</main>

<footer>
    <p>&copy; 2025 TaronjaBox. Todos los derechos reservados.</p> <!-- Pie de página con derechos reservados -->
</footer>