<!-- frontend/views/includes/header.php -->
<?php
// Define la ruta base relativa automáticamente
$base_url = dirname($_SERVER['SCRIPT_NAME']);
?>
<header>
    <h1>Bienvenido a TaronjaBox Valencia</h1>
    <nav>
        <a href="<?= $base_url ?>/index.php">Inicio</a>
        <a href="<?= $base_url ?>/views/noticias/noticias.php">Noticias</a>
        <a href="#">Clases</a> <!-- Placeholder -->
        <a href="#">Galería</a> <!-- Placeholder -->
        <a href="#">Contacto</a> <!-- Placeholder -->
    </nav>
</header>